SHELL:=/bin/bash

install:
	python3 -m venv venv && \
	source venv/bin/activate && \
	pip3 install --upgrade setuptools && \
	pip3 install -r requirements.txt

create:
	source venv/bin/activate && mkdocs new .

serve:
	source venv/bin/activate && mkdocs serve 

bootstrap: install create serve