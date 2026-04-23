.PHONY: deploy

deploy:
	cp japanese.csv meta.ini /mnt/d/SteamLibrary/steamapps/common/ZERO\ Sievert/Mods/JapaneseModified/
	@echo "✓ Deployed japanese.csv and meta.ini to local mod directory"
