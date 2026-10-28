package org.ros.namespace;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import org.ros.exception.RosRuntimeException;

/** Standalone guest assertions for the actual, pinned rosjava namespace source. */
public final class NamespaceChecks {
    private static int checks;
    private static int groups;
    public static void assertEquals(Object expected, Object actual) {
        if (!Objects.equals(expected, actual)) throw new AssertionError("expected="+expected+" actual="+actual);
        checks++;
    }
    public static void assertTrue(boolean value) {
        if (!value) throw new AssertionError("required true");
        checks++;
    }
    public static void assertFalse(boolean value) { assertTrue(!value); }
    public static void assertGraphNameEquals(String value, GraphName actual) { assertEquals(value, actual.toString()); }
    public static void fail() { throw new AssertionError("required exception was absent"); }
    public static void fail(String message) { throw new AssertionError(message); }
    public static void assertValidName(String value) { GraphName.of(value); checks++; }
    public static void expectedRuntimeCaught() { checks++; }
    private static void expect(Class<? extends RuntimeException> type, Runnable action) {
        try { action.run(); } catch (RuntimeException failure) {
            if (failure.getClass() != type) throw new AssertionError("wrong exception "+failure.getClass().getName());
            checks++;
            return;
        }
        fail();
    }
    private static void group(String name, Runnable action) {
        int before=checks;
        action.run();
        groups++;
        System.out.println("{\"group\":\""+name+"\",\"checks\":"+(checks-before)+"}");
    }
    private static void conversions() {
        assertTrue(GraphName.root().isRoot());
        assertFalse(GraphName.empty().isRoot());
        assertTrue(GraphName.empty().isEmpty());
        assertFalse(GraphName.root().isEmpty());
        assertTrue(GraphName.empty().isRelative());
        assertFalse(GraphName.of("~foo").isRelative());
        assertGraphNameEquals("foo/bar", GraphName.of("/foo/bar").toRelative());
        assertGraphNameEquals("foo", GraphName.of("~foo").toRelative());
        assertGraphNameEquals("", GraphName.root().toRelative());
        assertGraphNameEquals("/foo", GraphName.of("~foo").toGlobal());
        assertGraphNameEquals("/foo", GraphName.of("foo").toGlobal());
        assertGraphNameEquals("/", GraphName.empty().toGlobal());
        assertGraphNameEquals("/foo", GraphName.of("/foo").toGlobal());
        assertGraphNameEquals("foo", GraphName.of("foo").toRelative());
        assertGraphNameEquals("bar", GraphName.of("~foo/bar").getBasename());
        assertGraphNameEquals("", GraphName.root().getBasename());
        assertGraphNameEquals("foo/bar", GraphName.of("foo").join("bar"));
        assertTrue(GraphName.of("/a/").equals(GraphName.of("/a")));
        assertEquals(GraphName.of("/a/").hashCode(), GraphName.of("/a").hashCode());
        assertFalse(GraphName.of("/a").equals(null));
        assertFalse(GraphName.of("/a").equals("/a"));
        assertFalse(GraphName.of("/a").equals(GraphName.of("a")));
    }
    private static void remappingOverloads() {
        Map<GraphName,GraphName> map=new HashMap<>();
        map.put(GraphName.of("/base"),GraphName.of("/moved"));
        map.put(GraphName.of("sensor"),GraphName.of("camera"));
        map.put(GraphName.of("camera"),GraphName.of("/must_not_chain"));
        map.put(GraphName.of("direct"),GraphName.of("/else/target"));
        NameResolver r=NameResolver.newFromNamespaceAndRemappings("/base",map);
        assertGraphNameEquals("/base",r.getNamespace());
        assertGraphNameEquals("/moved/camera",r.resolve("sensor"));
        assertGraphNameEquals("/moved/camera",r.resolve(GraphName.of("sensor")));
        assertGraphNameEquals("/moved/camera",r.resolve(GraphName.of("/base"),GraphName.of("sensor")));
        assertGraphNameEquals("/moved/camera",r.resolve("/base",GraphName.of("sensor")));
        assertGraphNameEquals("/moved/camera",r.resolve(GraphName.of("/base"),"sensor"));
        assertGraphNameEquals("/x/camera",r.resolve("/x","sensor"));
        assertGraphNameEquals("/else/target",r.resolve("direct"));
        assertGraphNameEquals("/sensor",r.resolve("/sensor"));
        NameResolver child=r.newChild("arm");
        assertGraphNameEquals("/moved/arm",child.getNamespace());
        assertGraphNameEquals("/moved/arm/camera",child.resolve("sensor"));
        assertGraphNameEquals("/moved/tool",r.newChild(GraphName.of("tool")).getNamespace());
        assertGraphNameEquals("/other",r.newChild("/other").getNamespace());
        map.put(GraphName.of("~secret"),GraphName.of("/public/secret"));
        map.put(GraphName.of("~raw"),GraphName.of("~mapped"));
        NodeNameResolver node=new NodeNameResolver(GraphName.of("/node"),r);
        assertGraphNameEquals("/public/secret",node.resolve("~secret"));
        assertGraphNameEquals("/node/mapped",node.resolve("~raw"));
        assertGraphNameEquals("/node/command",node.resolve("~/command"));
        assertGraphNameEquals("/moved/camera",node.resolve("sensor"));
    }
    private static void liveRemappingView() {
        Map<GraphName,GraphName> map=new HashMap<>();
        NameResolver r=NameResolver.newRootFromRemappings(map);
        assertGraphNameEquals("/a",r.resolve("a"));
        expect(UnsupportedOperationException.class,()->r.getRemappings().put(GraphName.of("a"),GraphName.of("/forbidden")));
        map.put(GraphName.of("a"),GraphName.of("/changed"));
        assertGraphNameEquals("/changed",r.resolve("a"));
        NameResolver child=r.newChild("child");
        map.put(GraphName.of("a"),GraphName.of("/changed_again"));
        assertGraphNameEquals("/changed_again",r.resolve("a"));
        assertGraphNameEquals("/changed_again",child.resolve("a"));
        map.remove(GraphName.of("a"));
        assertGraphNameEquals("/a",r.resolve("a"));
        assertGraphNameEquals("/child/a",child.resolve("a"));
        // This is the upstream live view, not an owned cross-instance snapshot.
    }
    private static void exactExceptions() {
        expect(NullPointerException.class,()->GraphName.of(null));
        expect(RosRuntimeException.class,()->GraphName.of("5bad"));
        expect(RosRuntimeException.class,()->GraphName.of("bad-name"));
        NameResolver r=NameResolver.newRoot();
        expect(RosRuntimeException.class,()->r.resolve("~private"));
        expect(RosRuntimeException.class,()->r.resolve("/namespace","~private"));
        expect(IllegalArgumentException.class,()->r.resolve("relative","valid"));
        expect(RosRuntimeException.class,()->r.newChild("~private"));
        expect(NullPointerException.class,()->new NameResolver(GraphName.root(),null));
        Map<GraphName,GraphName> map=new HashMap<>();
        map.put(GraphName.of("/base"),GraphName.of("relative"));
        NameResolver remapped=NameResolver.newFromNamespaceAndRemappings("/base",map);
        expect(IllegalArgumentException.class,()->remapped.resolve("valid"));
    }
    private static void sequentialAnonymous() {
        Set<GraphName> values=new HashSet<>();
        for(int i=0;i<64;i++) {
            GraphName value=GraphName.newAnonymous();
            assertTrue(value.toString().startsWith("anonymous_"));
            assertTrue(values.add(value));
        }
        assertEquals(64,values.size());
        // This does not run or replace the upstream native executor concurrency test.
    }
    public static void main(String[] args) {
        GraphNameTest graph=new GraphNameTest();
        group("upstream.GraphName.testToString",graph::testToString);
        group("upstream.GraphName.testValidNames",graph::testValidNames);
        group("upstream.GraphName.testInvalidNames",graph::testInvalidNames);
        group("upstream.GraphName.testIsGlobal",graph::testIsGlobal);
        group("upstream.GraphName.testIsPrivate",graph::testIsPrivate);
        group("upstream.GraphName.testIsRelative",graph::testIsRelative);
        group("upstream.GraphName.testGetParent",graph::testGetParent);
        group("upstream.GraphName.testCanonicalizeName",graph::testCanonicalizeName);
        group("upstream.GraphName.testGetName",graph::testGetName);
        group("upstream.GraphName.testJoin",graph::testJoin);
        NameResolverTest resolver=new NameResolverTest();
        group("upstream.NameResolver.testResolveNameOneArg",resolver::testResolveNameOneArg);
        group("upstream.NameResolver.testResolveNameTwoArg",resolver::testResolveNameTwoArg);
        group("upstream.NameResolver.testResolveNameRemapping",resolver::testResolveNameRemapping);
        group("upstream.NodeNameResolver.testResolveNameOneArg",new NodeNameResolverTest()::testResolveNameOneArg);
        group("additional.conversionsAndIdentity",NamespaceChecks::conversions);
        group("additional.remappingOverloads",NamespaceChecks::remappingOverloads);
        group("additional.unmodifiableLiveView",NamespaceChecks::liveRemappingView);
        group("additional.exactExceptionTypes",NamespaceChecks::exactExceptions);
        group("additional.sequentialAnonymous",NamespaceChecks::sequentialAnonymous);
        if(groups!=19 || checks<200) throw new AssertionError("incomplete guest vectors");
        System.out.println("{\"sdk09_rosjava_namespace_checks\":true,\"groups\":"+groups+",\"checks\":"+checks+",\"upstream_concurrency_executed\":false}");
    }
}
