[![Netlify Status](https://api.netlify.com/api/v1/badges/74cd5394-2a8f-44d6-8a6a-a9a52aee928c/deploy-status)](https://app.netlify.com/sites/craigbrinkerhoff/deploys)

# Introduction
This repo is for my personal website [here](https://craigbrinkerhoff.netlify.app). It is built using R's `blogdown` package, Hugo and Netlify to enable automatic building and deployment via Github. I also used [congo]](https://github.com/jpanther/congo) as a template.

The entire site should be reproducible as a `renv` lockfile is included to reproduce the R packages (and versions) required to build the site.

There are specific `blogdown` settings set up in the `.Rprofile`. These facilitate faster iterating on the website (auto-loading of server in-browser, auto-kniting on save, etc.) Check those out too.

The `/docs` folder includes a page to auto-redirect craigbrinkerhoff.github.io to the correct URL too!
