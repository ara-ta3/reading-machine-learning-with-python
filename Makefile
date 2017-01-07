run: env/bin/jupyter
	$< notebook

install: env/bin/pip
	$< install -r requirements.txt

env/bin/jupyter: env/bin/pip
	$(MAKE) install

env/bin/pip:
	python3 -m venv env
