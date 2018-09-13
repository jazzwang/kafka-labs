MARKDOWN = pandoc --from markdown --to html -s -S --toc -c pandoc.css -A footer.html 
all: $(patsubst %.md,%.html,$(wildcard *.md)) Makefile

clean:
	rm -f $(patsubst %.md,%.html,$(wildcard *.md))
	rm -f *.bak *~
	rm -f slide.html

%.html: %.md
	$(MARKDOWN) $< --output $@
