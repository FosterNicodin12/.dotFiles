.SILENT:
clean:
	./bin/cleanup.sh
linux : clean
	./bin/linux.sh
