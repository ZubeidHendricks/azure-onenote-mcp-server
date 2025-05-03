
# OneNote MCP Server
[![smithery badge](https://smithery.ai/badge/@modelcontextprotocol/server-onenote)](https://smithery.ai/server/@modelcontextprotocol/server-onenote)
[![npm version](https://img.shields.io/npm/v/mcp-server-onenote.svg)](https://www.npmjs.com/package/mcp-server-onenote)
[![Verified on MseeP](https://mseep.ai/badge.svg)](https://mseep.ai/app/94d05742-a658-483b-b3e3-f8a3e5ec6e23)

A Model Context Protocol (MCP) server implementation for Microsoft OneNote, enabling AI language models to interact with OneNote through a standardized interface.

## Features

### Notebook Management
- List all notebooks
- Create new notebooks
- Get notebook details
- Delete notebooks

### Section Management
- List sections in a notebook
- Create new sections
- Get section details
- Delete sections

### Page Management
- List pages in a section
- Create new pages with HTML content
- Read page content
- Update page content
- Delete pages
- Search pages across notebooks

## Installation

### Installing from npm (Recommended)
```bash
npm install -g mcp-server-onenote
```
The package is now available on the npm registry as of April 27, 2025.

### Running the Package
After installation, you can run the package using:
```bash
mcp-server-onenote
```

Or with npx:
```bash
npx mcp-server-onenote
```

### Installing via Smithery

To install OneNote Server for Claude Desktop automatically via [Smithery](https://smithery.ai/server/@modelcontextprotocol/server-onenote):

```bash
npx -y @smithery/cli install @modelcontextprotocol/server-onenote --client claude
```

### Installing from GitHub
```bash
npm install -g github:ZubeidHendricks/azure-onenote-mcp-server
```

## Configuration

Set the following environment variables:
- `AZURE_TENANT_ID`: Your Azure tenant ID
- `AZURE_CLIENT_ID`: Your Azure application (client) ID
- `AZURE_CLIENT_SECRET`: Your Azure client secret

## Using with MCP Client

Add this to your MCP client configuration (e.g. Claude Desktop):

```json
{
  "mcpServers": {
    "onenote": {
      "command": "mcp-server-onenote",
      "env": {
        "AZURE_TENANT_ID": "<YOUR_TENANT_ID>",
        "AZURE_CLIENT_ID": "<YOUR_CLIENT_ID>",
        "AZURE_CLIENT_SECRET": "<YOUR_CLIENT_SECRET>"
      }
    }
  }
}
```

## Azure App Registration

1. Go to Azure Portal and navigate to App registrations
2. Create a new registration
3. Add Microsoft Graph API permissions:
   - Notes.ReadWrite.All
   - Notes.Read.All
4. Create a client secret
5. Copy the tenant ID, client ID, and client secret for configuration

## Development

```bash
# Install dependencies
npm install

# Run tests
npm test

# Build
npm run build

# Lint
npm run lint

# Run locally
npm start
```

[![MseeP.ai Security Assessment Badge](https://mseep.net/pr/zubeidhendricks-azure-onenote-mcp-server-badge.png)](https://mseep.ai/app/zubeidhendricks-azure-onenote-mcp-server)


## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md) for information about contributing to this repository.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

## Changelog

### 0.1.0 (2025-04-27)
- Initial release
- Core functionality for OneNote notebook, section, and page management
- Published to npm registry

### 0.1.1 (2025-04-27)
- Added executable bin to package.json
- Fixed issue where npx command couldn't determine executable to run
- Updated README with clear running instructions
