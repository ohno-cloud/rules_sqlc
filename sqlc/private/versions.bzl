"""Mirror of release info

TODO: generate this file from GitHub API"""

# The integrity hashes can be computed with
# shasum -b -a 384 [downloaded file] | awk '{ print $1 }' | xxd -r -p | base64
TOOL_VERSIONS = {
    "1.31.1": {
        "darwin_arm64": "sha384-d0UQG+OjKsbFLLKVMuc9U5EfJzdHgY+TvnHXgcNrtfAYgGyIm5AwmSRyGIIUgWsf",
        "darwin_amd64": "sha384-G6yw0RC2A7KEexbeWnPPazndPlm4F7Nqq6GGc2VjYSGYypDfhRiUOTxOEJNrPlJU",
        "linux_amd64": "sha384-HUb41zWmX+fUPX3BmgET3aTBfYdbhNYvFgWp1ZfVSonMYwO5i3mE8MomBkDGDX2W",
        "linux_arm64": "sha384-k1mgAlOzYrwXUJvph0mRTi/gJIjEC3q2HTL/in10+rojQ3xLTaT3Z4tOwmMmTzRn",
        "windows_amd64": "sha384-C0GFJZBHJPB3yAjiMbYeVKB4UbfATC/3kRhK+jcxTAVpGwnKNKFnA8cCsD2M/rCd",
    },
}
