.PHONY: all clean

HTML=index.html
all: $(HTML)

$(HTML): cwdiff.1
	groff -mandoc -Thtml $< | sed '/^<!-- Creat/d' > $@

clean:
	rm -f $(HTML)
