# R code for installation of cryptomarketcapr package, get cryptocurrency information and simple plotting of top10 cryptocurrencies against price in USD
install.packages('cryptomarketcapr') #install cryptomarketcapr package
install.packages(c('ggplot2','tidyverse','magrittr')) #install other packages
library(cryptomarketcapr)
library(ggplot2)
library(tidyverse)
library(magrittr)

# Get a personalised 'key' by creating an account on https://coinmarketcap.com for live information of cryptocurrency
key <- 'c5418c64-c8ff-4cca-9051-54e3aaf5f989'
coinmarketcapr::setup(key) #using the key obtained

# Get cryptocurrency information and plot the top10 cryptocurrencies against price in USD
crytocurrency_information <- get_crypto_listings()
cryptocurrency_information %>%
  head(10)%>%
  select(c('name', 'USD_price') -> top10_cryptocurrencies # Get name and price of top 10 cryptocurrencies
         
top_10cryptocurrencies %>%
  ggplot() + geom_col(aes(x = cryptocurrency, y = Price(USD))