#!/bin/sh
DOCKER_BUILDKIT=1 docker build --squash --tag hsmtkk/rust-sccache .
