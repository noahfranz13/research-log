#!/bin/bash

# merge the research log into a single file
# ls -t organizes the files into last modified first
cat $(ls -t */*/*.md) > research-log.md
