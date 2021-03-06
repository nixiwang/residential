# PV installation

library(readr)
library(dplyr)
library(tidyr)
library(ggplot2)
library(lubridate)
library(forcats)
library(pander)
library(stringr)


data <- read_csv(file = "./data/raw/Electrical_Permits.csv")
str(data)
head(data)
View(data)

## total 
totelec <- data %>% 
  filter(StatusCurrent == "Completed",
         PermitClassMapped == "Residential",
         !is.na(CompletedDate)) %>% 
  mutate(PermitClass = parse_factor(PermitClass, levels = NULL)) %>% 
  mutate(Class = recode(PermitClass, `Single Family/Duplex` = "Single family",
                        Multifamiliy = "Multifamily")) %>% 
  mutate(ContractorCompanyName = recode(ContractorCompanyName, 
                                        `PUGETSOUNDSOLAR` = "PUGET SOUND SOLAR",
                                        `Puget Sound Solar` = "PUGET SOUND SOLAR",
                                        `Puget Sound Solar LLC` = "PUGET SOUND SOLAR",
                                        `ARTISAN ELECTRICAL SERVS LLC` = "ARTISAN ELECTRIC INC",
                                        `NORTHWEST ELECTRIC & SOLAR LLC` = 
                                          "NORTHWEST ELECTRIC & SOLAR",
                                        `Northwest Electric & Solar` = 
                                          "NORTHWEST ELECTRIC & SOLAR",
                                        `WEST SEATTLE ELECTRIC AND SOLA` = 
                                          "WEST SEATTLE ELECTRIC & SOLAR",
                                        `West Seattle Electric and Solar` = 
                                          "WEST SEATTLE ELECTRIC & SOLAR",
                                        `Offset Solar` = "OFFSET SOLAR LLC",
                                        `SME Inc of Seattle` = "SME INC OF SEATTLE",
                                        `sunergy systems` = "SUNERGY SYSTEMS",
                                        `SUNERGYSYSTEMS` = "SUNERGY SYSTEMS",
                                        `SUNERGY SYSTEMS INC.` = "SUNERGY SYSTEMS")) %>% 
  select(Class,Description,CompletedDate,
         ContractorCompanyName,Latitude,Longitude) 
View(totelec)

elec <- data %>% 
  filter(StatusCurrent == "Completed",
         str_detect(Description, "Solar|solar|SOLAR|RENEWABLE|PHOTOVOLTAIC|
                    PV system|PV SYSTEM|photovoltaic"),
         !str_detect(Description, "ROUGH IN|SOLARIUM"),
         PermitClassMapped == "Residential",
         !is.na(CompletedDate)) %>% 
  mutate(PermitClass = parse_factor(PermitClass, levels = NULL)) %>% 
  mutate(Class = recode(PermitClass, `Single Family/Duplex` = "Single family",
                        Multifamiliy = "Multifamily")) %>% 
  mutate(ContractorCompanyName = recode(ContractorCompanyName, 
                                        `PUGETSOUNDSOLAR` = "PUGET SOUND SOLAR",
                                        `Puget Sound Solar` = "PUGET SOUND SOLAR",
                                        `Puget Sound Solar LLC` = "PUGET SOUND SOLAR",
                                        `ARTISAN ELECTRICAL SERVS LLC` = "ARTISAN ELECTRIC INC",
                                        `NORTHWEST ELECTRIC & SOLAR LLC` = 
                                          "NORTHWEST ELECTRIC & SOLAR",
                                        `Northwest Electric & Solar` = 
                                          "NORTHWEST ELECTRIC & SOLAR",
                                        `WEST SEATTLE ELECTRIC AND SOLA` = 
                                          "WEST SEATTLE ELECTRIC & SOLAR",
                                        `West Seattle Electric and Solar` = 
                                          "WEST SEATTLE ELECTRIC & SOLAR",
                                        `Offset Solar` = "OFFSET SOLAR LLC",
                                        `SME Inc of Seattle` = "SME INC OF SEATTLE",
                                        `sunergy systems` = "SUNERGY SYSTEMS",
                                        `SUNERGYSYSTEMS` = "SUNERGY SYSTEMS",
                                        `SUNERGY SYSTEMS INC.` = "SUNERGY SYSTEMS")) %>% 
  select(Class,Description,CompletedDate,
         ContractorCompanyName,Latitude,Longitude) 

lv <- elec %>% 
  group_by(ContractorCompanyName) %>% 
  summarize(n_events = n()) %>% 
  arrange(desc(n_events))

inst <- elec %>% 
  mutate(Installer = parse_factor(ContractorCompanyName, levels = lv[[1]]))
  
levels(inst$Installer)

## plot
g_pvtren_dv <- inst %>% 
  mutate(year = year(CompletedDate)) %>% 
  group_by(Class, year) %>% 
  summarise(install = n()) %>%
  ggplot(aes(x = year, y = install, group = Class, color = Class))+
  geom_line(size = 1)+
  xlab("Year") + ylab("Number of installation") +
  theme_bw() +
  theme(legend.position = c(0.90, 0.25),
        legend.background = element_rect(fill="transparent")) +
  scale_x_continuous(breaks = seq(2000, 2019, by = 1))

top <- inst %>% 
  group_by(Installer) %>% 
  count() %>% 
  arrange(desc(n)) %>% 
  mutate('top installer' = ifelse(n > 100, "Y", "N"))

## plot
g_pvcontr_dv <- inst %>% 
  mutate(year = year(CompletedDate)) %>% 
  group_by(Installer, year) %>% 
  summarise(install = n()) %>% 
  arrange(desc(install)) %>% 
  left_join(top, by = c("Installer")) %>% 
  filter(`top installer` == "Y") %>% 
  ggplot(aes(x = year, y = install, group = Installer, 
             color = Installer))+
  geom_line(size = 1)+
  xlab("Year") + ylab("Number of installation") +
  theme_bw() +
  theme(legend.position = c(0.3, 0.7),
        legend.background = element_rect(fill="transparent")) +
  scale_x_continuous(breaks = seq(2000, 2019, by = 1))

install <- inst %>% 
  select(-ContractorCompanyName, -Description)

# View(inst)

write_csv(inst, path = "./data/derived/install.csv" )
save(inst, install, totelec, top, g_pvcontr_dv, g_pvtren_dv, file = "./data/derived/dv.Rdata")

load("./data/derived/dv.Rdata")
