#!/usr/bin/env bash

cd volumes

mkdir postgres_data

mkdir -p lemmy_data/pictrs
chown -R 991:991 lemmy_data/pictrs

cd ..
