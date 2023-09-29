
install.packages("tidyverse")

library(tidyverse)

tabela_col_filt <- cjpg |> select(processo, classe:cd_doc)

tabela_alfabetica <- tabela_col_filt |> arrange(comarca,magistrado, disponibilizacao)

tabela_base_1 <- tabela_alfabetica |> filter(comarca!="SÃO PAULO") |> filter(comarca!= "Arujá") |> filter(comarca != "Barueri") |> filter (comarca != "Caieiras") |> filter (comarca != "Carapicuíba") |> filter(comarca != "Cotia") 

tabela_base_2 <- tabela_base_1 |>  filter(comarca != "Diadema") |> filter(comarca != "Embu das Artes") |> filter(comarca != "Embu-Guaçu") |> filter(comarca!= "Ferraz de Vasconcelos") |> filter(comarca != "Francisco Morato")

tabela_base_3 <- tabela_base_2 |> filter(comarca!="Franco da Rocha") |> filter(comarca!= "Guararema") |> filter(comarca!="Guarulhos") |> filter(comarca!="Itapecerica da Serra") |> filter(comarca !="Itapevi")

tabela_base_4 <- tabela_base_3 |> filter(comarca!="Itaquaquecetuba") |> filter(comarca!= "Jandira") |> filter(comarca!="Mairiporã") |> filter(comarca!="Mauá") |> filter(comarca !="Mogi das Cruzes") |> filter(comarca!="Osasco")                                                                                                       

tabela_base_5 <- tabela_base_4 |> filter(comarca!="Poá") |> filter(comarca!= "Ribeirão Pires") |> filter(comarca!="Rio Grande da Serra") |> filter(comarca!="Santa Isabel") |> filter(comarca !="Santana de Parnaíba") 

tabela_base_final <-  tabela_base_5 |> filter(comarca!="Santo André") |> filter(comarca!= "São Bernardo do Campo") |> filter(comarca!="São Caetano do Sul") |> filter(comarca!="Suzano") |> filter(comarca !="Taboão da Serra") |> filter(comarca != "Vargem Grande Paulista") 


write.csv(tabela_base_final, "data/tabela_base_final.csv")
