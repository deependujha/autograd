.PHONY: clean setup

setup:
	poetry install
	@echo "poetry install done"
	pre-commit install
	@echo "pre-commit install done"
	bash .git/hooks/pre-commit
	@echo "---- All done ----"

clean:
	rm -rf __pycache__
	rm -rf .pytest_cache
	rm -rf .mypy_cache
