package main

//go:generate go install -v mvdan.cc/gofumpt@latest
//go:generate go install -v github.com/daixiang0/gci@latest
//go:generate gofumpt -l -w .
//go:generate gofmt -s -w .
//go:generate gci write .
