HTML=index.html
all: $(HTML)

index.html: cwdiff.1
	groff -mandoc -Thtml $< | sed '/^<!-- Creat/d' > $@

.PHONY: all clean

clean:
	rm -f $(HTML)
