.PHONY: deploy patch

.PHONY: deploy patch

patch:
	diff -u /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/ZS_vanilla/languages/japanese/japanese.csv ./japanese.csv > japanese.patch || true
	@echo "✓ Generated japanese.patch"

deploy:
	cp japanese.csv meta.ini /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/Mods/JapaneseModified/
	@echo "✓ Deployed japanese.csv and meta.ini to local mod directory"
