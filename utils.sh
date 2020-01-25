#!/bin/bash

#set -x

if [[ "$1" = "--add-require-dev" ]];
then
  lando composer require $(cat web/modules/contrib/$2/composer.json | jq -r '.["require-dev"] | to_entries | map(.key + ":" + .value) | join(" ")');
fi
