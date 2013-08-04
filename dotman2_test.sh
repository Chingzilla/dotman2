#!/bin/bash

DOTREPO=~/.config/dotman2/dotfiles

HOME=/tmp/dotman2_test

err() {
    echo $@ >&2
}

test_clean() {
    rm -rf /tmp/dotman2_test 
}

test_clone() {
    err "==== Cloning dotfiles ===="
    ./dotman2 clone -vvv $DOTREPO
}

test_deploy() {
    err "==== Deploy ====="
    ./dotman2 deploy -vvv --all
}

# Run tests
test_clean
test_clone
test_deploy
test_deploy
