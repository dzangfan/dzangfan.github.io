OUT = ../

build:
	scribble --html --dest $(OUT) --dest-name index.html ++style static/site.css main.scrbl
	if [ -d files ]; then cp -r files $(OUT)/; fi
