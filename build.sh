#!/bin/sh

set -ev

echo '<!-- Autogenerated by build.sh, do not edit! -->' > src/mathjaxheader.html
echo '<span class="math inline" style="display: none">' >> src/mathjaxheader.html
printf '%s' '\(' >> src/mathjaxheader.html
cat mathsymbols.sty | sed  's/providecommand/renewcommand/g' >> src/mathjaxheader.html
printf '%s' '\)' >> src/mathjaxheader.html
echo '</span>' >> src/mathjaxheader.html
cat src/mathjaxheader_src.html >> src/mathjaxheader.html
# Rscript -e "bookdown::render_book('src/index.Rmd', 'bookdown::html_book')"
Rscript -e "bookdown::render_book('index.Rmd','bookdown::gitbook')"
Rscript -e "bookdown::render_book('index.Rmd','bookdown::pdf_book')"
# Rscript -e "bookdown::render_book('src/index.Rmd', 'bookdown::epub_book')"
cp xypic.js src/style.css _book/