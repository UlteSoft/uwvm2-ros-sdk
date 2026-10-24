/**
 * @file main.ts
 * @brief Publish string through genuine native ROS1 transport.
 * @details Build this directory with xmake. Run the sole .wasm application
 * through uwvm2-ros and its native ROS1 gateway using the supplied
 * trusted deployment. The native peer is infrastructure, and never interprets
 * this source language or implements the guest's Wasm import functions.
 */
import {NativeApi, Capability, Publisher, StringCodec} from 'ros1/as/index';
import {exit, write, pause} from 'ros/as/command';

/** @brief Run one finite application, preserving primary status before cleanup status. */
export function _start(): void
{
    const owner = new Capability(new NativeApi());
    let status = owner.open('sample');
    if(status)
    {
        exit(status);
        return;
    }
    const publisher = new Publisher<string>(owner, new StringCodec());
    // Two explicit samples demonstrate discovery; neither is a retry after failure.
    status = publisher.publish('hello native ROS');
    if(!status)
        status = pause(1000000000);
    if(!status)
        status = publisher.publish('hello native ROS');
    if(!status)
        status = pause(200000000);
    if(owner.isOpen())
    {
        const cleanup = owner.close();
        if(!status)
            status = cleanup;
    }
    if(!status)
        status = write('published hello native ROS\n');
    exit(status);
}
