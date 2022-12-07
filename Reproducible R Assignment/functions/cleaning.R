
#used for the first cleaning step- clean names and remove unnecessary columns
cleaning <- function(data_raw){
  data_raw %>%
    select(-starts_with("Delta")) %>%
    select(-Comments)%>%
    remove_empty(c("rows", "cols")) %>%
    clean_names()
}


#removes the rows that have no information about bill length or body mass; only keeps the columns that are relevant for the statistical test 
remove_na <- function(data_clean){
  data_clean %>%
    filter(!is.na(culmen_length_mm)) %>%
    filter(!is.na(body_mass_g))%>%
    select(species, culmen_length_mm, body_mass_g)
}


  





