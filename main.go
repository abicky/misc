package main

import "fmt"

// These variables are overwritten by -ldflags in release builds.
var (
	version  string
	revision string
)

func main() {
	fmt.Printf(fmt.Sprintf(`Version: %s
Revison: %s\n`, version, revision))
}
