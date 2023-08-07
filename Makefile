.PHONY: archive
archive:
	git archive --format zip --prefix ret-es-pop-rip/ -9 -o ret-es-pop-rip--files.zip HEAD
