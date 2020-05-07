package:
	python setup.py bdist_wheel --universal

upload:
	curl -F package=@`find dist -name "pgeocode-ls-*.whl"` $(PRIVATE_PYPI_UPLOAD_URL)

dist: package upload
