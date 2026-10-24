/**
 * @file compat.h
 * @brief Native ROS 1 compat implementation for the bounded gateway.
 * @details This maintained adapter uses the selected original ROS SDK and the
 * shared uwvm2 IPC contracts. Native type metadata and explicit trusted policy
 * remain authoritative; this file grants no guest rights. It is compiled as
 * infrastructure, independently from all guest source languages.
 */
/*************************************************************
 * UWVM2 ROS1 SDK feature compatibility. APL-2.0.             *
 *************************************************************/
#pragma once

// xmlrpcpp installed flat headers through Indigo and package-scoped headers
// in later releases. Select an actually available public header, rather than
// interpreting ROS_DISTRO or assuming that an overlay has the base distro's
// layout. Both branches use the same bounded parser in resources.h.
#if __has_include(<xmlrpcpp/XmlRpcClient.h>) && __has_include(<xmlrpcpp/XmlRpcValue.h>)
# include <xmlrpcpp/XmlRpcClient.h>
# include <xmlrpcpp/XmlRpcValue.h>
#elif __has_include(<XmlRpcClient.h>) && __has_include(<XmlRpcValue.h>)
# include <XmlRpcClient.h>
# include <XmlRpcValue.h>
#else
# error "The selected ROS1 SDK must provide the public xmlrpcpp client and value headers"
#endif
