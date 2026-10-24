/**
 * @file main.ts
 * @brief Call trigger through genuine native ROS1 transport.
 * @details Build this directory with xmake. Run the sole .wasm application
 * through uwvm2-ros and its native ROS1 gateway using the supplied
 * trusted deployment. The native peer is infrastructure, and never interprets
 * this source language or implements the guest's Wasm import functions.
 */
import {NativeApi, Capability, Client} from 'ros1/as/index';
import {exit, write} from 'ros/as/command';

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
    const client = new Client(owner, 256);
    const reply = client.trigger();  // Exactly one native service invocation.
    status = reply.status;
    if(!status)
    {
        const response = client.response(reply);
        if(!response.valid)
            status = 22;
        else if(!response.success)
            status = 5;
        else if(response.message != 'native ready')
            status = 22;
    }
    if(owner.isOpen())
    {
        const cleanup = owner.close();
        if(!status)
            status = cleanup;
    }
    if(!status)
        status = write('trigger true native ready\n');
    exit(status);
}
