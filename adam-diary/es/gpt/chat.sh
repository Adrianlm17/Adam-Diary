#!/bin/bash

read -p "Introduce tu pregunta: " question

# Encode the text as a JSON object
data=$(printf '{"text": "%s"}' "$question")

# Send a request to the OpenAI API
response=$(curl -X POST \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer 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" \
  --data "$data" \
  "https://api.openai.com/v1/engines/chat-davinci/jobs")

# Extract the answer from the response
answer=$(printf '%s' "$response" | jq -r '.choices[0].text')

echo "Answer: $answer"
