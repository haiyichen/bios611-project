OUTPUT = BIOS611_project_report.html

build: $(OUTPUT)

$(OUTPUT): report.Rmd
	Rscript -e "rmarkdown::render('report.Rmd')"

clean:
	rm -f $(OUTPUT) intermediate_data/* figures/*