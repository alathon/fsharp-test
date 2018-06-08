#!/bin/sh
docker run \
  -e BUILDKITE_AGENT_TOKEN="63853b548aa83396b2ec77721a1a42b036c04f2ebb5ac45de7" \
  -v "$HOME/buildkite-secrets:/buildkite-secrets:ro" \
  -it scaut:agent
