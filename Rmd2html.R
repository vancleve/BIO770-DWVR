#!/usr/bin/env Rscript
##
## Batch file for converting .Rmd in directory to html.
## Zip files are expanded and any .Rmd in those directories are also converted
##

Rmd_files = c(Sys.glob("*.Rmd"), Sys.glob("*.rmd"))
zip_files = Sys.glob("*.zip")

## unzip all zip files
for (zip in zip_files) {
    name = tools::file_path_sans_ext(zip)

    ## only unzip if file has not already been unzipped into directory
    if (!file.exists(name)) {
        unzip(zip, exdir = name)
    }
}

## find all rmarkdown files
Rmd_files = list.files(pattern = "\\.rmd", ignore.case = TRUE, recursive = TRUE)

## create "custom" document object to make sure that render doesn't
## quit if it finds errors or missing files
html_with_errors = rmarkdown::html_document(self_contained = FALSE)
html_with_errors$knitr$opts_chunk$error = TRUE
html_with_errors$knitr$opts_chunk$R.options = list(max.print=200)

for (rmd in Rmd_files) {
    ## render html files to current folder using custom html document
    rmarkdown::render(rmd, output_format = html_with_errors, output_dir = '.')
}

