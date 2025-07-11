#!/bin/bash
# Usage: ./encrypt.sh "plaintext"

PLAINTEXT="$1"
KEY="334b64556c764c556872506363414c69586a337545372b6b53374265767a7354"
IV="50357367354b376866574c466e36574e"

echo -n "$PLAINTEXT" | openssl enc -aes-256-cbc -K "$KEY" -iv "$IV" -base64 -p | tail -n 1 