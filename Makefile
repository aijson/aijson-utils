type:
	pyright aijson_utils

test:
	pytest aijson_utils

test-no-skip:
	pytest --disallow-skip

test-fast:
	pytest -m "not slow" aijson_utils

lint:
	ruff check --fix

format:
	ruff format

all: format lint type test-fast
