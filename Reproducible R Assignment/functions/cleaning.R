#

cleaning <- function(data_raw){
  data_raw %>%
    select(-starts_with("Delta")) %>%
    select(-Comments)%>%
    remove_empty(c("rows", "cols")) %>%
    clean_names()
}



remove_na <- function(data_clean){
  data_clean %>%
    filter(!is.na(culmen_length_mm)) %>%
    filter(!is.na(body_mass_g))%>%
    select(species, culmen_length_mm, body_mass_g)
}


  





