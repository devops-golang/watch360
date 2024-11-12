#!/bin/bash

BINFILE=watch360
if [ -n "$MSYSTEM" ]; then
    BINFILE=watch360.exe
fi
VERSION=$(git describe --tags)
echo "Building $VERSION..."
go build -o $BINFILE -ldflags "-X github.com/devops-golang/watch360/internal/meta.Version=$VERSION"
