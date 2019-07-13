.PHONY: all clean build deploy

all: clean build 

build: node_modules/
	npm run dist

node_modules/: package.json
	npm install
	touch node_modules/

clean:
	-rm -f package-lock.json
	-rm -r ./node_modules
	-npm cache verify
