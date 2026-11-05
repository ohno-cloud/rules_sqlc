<!-- Generated with Stardoc: http://skydoc.bazel.build -->

Public API re-exports

<a id="sqlc_generate_go"></a>

## sqlc_generate_go

<pre>
load("@rules_sqlc//sqlc:defs.bzl", "sqlc_generate_go")

sqlc_generate_go(<a href="#sqlc_generate_go-name">name</a>, <a href="#sqlc_generate_go-engine">engine</a>, <a href="#sqlc_generate_go-package">package</a>, <a href="#sqlc_generate_go-queries">queries</a>, <a href="#sqlc_generate_go-schema">schema</a>)
</pre>



**ATTRIBUTES**


| Name  | Description | Type | Mandatory | Default |
| :------------- | :------------- | :------------- | :------------- | :------------- |
| <a id="sqlc_generate_go-name"></a>name |  A unique name for this target.   | <a href="https://bazel.build/concepts/labels#target-names">Name</a> | required |  |
| <a id="sqlc_generate_go-engine"></a>engine |  SQL engine   | String | required |  |
| <a id="sqlc_generate_go-package"></a>package |  Go package name   | String | optional |  `""`  |
| <a id="sqlc_generate_go-queries"></a>queries |  SQL query files or filegroups containing SQL query directories.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional |  `[]`  |
| <a id="sqlc_generate_go-schema"></a>schema |  SQL schema files or filegroups containing SQL schema directories.   | <a href="https://bazel.build/concepts/labels">List of labels</a> | optional |  `[]`  |


