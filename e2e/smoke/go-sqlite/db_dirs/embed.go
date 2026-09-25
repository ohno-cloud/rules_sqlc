package db_dirs

import "embed"

// SQLFiles is the sql-migrate input set packaged with this library.
//
//go:embed migrations/*.sql
var SQLFiles embed.FS
