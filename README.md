Notes creades amb R Markdown i **bookdown** (https://github.com/rstudio/bookdown).

Per crear un pdf:
`Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"`.

Per crear una web:
`Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"`.
