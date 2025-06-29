


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
  library(lubridate)

  # load in bibtex
  papers <- bib2df('my_papers.bib')
  papers$sorting_date <- mdy(paste0(papers$MONTH, '/01/', '/', papers$YEAR))
  papers <- papers[order(papers$sorting_date),] #sort by pub month and year before indexing. This makes sure we don't change the order of papers when we add new ones to the bib file

  paper <- papers[i,]
    
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
  journal <- str_remove_all(journal, '[}{}?¶Ãâ€œˆ’]')
  
  months <- c('01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12')
  names(months) = c('jan', 'feb', 'mar', 'apr', 'may','jun', 'jul', 'aug', 'sep', 'oct', 'nov', 'dec')
  month <- months[months == paper$MONTH]
  #month <- ifelse(nchar(month)==1, paste0('0',month), month)
  date <- paste0(paper$YEAR, '-',month,'-01')

  #setup export object
  out <- list(
    'doi'=doi,
    'title' = title,
    'journal'=journal,
    'year'=date,
    'authors' = authors,
    'abstract' = abstract
  )
  
  return(out)
}