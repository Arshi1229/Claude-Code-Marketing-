# Ahrefs MCP Integration Setup Guide

This guide walks you through setting up the official Ahrefs MCP server to connect Claude with your Ahrefs account for SEO competitor analysis.

## Prerequisites

- **Node.js** installed ([download here](https://nodejs.org/en/download/))
- **Ahrefs subscription** with API access:
  - **Remote MCP Server**: Available on Lite, Standard, Advanced, and Enterprise plans
  - **Local MCP Server**: Requires Enterprise plan (API v3 access)

## Option 1: Remote MCP Server (Recommended - Easiest)

The remote server doesn't require local setup and works with most Ahrefs plans.

### For Claude Desktop

1. Open Claude Desktop settings
2. Navigate to the MCP configuration
3. Add the remote server URL: `https://api.ahrefs.com/mcp/mcp`
4. Authenticate with your Ahrefs account

### For Claude Code (CLI)

Add to your Claude Code MCP settings (`~/.claude/settings.json`):

```json
{
  "mcpServers": {
    "ahrefs": {
      "url": "https://api.ahrefs.com/mcp/mcp"
    }
  }
}
```

---

## Option 2: Local MCP Server (Enterprise Plans)

For users with API v3 keys (Enterprise plan).

### Step 1: Install Node.js

Verify installation:
```bash
npm -v
```

### Step 2: Install Ahrefs MCP Server

**macOS/Linux:**
```bash
npm install --prefix=~/.global-node-modules @ahrefs/mcp -g
```

**Windows:**
```bash
npm install --prefix=C:\Users\YOUR_USERNAME\.global-node-modules\node_modules @ahrefs/mcp -g
```

### Step 3: Get Your API Key

1. Log in to [Ahrefs](https://ahrefs.com)
2. Go to **Account Settings** → **API**
3. Generate an **API v3 key**
4. Copy the key (you'll need it for configuration)

### Step 4: Configure Claude Desktop

**Configuration file locations:**
- **macOS:** `~/Library/Application Support/Claude/claude_desktop_config.json`
- **Windows:** `%APPDATA%\Claude\claude_desktop_config.json`
- **Linux:** `~/.config/Claude/claude_desktop_config.json`

**Add this configuration:**

```json
{
  "mcpServers": {
    "ahrefs": {
      "command": "npx",
      "args": [
        "--prefix=~/.global-node-modules",
        "@ahrefs/mcp"
      ],
      "env": {
        "API_KEY": "YOUR_AHREFS_API_V3_KEY_HERE"
      }
    }
  }
}
```

### Step 5: Restart Claude Desktop

After saving the configuration, completely restart Claude Desktop. The Ahrefs tools should appear in the tools menu.

---

## Option 3: Claude Code CLI Configuration

For using Ahrefs MCP with Claude Code (this CLI tool).

### Create/Edit MCP Settings

**Location:** `~/.claude.json` or project-level `.claude.json`

```json
{
  "mcpServers": {
    "ahrefs": {
      "command": "npx",
      "args": [
        "--prefix=~/.global-node-modules",
        "@ahrefs/mcp"
      ],
      "env": {
        "API_KEY": "YOUR_AHREFS_API_V3_KEY_HERE"
      }
    }
  }
}
```

---

## Available Ahrefs MCP Tools

Once connected, you'll have access to these SEO capabilities:

| Tool | Description |
|------|-------------|
| **Site Explorer** | Retrieve comprehensive backlink statistics for any website/URL |
| **Domain Rating (DR)** | Get domain authority scores (0-100 scale) |
| **Keyword Explorer** | Analyze keywords with search volume, traffic potential, and difficulty |
| **Backlink Analysis** | Examine referring domains and link profiles |
| **Content Gap Analysis** | Find keywords competitors rank for that you don't |
| **Top Pages** | Discover best-performing pages on any domain |

---

## Example Prompts After Setup

Once configured, you can ask Claude things like:

```
"What's the domain rating for competitor.com?"

"Show me the top 10 keywords that example.com ranks for"

"Analyze the backlink profile of mycompetitor.com"

"Find content gaps between my site and these 3 competitors"

"What are the top referring domains to competitor.com?"
```

---

## Troubleshooting

### Node.js not recognized
- Ensure Node.js is in your system PATH
- Try restarting your terminal/command prompt

### Permission errors (macOS/Linux)
```bash
sudo npm install --prefix=~/.global-node-modules @ahrefs/mcp -g
```

### API Key not working
- Ensure you're using an **API v3 key** (not MCP key)
- Verify your Ahrefs plan includes API access
- Check the key hasn't expired

### MCP not appearing in Claude
- Verify the config file JSON is valid
- Check file location is correct for your OS
- Completely restart Claude (not just close window)

---

## Upgrade the MCP Server

To get the latest features:

```bash
npm install --prefix=~/.global-node-modules @ahrefs/mcp@latest -g
```

---

## Resources

- [Official Ahrefs MCP GitHub](https://github.com/ahrefs/ahrefs-mcp-server)
- [Ahrefs API Documentation](https://docs.ahrefs.com/docs/api/reference/api-keys-creation-and-management)
- [Ahrefs MCP Use Cases](https://ahrefs.com/blog/mcp-use-cases/)
- [What is MCP Server?](https://ahrefs.com/blog/what-is-mcp-server/)
