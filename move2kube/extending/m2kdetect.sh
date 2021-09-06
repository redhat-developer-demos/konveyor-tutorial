#!/usr/bin/env bash

printf '{"generates":"ContainerBuild","generatedBases":"ContainerBuild","port":8080, "app_name":"app"}' "$(basename "$1")"