The Time is Right
=================

Der Text zu unserem zweiten Theaterstücks: The Time is Right

## Dokumente erstellen
Zum Erstellen der auf [unserer Webseite](http://www.c-base.org/projects/c-atre/?page_id=186#lizenz-und-download) Dokumente verwenden wir [Pandoc](http://johnmacfarlane.net/pandoc/) und das Tool `ebook-convert` des E-Book-Managers [Calibre](http://calibre-ebook.com/) (zum erstellen von MOBI- aus EPUB-Datein). Beide Programme sind für alle gängigen Betriebssysteme verfügbar.

Für Menschen die mit dem Build-Tool `make` vertraut sind stellen wir eine Makefile bereit. Damit könnt ihr den Text umwandeln in

* eine **HTML-Webseite**,

```bash
make html
```

* ein **EPUB-E-Book**,

```bash
make epub
```

* ein **MOBI-E-Book** oder

```bash
make mobi
```

* ein **PDF-Dokument** (hierzu wird [LibreOffice](https://de.libreoffice.org/) benötigt).

```bash
make pdf
```

Außerdem können alle Dokumententypen gleichzeitig erstellt werden:

```bash
make
```
