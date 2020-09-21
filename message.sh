#!bin/bash

CIRCLE_PROJECT_REPONAME="$1"
CIRCLE_BRANCH="$2"
CIRCLE_USERNAME="$3"
CIRCLE_BUILD_URL="$4"

message="- Service <code>$CIRCLE_PROJECT_REPONAME</code> deployed for branch <code>$CIRCLE_BRANCH</code> - Author: <code>$CIRCLE_USERNAME</code>\n   Build URL: <a href='$CIRCLE_BUILD_URL'>$CIRCLE_BUILD_URL</a>"
curl --location --request POST 'https://api.telegram.org/bot1350885083:AAFwYMN0nQQvQgcVBAp7KdnW4FTfwHbBRNs/sendMessage' \
  --header 'Content-Type: application/json' \
  --data-raw '{
    "text": "'"$message"'",
    "chat_id": "-325952111",
    "parse_mode": "html"
  }'
