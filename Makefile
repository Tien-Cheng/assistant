export_requirements:
	@echo "Exporting poetry requirements..."
	poetry export -f requirements.txt --output requirements.txt --without-hashes
	@echo "Converting requirements to flatpak build modules..."
	req2flatpak --requirements-file requirements.txt --target-platforms 310-x86_64 > python-modules.json
