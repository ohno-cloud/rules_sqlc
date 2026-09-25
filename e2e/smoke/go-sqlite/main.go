package main

import (
	"fmt"

	"github.com/ohno-cloud/rules_sqlc/e2e/smoke/go-sqlite/db_dirs"
)

func main() {
	fmt.Printf("%v", db_dirs.Author{})
}
