TITLE=ttir

all: html epub mobi

html: $(TITLE).html

epub: $(TITLE).epub

mobi: $(TITLE).mobi

%.html: %.md
	pandoc -s "$<" -o "$@"

%.epub: %.md
	pandoc --toc "$<" -o "$@"

%.mobi: %.epub
	ebook-convert "$<" "$@"

clean:
	rm -f $(TITLE).epub $(TITLE).html $(TITLE).mobi

dist:
	tar -czf $(TITLE).tar.gz Makefile LICENSE $(TITLE).md

.PHONY: all html epub mobi clean dist
