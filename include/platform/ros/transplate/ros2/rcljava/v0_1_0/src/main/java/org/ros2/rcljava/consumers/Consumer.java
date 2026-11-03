// @file Consumer.java
// @brief Provide the selected typed SDK binding and ownership boundary for ros2.
// @details Use the matching backend, catalog and shared language implementation. Keep caller-owned inputs alive
// for the documented operation and propagate status or language errors without treating a refused call as success.

/* Copyright 2016-2018 Esteve Fernandez <esteve@apache.org>
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.ros2.rcljava.consumers;

/**
 * This is a copy of {@link java.util.funcion.Consumer} for platforms that don't
 * support Java 8's API (e.g. Android &lt; 7.0)
 *
 * @param <T> - the type of the input to the operation
 */
public interface Consumer<T>
{
    /**
     * Performs this operation on the given argument.
     *
     * @param input - the input argument
     */
    void accept(T input);
}
