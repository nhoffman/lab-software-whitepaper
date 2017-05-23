TARGET = lab_software_whitepaper

all: html pdf

html: $(TARGET).Rmd
	Rscript -e "rmarkdown::render('$(TARGET).Rmd', output_file='$(TARGET).html', output_format='html_document')"

pdf: $(TARGET).Rmd
	Rscript -e "rmarkdown::render('$(TARGET).Rmd', output_file='$(TARGET).pdf', output_format='pdf_document')"

tidy:
	rm -f $(TARGET).bbl $(TARGET).tex

clean:
	rm -f $(TARGET).html $(TARGET).bbl $(TARGET).tex $(TARGET).pdf

