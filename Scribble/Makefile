OUT = ../

build:
	scribble --html --dest $(OUT) --dest-name index.html ++style static/site.css main.scrbl
	# Scribble hard-codes initial-scale=0.8, which shrinks the page on phones.
	sed -i 's/initial-scale=0.8/initial-scale=1/' $(OUT)/index.html
