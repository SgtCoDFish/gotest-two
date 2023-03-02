MAKEFLAGS += --warn-undefined-variables --no-builtin-rules
SHELL := /usr/bin/env bash
.SHELLFLAGS := -uo pipefail -c
.DEFAULT_GOAL := help
.DELETE_ON_ERROR:
.SUFFIXES:

BINDIR := _bin

.PHONY: build
build: $(BINDIR)/main

$(BINDIR)/main: main.go go.mod go.sum | $(BINDIR)
	CGO_ENABLED=0 go build -o $@ main.go

.PHONY: tidy
tidy:
	go mod tidy

$(BINDIR):
	@mkdir -p $@
