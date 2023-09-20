library(AER)
library(magrittr)
library(data.table)
library(knitr)
library(reticulate)

data(OECDGas)

(OECDGas <- OECDGas %>% as.data.table)

OECDGas[order(year), .(`Mean price`= mean(price)), year] %>%
  plot(type = "line")

(prices_log <- OECDGas$price) %>% head

py$prices_lin %>% density %>%
  plot(main="Densiteit van prijs")