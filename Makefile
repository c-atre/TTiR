TITLE=ttir

all: html epub mobi pdf

html: $(TITLE).html

epub: $(TITLE).epub

mobi: $(TITLE).mobi

pdf: $(TITLE).pdf

%.html: %.md
	pandoc -s "$<" -o "$@"

%.epub: %.md
	pandoc --toc "$<" -o "$@"

%.mobi: %.epub
	ebook-convert "$<" "$@"

%.pdf: %.odt
	libreoffice --headless --convert-to pdf "$<"

clean:
	rm -f $(TITLE).epub $(TITLE).html $(TITLE).mobi

dist:
	tar -czf $(TITLE).tar.gz Makefile LICENSE $(TITLE).md $(TITLE).odt

.PHONY: all html epub mobi clean dist
