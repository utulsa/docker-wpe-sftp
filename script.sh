#!/usr/bin/env bash
sshpass -p "$WPE_PASSWORD" sftp -R 128 -oPort="$WPE_PORT" -oBatchMode=no -oStrictHostKeyChecking=no -r "$WPE_USERNAME@$WPE_HOSTNAME:$1"
