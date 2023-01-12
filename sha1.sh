#!/bin/bash
echo -n "$(sha1sum $1 -z | cut -d" " -f1)"
