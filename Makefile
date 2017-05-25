TARGET = lab_software_whitepaper

all: check html pdf

html: $(TARGET).Rmd
	Rscript -e "rmarkdown::render('$(TARGET).Rmd', output_file='$(TARGET).html', output_format='html_document')"

pdf: $(TARGET).Rmd
	Rscript -e "rmarkdown::render('$(TARGET).Rmd', output_file='$(TARGET).pdf', output_format='pdf_document')"

tidy:
	rm -f $(TARGET).bbl $(TARGET).tex

check:
	test -f svm-r-markdown-templates/svm-latex-ms.tex

clean:
	rm -f $(TARGET).html $(TARGET).bbl $(TARGET).tex $(TARGET).pdf

