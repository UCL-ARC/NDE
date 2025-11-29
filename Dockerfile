# syntax=docker/dockerfile:1

ARG JULIA_VERSION=1.12

FROM julia:${JULIA_VERSION}

ARG JULIA_VERSION

# Install git, for use within Codespaces, and pdf2svg
RUN /bin/sh -c 'export DEBIAN_FRONTEND=noninteractive \
    && apt-get update \
    && apt-get install -y git pdf2svg \
    && apt-get --purge autoremove -y \
    && apt-get autoclean \
    && rm -rf /var/lib/apt/lists/*'

# Docker is awful and doesn't allow conditionally setting environment variables in a decent
# way, so we have to keep an external script and source it every time we need it.
COPY julia_cpu_target.sh /julia_cpu_target.sh

RUN julia --color=yes -e 'using InteractiveUtils; versioninfo()'

# Instantiate Julia project
RUN mkdir -p /root/.julia/environments/v${JULIA_VERSION}
COPY Project.toml  /root/.julia/environments/v${JULIA_VERSION}/Project.toml
RUN . /julia_cpu_target.sh && julia --color=yes -e 'using Pkg; Pkg.instantiate()'

# Copy notebook
COPY NDE.jl /root/NDE.jl

# Precompile notebook environment
RUN . /julia_cpu_target.sh && julia --color=yes -e '\
using Pkg;\
using Pluto;\
Pluto.activate_notebook_environment("/root/NDE.jl");\
Pkg.instantiate()'
