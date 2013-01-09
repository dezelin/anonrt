# Anonrt

[![Build Status](https://secure.travis-ci.org/dezelin/anonrt.png)](http://travis-ci.org/dezelin/anonrt)

This will hopefully one day become a library for P2P anonymous routing over TAP/TUN devices and IP.
 The idea is to make an anonymizing proxy backed by a TAP/TUN device and the anonymizing library
 with support for different routing protocols.

## libanonrt

A library that will be used as a playground for different anonymous routing protocols:

* ALARM: Anonymous Location-Aided Routing in Suspicious MANETs
* ANAP: Anonymous Authentication Protocol
* ANODR: ANonymous On Demand Routing with Untraceable Routes
* AODSR: Anonymous On-Demand Source Routing Protocol
* AODV: Trust Based Adaptive On Demand Routing Protocol
* APR: An Anonymous Path Routing Protocol
* ARA: The Ant-Colony Based Routing Algorithm
* ARMA: An Efficient Secure Ad Hoc Routing Protocol
* ARM: Anonymous Routing Protocol
* CAR: Chain-based Anonymous Routing
* Cashmere: Resilient Anonymous Routing
* ERAP: An Energy-efficient and Real-time Anonymous Routing Protocol
* HANOR: A Hierarchical Anonymous Routing Scheme
* Herbivore: A Scalable and Efficient Protocol for Anonymous Communication
* ODAR: On-Demand Anonymous Routing
* OLAR: On-demand Lightweight Anonymous Routing
* P5: A Protocol for Scalable Anonymous Communication
* PRISM: Privacy-Preserving Location-Based On-Demand Routing
* SMART: A Secure Multipath Anonymous Routing
* TARo: Trusted Anonymous Routing

...and maybe others :)

See the project [documentation][docref] for some background on different anonymous routing protocols.

## anonrt

 SOCKS proxy sitting in the background on a TAP/TUN device and providing anonymous communication over IP.

[docref]: https://github.com/dezelin/anonrt/tree/master/doc
