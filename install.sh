#!/bin/sh
set -ex

./install-mitamae.sh

bin/mitamae local -y node.yml $@ recipe.rb
