#!/bin/bash

set -e  # Exit on error

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║         🚀 DEPLOYING PHENO DOCS WITH CHATBOT 🚀            ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""

# Check if .env file exists
if [ ! -f .env ]; then
    echo "❌ ERROR: .env file not found!"
    echo "Please create a .env file with your OPENROUTER_API_KEY"
    echo ""
    echo "Example:"
    echo "OPENROUTER_API_KEY=sk-or-v1-your-key-here"
    exit 1
fi

# Load API key from .env
source .env

if [ -z "$OPENROUTER_API_KEY" ]; then
    echo "❌ ERROR: OPENROUTER_API_KEY not found in .env file!"
    exit 1
fi

echo "✅ Step 1: API key loaded from .env"
echo ""

# Create knowledge base context
echo "📚 Step 2: Creating knowledge base context..."
./create-knowledge-base.sh
echo ""

# Inject API key into widget
echo "🔑 Step 3: Injecting API key into chatbot widget..."
WIDGET_FILE="pheno_knowledge_base_expanded/chatbot-widget-simple.html"
WIDGET_TEMP="pheno_knowledge_base_expanded/.chatbot-widget-temp.html"

# Replace placeholder with actual API key
sed "s|__OPENROUTER_API_KEY__|$OPENROUTER_API_KEY|g" "$WIDGET_FILE" > "$WIDGET_TEMP"
mv "$WIDGET_TEMP" "$WIDGET_FILE"

echo "✅ API key injected successfully"
echo ""

# Build the site
echo "🏗️  Step 4: Building Quarto site..."
cd pheno_knowledge_base_expanded
quarto render
cd ..
echo ""

# Restore placeholder in widget (so we don't commit the key)
echo "🔒 Step 5: Restoring placeholder in widget..."
sed "s|$OPENROUTER_API_KEY|__OPENROUTER_API_KEY__|g" "$WIDGET_FILE" > "$WIDGET_TEMP"
mv "$WIDGET_TEMP" "$WIDGET_FILE"

echo "✅ Placeholder restored (API key not in source)"
echo ""

echo "╔════════════════════════════════════════════════════════════╗"
echo "║                                                            ║"
echo "║                  ✅ DEPLOYMENT COMPLETE! ✅                 ║"
echo "║                                                            ║"
echo "╚════════════════════════════════════════════════════════════╝"
echo ""
echo "📦 Output: docs-expanded/"
echo "🌐 Your site is ready with the chatbot (API key included)"
echo "🔒 Source code still has placeholder (safe to commit)"
echo ""
echo "Next steps:"
echo "  1. Test locally: cd docs-expanded && python3 -m http.server 8000"
echo "  2. Deploy docs-expanded/ to GitHub Pages"
echo ""








