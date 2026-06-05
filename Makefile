.PHONY: deploy patch publish

# Configuration
STEAMCMD := /mnt/d/Modding/steamcmd/steamcmd.exe
STEAMCMD_USER :=
VDF_FILE := zerosievertmod.vdf
DEPLOYED_PATH := /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/Mods/JapaneseModified

patch:
	diff -u /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/ZS_vanilla/languages/japanese/japanese.csv ./japanese.csv > japanese.patch || true
	@echo "✓ Generated japanese.patch"

deploy: patch
	cp japanese.csv meta.ini $(DEPLOYED_PATH)/
	@echo "✓ Deployed japanese.csv and meta.ini to local mod directory"

publish: deploy
	@if [ -z "$(STEAMCMD_USER)" ]; then \
		echo "✗ Error: STEAMCMD_USER not specified. Usage: make publish STEAMCMD_USER=username"; \
		exit 1; \
	fi
	@if [ ! -f "$(STEAMCMD)" ]; then \
		echo "✗ Error: steamcmd not found at $(STEAMCMD)"; \
		exit 1; \
	fi
	@if [ ! -f "$(VDF_FILE)" ]; then \
		echo "✗ Error: $(VDF_FILE) not found"; \
		exit 1; \
	fi
	@echo "⚠️  Publishing to Steam Workshop..."
	@echo "Username: $(STEAMCMD_USER)"
	@echo "VDF: $(VDF_FILE)"
	@read -p "Press Enter to continue (Ctrl+C to cancel): " dummy
	"$(STEAMCMD)" +login $(STEAMCMD_USER) +workshop_build_item "$(VDF_FILE)" +quit
	@echo "✓ Published to Steam Workshop"
