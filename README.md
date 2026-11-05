# Bazel rules for [`sqlc`](https://github.com/sqlc-dev/sqlc)

`sqlc_generate_go` accepts individual SQL files and directory filegroups through both `schema` and
`queries`. Directory inputs should enumerate all SQL files with `glob`, allowing `sqlc` to read the
directory while keeping every input declared to Bazel. This supports
[`sql-migrate`](https://github.com/rubenv/sql-migrate) migration layouts:

```starlark
filegroup(
    name = "migrations",
    srcs = glob(["migrations/*.sql"]),
)

sqlc_generate_go(
    name = "db",
    engine = "postgresql",
    package = "db",
    schema = [":migrations"],
    queries = [":queries"],
)
```

Individual files can be mixed with filegroups in either attribute:

```starlark
sqlc_generate_go(
    name = "db",
    engine = "postgresql",
    package = "db",
    schema = [":base.sql", ":migrations"],
    queries = [":authors.sql", ":report_queries"],
)
```

## Installation

From the release you wish to use:
<https://github.com/ohno-cloud/rules_sqlc/releases>
copy the WORKSPACE snippet into your `WORKSPACE` file.

To use a commit rather than a release, you can point at any SHA of the repo.

For example to use commit `abc123`:

1. Replace `url = "https://github.com/ohno-cloud/rules_sqlc/releases/download/v0.1.0/rules_sqlc-v0.1.0.tar.gz"` with a GitHub-provided source archive like `url = "https://github.com/ohno-cloud/rules_sqlc/archive/abc123.tar.gz"`
1. Replace `strip_prefix = "rules_sqlc-0.1.0"` with `strip_prefix = "rules_sqlc-abc123"`
1. Update the `sha256`. The easiest way to do this is to comment out the line, then Bazel will
   print a message with the correct value. Note that GitHub source archives don't have a strong
   guarantee on the sha256 stability, see
   <https://github.blog/2023-02-21-update-on-the-future-stability-of-source-code-archives-and-hashes/>
