.PHONY: clean package compile publish publish-vscode publish-ovsx install-vscode install-cursor tag version help

# Variables
EXTENSION_NAME := olang
VERSION := $(shell node -p "require('./package.json').version")
VSIX_FILE := $(EXTENSION_NAME)-$(VERSION).vsix
DEV_PUBLISHER := birrgrrim-dev
ORIGINAL_PUBLISHER := birrgrrim



# Publish to both marketplaces
publish: publish-vscode publish-ovsx

# Add this before package rule
compile:
	npm run compile

# Update package rule
package: compile
	vsce package

# Publish to VS Code Marketplace
publish-vscode:
	vsce publish

# Publish to Open VSX Registry
publish-ovsx:
	ovsx publish

# Clean build artifacts
clean:
	rm -f *.vsix
	rm -f package.json.bak

# Install extension in VS Code
install-vscode: package
	code --install-extension $(VSIX_FILE)

# Install in Cursor
install-cursor: package
	mkdir -p ~/.cursor/extensions
	cp $(VSIX_FILE) ~/.cursor/extensions/

# Create git tag and push (after you've updated changelog and tested)
tag:
	@if [ "$(v)" = "" ]; then \
		echo "Please specify version: make tag v=0.1.2"; \
		exit 1; \
	fi
	git tag -a v$(v) -m "Version $(v)"
	git push origin v$(v)

# Show current version
version:
	@echo "Current version: $(VERSION)"

# Help
help:
	@echo "Available commands:"
	@echo "  make package        - Create VSIX package"
	@echo "  make package-dev    - Create VSIX package with dev publisher"
	@echo "  make compile"       - Compile ts scripts
	@echo "  make publish        - Publish to both marketplaces"
	@echo "  make publish-vscode - Publish to VS Code Marketplace"
	@echo "  make publish-ovsx   - Publish to Open VSX Registry"
	@echo "  make clean          - Remove VSIX files"
	@echo "  make install-vscode - Install extension in VS Code"
	@echo "  make install-cursor - Install extension in Cursor"
	@echo "  make tag v=X.Y.Z    - Create and push git tag (after updating changelog)"
	@echo "  make version        - Show current version"
	@echo "  make help           - Show this help"
