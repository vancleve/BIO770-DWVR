#!/usr/bin/env Rscript
##
## Batch file for converting .Rmd in directory to html.
## Zip files are expanded and any .Rmd in those directories are also converted
##

Rmd_files = c(Sys.glob("*.Rmd"), Sys.glob("*.rmd"))
zip_files = Sys.glob("*.zip")
datadir = "/Users/vancleve/science/teaching/current_class/"

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
    # print(rmd)

    # lines = readr::read_lines(rmd)
    # textfile = paste(lines, collapse = '\n')
    #
    # # capture all read csv calls
    # csvmatch = stringr::str_match_all(textfile, "(read[_.]csv *\\(.*?\")(.*?\\.csv)(\".*?\\))")[[1]]
    # if (nrow(csvmatch))
    # {
    #   for (i in 1:nrow(csvmatch))
    #   {
    #     # for each read csv, replace the file path
    #     # print(csvmatch[i,3])
    #     # print(paste(datadir, basename(csvmatch[i,3]), sep = ''))
    #     # print(grepl(csvmatch[i,3], textfile))
    #     textfile = sub(csvmatch[i,1],
    #                    paste(csvmatch[i,2], datadir, basename(csvmatch[i,3]), csvmatch[i,4], sep = ''),
    #                    textfile, fixed = TRUE)
    #   }
    # }
    #
    # xlsmatch = stringr::str_match_all(textfile, "(read_excel *\\(.*?\")(.*?\\.xlsx?)(\".*?\\))")[[1]]
    # if (nrow(xlsmatch))
    # {
    #   for (i in 1:nrow(xlsmatch))
    #   {
    #     # for each read csv, replace the file path
    #     # print(xlsmatch[i,3])
    #     # print(paste(datadir, basename(xlsmatch[i,3]), sep = ''))
    #     # print(grepl(xlsmatch[i,3], textfile))
    #     textfile = sub(xlsmatch[i,1],
    #                    paste(xlsmatch[i,2], datadir, basename(xlsmatch[i,3]), xlsmatch[i,4], sep = ''),
    #                    textfile, fixed = TRUE)
    #   }
    # }
    #
    # write(textfile, rmd)

    ## render html files to current folder using custom html document
    rmarkdown::render(rmd, output_format = html_with_errors, output_dir = '.', knit_root_dir = datadir)
}

