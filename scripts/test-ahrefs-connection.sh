#!/bin/bash
# Test Ahrefs API Connection
# Run this script locally to verify your API key works

set -e

# Load environment variables
if [ -f .env ]; then
    export $(grep -v '^#' .env | xargs)
else
    echo "ERROR: .env file not found. Create one from .env.example"
    exit 1
fi

if [ -z "$AHREFS_API_KEY" ]; then
    echo "ERROR: AHREFS_API_KEY not set in .env"
    exit 1
fi

echo "Testing Ahrefs API connection..."
echo "Target domain: $TARGET_DOMAIN"
echo ""

# Test 1: Domain Rating
echo "=== Test 1: Domain Rating ==="
RESPONSE=$(curl -s -w "\nHTTP_STATUS:%{http_code}" \
    "https://apiv2.ahrefs.com/?token=${AHREFS_API_KEY}&from=domain_rating&target=${TARGET_DOMAIN}&mode=domain&output=json")

HTTP_STATUS=$(echo "$RESPONSE" | grep "HTTP_STATUS" | cut -d: -f2)
BODY=$(echo "$RESPONSE" | grep -v "HTTP_STATUS")

if [ "$HTTP_STATUS" = "200" ]; then
    echo "SUCCESS - Connected to Ahrefs API"
    echo "Domain Rating data:"
    echo "$BODY" | python3 -m json.tool 2>/dev/null || echo "$BODY"
else
    echo "FAILED - HTTP Status: $HTTP_STATUS"
    echo "Response: $BODY"
    echo ""
    echo "Common issues:"
    echo "  - 401: Invalid API key"
    echo "  - 403: API key doesn't have permission for this endpoint"
    echo "  - 429: Rate limit exceeded"
fi

echo ""

# Test 2: Backlinks Stats
echo "=== Test 2: Backlinks Stats ==="
RESPONSE2=$(curl -s -w "\nHTTP_STATUS:%{http_code}" \
    "https://apiv2.ahrefs.com/?token=${AHREFS_API_KEY}&from=backlinks_stats&target=${TARGET_DOMAIN}&mode=domain&output=json")

HTTP_STATUS2=$(echo "$RESPONSE2" | grep "HTTP_STATUS" | cut -d: -f2)
BODY2=$(echo "$RESPONSE2" | grep -v "HTTP_STATUS")

if [ "$HTTP_STATUS2" = "200" ]; then
    echo "SUCCESS - Backlinks data retrieved"
    echo "$BODY2" | python3 -m json.tool 2>/dev/null || echo "$BODY2"
else
    echo "FAILED - HTTP Status: $HTTP_STATUS2"
    echo "Response: $BODY2"
fi

echo ""
echo "=== Connection Test Complete ==="
