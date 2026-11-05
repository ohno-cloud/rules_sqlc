package db_dirs

import (
	"io/fs"
	"testing"
)

func TestEmbeddedSQLFiles(t *testing.T) {
	for _, name := range []string{"migrations/001_create_authors.sql"} {
		if _, err := fs.ReadFile(SQLFiles, name); err != nil {
			t.Fatalf("read embedded %s: %v", name, err)
		}
	}
}
