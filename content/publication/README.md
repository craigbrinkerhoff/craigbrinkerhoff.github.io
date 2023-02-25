## To prep

The functions in the `.Rmd` and `.R` files should auto prep and generate everything for the publication page aside from two things:
- Make sure `papers.bib` is completely up-to-date
- Manually create the `paper_x.Rmd` files for you *x* papers (including the index that is hardcoded into the function call...)

## To build
```
serve_site()
```

If you need to remake anything because of citation errors, make sure to delete the html file before building the site