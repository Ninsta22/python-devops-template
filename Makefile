install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#Whenever testing needs to occur, either have a test file in the format below, or change test_*.py to the respective filename
	#python -m pytest -vv --cov=main --cov=mylib test_*.py

format:	
	black *.py 

lint:
	#Whenever a lint check needs to occur, either have a mylib folder, or change mylib to the respective folder name
	#pylint --disable=R,C --ignore-patterns=test_.*?py *.py mylib/*.py

container-lint:
	docker run --rm -i hadolint/hadolint < Dockerfile

refactor: format lint

deploy:
	#deploy goes here
		
all: install lint test format deploy
