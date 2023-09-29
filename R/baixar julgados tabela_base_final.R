

cd_sentença <- tabela_base_final |> dplyr::select(julgado) |> dplyr::pull() |> JurisMiner:: dividir_sequencia(n=2000)

## - não virou nada criar o objeto supra, baixei direito usando a tabela_base_final


 purrr::walk(tabela_base_final, ~{
  
  tjsp::tjsp_autenticar()
  
  tjsp::tjsp_baixar_sentenca_cjpg(.x, here::here("data-raw/sentenças"))
  
})

 library(tidyverse)

tabela_frequencias <-  tabela_base_final_single |> count(magistrado, comarca) |> arrange(desc(n))


tabela_base_final_julg <- tabela_base_final |> filter(processo == "10026992920228260081")

tabela_base_final_single <- tabela_base_final |> distinct()

tabela_base_final_single_magis <- tabela_base_final_single |> group_by(magistrado) |> slice_sample(n=1)

tabela_base_final_single_com <- tabela_base_final_single |> group_by(comarca) |> slice_sample(n=1)




tabela_base_final_single_magis |> ungroup() |> sample_n(1) |> pull(julgado)

tabela_base_final_single_magis |> ungroup() |> sample_n(1) |> pull(julgado)

tabela_base_final_single_magis |> select(processo, classe, magistrado, comarca, vara, julgado) |>
  mutate(categoria=0) |> write_csv("data/amostra_magistrado.csv")

#### categorias: 0 = processo no escopo e valor fixo, 1 = processo no escopo e valor variável e 2 = processo fora do escopo




