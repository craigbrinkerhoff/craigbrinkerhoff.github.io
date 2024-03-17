[![Netlify Status](https://api.netlify.com/api/v1/badges/74cd5394-2a8f-44d6-8a6a-a9a52aee928c/deploy-status)](https://app.netlify.com/sites/craigbrinkerhoff/deploys)

# Introduction
This repo is for my personal website [here](https://craigbrinkerhoff.netlify.app). It is built using [Netlify](https://www.netlify.com/), R's `blogdown` package, [Hugo](https://gohugo.io/), and a modified [archie](https://github.com/athul/archie) template. The */docs* folder includes a page to auto-redirect [craigbrinkerhoff.github.io](craigbrinkerhoff.github.io) to the correct URL too!

# Notes
- *.Rprofile* should auto-load `blogdown` and some other helpful settings.
- Homepage modified from archie via [this](https://gohugo.io/templates/homepage/).
- Single pages modified to not show the blog post date
- `~/assets/` is a copy of `~/themes/archie/assets/`, so that i can modify the colors in `~/main.css`. Blogdown will override the directories within a theme using identical directories in the main repo.