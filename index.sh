#!/bin/bash

#find . -maxdepth 1 -type f -exec sha1sum '{}' -z \; -printf "🐧%p🐧%TY%Tm%Td🐧%TH%TM%TS \n"
find . -maxdepth 1 -type f -exec ./sha1.sh '{}' \; -printf "\t%p\t%TY%Tm%Td%TH%TM%TS\t%s \n"
