/**
 * @file main.ts
 * @brief Subscribe string through genuine native ROS1 transport.
 * @details Build this directory with xmake. Run the sole .wasm application
 * through uwvm2-ros and its native ROS1 gateway using the supplied
 * trusted deployment. The native peer is infrastructure, and never interprets
 * this source language or implements the guest's Wasm import functions.
 */
import {NativeApi, Capability, Subscription, StringCodec, Status} from 'ros1/as/index';
import {exit, write, pause} from 'ros/as/command';

/** @brief Copied native payload retained only by the caller-driven guest handler. */
let received = '';

/** @brief Receive one complete decoded message; no native function pointer is exposed. */
function onMessage(value: string): void
{
    received = value;
}

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
    const subscription = new Subscription<string>(owner, new StringCodec(), onMessage, 256);
    status = subscription.status;
    for(let attempt = 0; !status && !received.length && attempt < 500; ++attempt)
    {
        status = subscription.spinOnce();
        if(status == Status.Again)
            status = pause();
    }
    if(!status && !received.length)
        status = Status.Timeout;
    if(!status && received != 'hello native ROS')
        status = Status.Invalid;
    if(owner.isOpen())
    {
        const cleanup = owner.close();
        if(!status)
            status = cleanup;
    }
    if(!status)
        status = write('received hello native ROS\n');
    exit(status);
}
