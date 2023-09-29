

library(tjsp)


tjsp::baixar_cjpg(
  livre = "diferenças* classe* policial civil",
  #aspas = TRUE,
  processo = "",
  foro = "",
  vara = "",
  classe = "5804,8714",
  assunto = "",
  magistrado = "",
  inicio = "01/02/2023",
  fim = "01/08/2023",
  diretorio = "valor_fixo/data-raw/cjpg",
  #paginas
)

library(tidyverse)


 cjpg <- tjsp_ler_cjpg(diretorio="valor_fixo/data-raw/cjpg")
 
 write.csv(cjpg,"valor_fixo/data/cjpg.csv")

tjsp_autenticar()

tjsp_baixar_sentenca_cjpg(cjpg$cd_doc, diretorio = "valor_fixo/data-raw/sentenças")

library(tidyverse) 

tabela <- filter(tabela,comarca!="SÃO PAULO")|>arrange(comarca)

table(tabela$comarca)

tabela|>arrange(comarca)

tabela|>select(comarca)|>distinct()|>count()

tabela|>count(comarca, sort=TRUE)

tabela_frequencias <- tabela_alfab_datacresc|>count(comarca, sort=TRUE)



install.packages("dplyr")

library(dplyr)

arrange(tabela, comarca)

tabela_alfabetica <- arrange(tabela, comarca)

arrange(tabela_alfabetica, disponibilizacao)

tabela_alfab_datacresc <- arrange(tabela_alfabetica, disponibilizacao)
 
arrange(tabela, comarca, disponibilizacao)

tabela_alfab_datacresc <- arrange(tabela, comarca, disponibilizacao, magistrado)

arrange(tabela, comarca, disponibilizacao, magistrado)

tabela_teste <- arrange(tabela, magistrado, comarca, disponibilizacao)

 tabela%>%select(processo,pagina, hora_coleta, duplicado, classe, assunto, comarca, foro, vara, disponibilizacao, magistrado)

 tabela_reordenada <- tabela%>%select(processo,pagina, hora_coleta, duplicado, classe, assunto, comarca, foro, vara, disponibilizacao, magistrado)

 arrange(tabela_reordenada, comarca, disponibilizacao, magistrado) 

 tabela_base <-   arrange(tabela_reordenada, comarca, disponibilizacao, magistrado) 
 
 rm(tabela_alfabetica,tabela_reordenada, tabela_base, tabela_teste)
 
 
 slice(tabela_alfab_datacresc, -(3899:5411))

 tabela_alfab_datacresc_int <-  slice(tabela_alfab_datacresc, -(3899:5411))

 slice(tabela_alfab_datacresc_int, -c(132:134, 205:303, 511:530,700:771, 839:846, 902:921, 982:991, 1020:1032, 1118:1157, 1181:1183, 1297:1400, 1531:1560, 1591:1600, 1605, 1757:1765, 1993:2001, 2087:2099, 2146:2149, 2294:2553, 2836:2850, 3212:3220, 3431, 3512:3517, 3520:3525, 3539:3599, 3883:3935, 4347:4442, 4688:4694)) 
 
 tabela_alfab_datacresc_int_def <- slice(tabela_alfab_datacresc_int, -c(132:134, 205:303, 511:530,700:771, 839:846, 902:921, 982:991, 1020:1032, 1118:1157, 1181:1183, 1297:1400, 1531:1560, 1591:1600, 1605, 1757:1765, 1993:2001, 2087:2099, 2146:2149, 2294:2553, 2836:2850, 3212:3220, 3431, 3512:3517, 3520:3525, 3539:3599, 3883:3935, 4347:4442, 4688:4694))
 
rm(tabela_frequencias_int)

tabela_alfab_datacresc_int_def|>count(comarca, sort=TRUE)
 
 tabela_frequencias_int <- tabela_alfab_datacresc_int_def|>count(comarca, sort=TRUE)
 
 arrange(tabela_frequencias_int,comarca)
 
 slice(tabela_freq_alf,c(13,21,38,47, 60, 65,70,71,75,78,79, 83, 87,105, 108, 110, 126,143,146, 151, 167, 203,214,217, 227, 229,231, 238, 239,240, 241, 254, 270))

 tabela_frequencias_int_alf <- arrange(tabela_frequencias_int,comarca)
 
 rm(tabela_frequencias_int_alf)
 
 arrange(tabela_frequencias, comarca)

 tabela_freq_alf <- arrange(tabela_frequencias, comarca)
 
install.packages("dplyr")

library(dplyr)

tabela_freq_exclu <- slice(tabela_freq_alf,c(13,21,38,47, 60, 65,70,71,75,78,79, 83, 87,105, 108, 110, 126,143,146, 151, 167, 203,214,217, 227, 229,231, 238, 239,240, 241, 254, 270))
   
                
sum(tabela_freq_exclu$n, na.rm=F)                      

rm(tabela_frequencias_int)
rm(tabela_freq_exclu)
