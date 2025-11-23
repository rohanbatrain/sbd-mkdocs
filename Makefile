.PHONY: install serve build deploy clean

install:
	pip install -r requirements.txt

serve:
	mkdocs serve

build:
	mkdocs build

deploy:
	mkdocs gh-deploy

clean:
	rm -rf site
