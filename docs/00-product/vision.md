Zenith Vision

Zenith is a minimal self-hosted tunneling tool for exposing local development services to the internet.

It is inspired by ngrok, but it is not intended to become a full SaaS platform in the early stages. The project is built primarily for personal use, learning Go, and understanding networking fundamentals through a real system.

Purpose

Zenith exists to solve three problems:

* expose local services through a public endpoint;
* learn Go through a practical networking project;
* close knowledge gaps around HTTP, TCP, reverse proxies, tunnels, TLS, and production service design.

Target users

Primary user:

* the project author.

Possible future users:

* developer friends who need a simple self-hosted tunnel.

Non-target users for now:

* companies;
* non-technical users;
* public SaaS customers.

Product direction

The first versions should be simple, reliable, and easy to reason about.

The core flow:

public internet -> zenith server -> zenith client -> localhost service

Example future usage:

zenith http 3000

Expected result:

https://<generated-subdomain>.<domain> -> localhost:3000

Constraints

Zenith should not include these features in the early stages:

* billing;
* teams;
* web dashboard;
* marketplace;
* multi-region deployment;
* Kubernetes dependency;
* plugin system;
* AI features.

Technical direction

Initial technical choices:

* language: Go;
* primary interface: CLI;
* first protocol target: HTTP tunneling;
* database: not required for MVP;
* documentation: maintained inside docs/;
* task tracking: personal task system first, GitHub Issues later if useful.

Success criteria for MVP

The MVP is successful when:

* the server can accept public HTTP requests;
* the client can connect to the server;
* the client can forward traffic to a local port;
* the response from the local service is returned to the public caller;
* the setup is documented well enough to run from a clean machine.