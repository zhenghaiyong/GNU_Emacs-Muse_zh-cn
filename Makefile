SOURCE = muse-zh_cn.texi
FILENAME = muse-zh_cn

all:
	makeinfo $(SOURCE)
	makeinfo --html $(SOURCE)
	makeinfo --html --no-split $(SOURCE)
	tar cjvf $(FILENAME).tar.bz2 $(FILENAME)/

clean:
	rm -rf $(FILENAME) $(FILENAME).tar.bz2 $(FILENAME).html $(FILENAME).info
