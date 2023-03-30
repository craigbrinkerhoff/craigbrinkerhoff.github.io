


#' extracts reference from complete bibtex file, then correctly formats it for markdown template(s)
#' 
#' @name bibtexScraper
#'
#' @import bib2df
#' @import stringr
#' 
#' @param i: index for paper to extract
#' 
#' @return list of relevant information for markdown file
bibtexScraper <- function(i){
  library(bib2df)
  library(stringr)
  
  # load in bibtex
  papers <- bib2df('papers.bib')
  urls <- as.character(papers$URL)
  
  paper <- papers[i,]#dplyr::filter(papers, URL==i)
    
  #handle DOIS leading with https
  doi <- paper$DOI
  doi <- ifelse(substr(doi, 1, 8)=='https://', substr(doi,9,length(doi)), doi)
    
  #handle weird brackets in paper titles, abstracts, etc.
  title <- as.character(paper$TITLE)
  title <- str_remove_all(title, '[}{}?¶Ãâ€œˆ’]')
    
  abstract <- paper$ABSTRACT
  abstract <- str_remove_all(abstract, '[}{}?¶Ãâ€œˆ’]')
    
  authors <- paper$AUTHOR[[1]]
  authors <- str_remove_all(authors, '[}{}?¶Ãâ€œˆ’]')
  
  journal <- paper$JOURNAL
    
  #setup export object
  out <- list(
    'doi'=doi,
    'url'=paper$URL,
    'title' = title,
    'journal'=journal,
    'year'=paper$URLDATE, #dummy days, I just want the year
    'authors' = authors,
    'abstract' = abstract
  )
  
  return(out)
}