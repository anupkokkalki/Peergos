#!/usr/bin/env bash
set -euo pipefail

# Method 1: hidden password
echo "--- Method 1: hidden password ---"
read -r -p "enter user name: " user
read -r -s -p "enter password (hidden): " password
echo    # newline after hidden read
echo "hello, $user – thanks for your time"

# Method 2: visible password
echo "--- Method 2: visible password (insecure) ---"
read -r -p "enter user name: " user2
read -r -p "enter password (visible): " password2
echo
echo "hello, $user2 – your password was entered visibly (compromised on console)"

# Help section at the end
cat <<'HELP'

--- help: read built-in options (shown at last) ---

read [options] name...
Common useful options:
  -p PROMPT    display PROMPT before reading input
  -s           silent mode (do not echo input) — useful for passwords
  -r           do not allow backslashes to escape characters (recommended)
  -n N         read only N characters
  -t SECS      timeout after SECS seconds
  -a ARRAY     split input into ARRAY elements

Examples:
  read -r -p "Username: " user
  read -r -s -p "Password: " pass; echo   # use echo to add trailing newline

HELP
