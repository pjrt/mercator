mercator.jar: compile
	jar -cf mercator.jar -C bin mercator

compile:
	@scalac -version | grep 'version 2\.12\.' > /dev/null || echo "scalac is not version 2.12.x"
	mkdir -p bin
	scalac -d bin src/core/*.scala

.PHONY: compile
