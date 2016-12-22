#!/usr/bin/env bash
set -x

# Clear Application Saved States JetBrains
rm -rfv ~/Library/Saved\ Application\ State/com.jetbrains.*

# PhpStorm
rm -fv /usr/local/bin/pstorm
rm -rfv ~/Library/Preferences/WebIde{??,???}
rm -rfv ~/Library/Caches/WebIde{??,???}
rm -rfv ~/Library/Application\ Support/WebIde{??,???}
rm -rfv ~/Library/Logs/WebIde{??,???}
