#!/usr/bin/env bash

set -o errexit -o nounset -o pipefail

# Set by GH actions, see
# https://docs.github.com/en/actions/learn-github-actions/environment-variables#default-environment-variables
TAG=${GITHUB_REF_NAME}
# The prefix is chosen to match what GitHub generates for source archives
# This guarantees that users can easily switch from a released artifact to a source archive
# with minimal differences in their code (e.g. strip_prefix remains the same)
PREFIX="rules_sqlc-${TAG:1}"
ARCHIVE="rules_sqlc-$TAG.tar.gz"

# NB: configuration for 'git archive' is in /.gitattributes
git archive --format=tar --prefix=${PREFIX}/ ${TAG} | gzip > $ARCHIVE
INTEGRITY=$(openssl dgst -sha256 -binary $ARCHIVE | base64)

cat << EOF
## Using Bzlmod with Bazel 9

Add to your \`MODULE.bazel\` file:

\`\`\`starlark
bazel_dep(name = "rules_sqlc", version = "${TAG:1}")
archive_override(
    module_name = "rules_sqlc",
    urls = ["https://github.com/ohno-cloud/rules_sqlc/releases/download/${TAG}/${ARCHIVE}"],
    strip_prefix = "${PREFIX}",
    integrity = "sha256-${INTEGRITY}",
)
\`\`\`
EOF
