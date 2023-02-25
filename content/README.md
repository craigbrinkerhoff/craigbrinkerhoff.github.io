# some notes on getting hugo academic CLI to work

- [Hugo academic CLI](https://github.com/wowchemy/hugo-academic-cli) is a python CLI to convert a bibtex file to individual `.md` files for your website.
- requires python 3 and hugo to be installed and their paths to be hardcoded into your environmental paths... I got it to work by hard-coding these three (not sure which python path is actually doing it though)
    - `C:\Users\craig\AppData\Roaming\Hugo\0.101.0`
    - `C:\Users\craig\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.7_qbz5n2kfra8p0\LocalCache\local-packages\Python37\site-packages`
    - `C:\Users\craig\AppData\Local\Packages\PythonSoftwareFoundation.Python.3.7_qbz5n2kfra8p0\LocalCache\local-packages\Python37\Scripts`

- then, put `papers.bib` in your main website repo
- from command line, navigate to main repo and run `academic import --bibtex papers.bib --overwrite` to create files for a publications webpage
