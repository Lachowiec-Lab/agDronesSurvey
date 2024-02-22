library(tidyverse)
library(ggalluvial)
library(patchwork)
library(ggrepel)
library(directlabels)
library(gplots)
### Read in survey data
data1 <- read.csv("data/Results_Ag_Drones_2021_Survey.csv")
country_code <- read.csv("data/countries_code.csv")

data2 <- data1 |> 
  left_join(country_code, by = c("country"= "id"))

data3 <- data2 |> 
  mutate(gender = recode(gender,
                         `1` = "Male",
                         `2` = "Female",
                         `3` = "Non-binary",
                         `4` = "Prefer not to say"))



#####Race of respondent#####
race_data <- subset(prelim, select=ethaapi:ethrnl)
nrow(race_data[complete.cases(race_data), ]) #87 responses

race_totals <- colSums(race_data, na.rm = T)
race_totals
race_names <- c("Asian or Pacific Islander", "Black African or African American", "Hispanic or Latino", "Native American or Alaska Native", "White or Caucasian", "Prefer not to say", "A race or ethnicity not listed here")
race <-data.frame(Race = race_names, Frequency = race_totals)
head(race_data)
race |>
  ggplot(aes(x = reorder(Race, Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12)) +
  xlab(label = "") +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 10,  # Bottom margin
                             l = 30)) # Left margin
race[race$Race == "White or Caucasian", 2]/nrow(race_data[complete.cases(race_data), ]) #73.6%

#####Age of respondents#####
age_data <- as.data.frame(table(prelim$age))
head(age_data)
age_data$Var1 <- c("18-29","30-39","40-49","50-59","60-69", "70+")
names(age_data) <- c("Age", "Frequency")
age_data
sum(age_data$Frequency) #135 completed this question

age_data |>
  ggplot(aes(x = Age, y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12)) +
  xlab(label = "") +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 30)) # Left margin
age_data[age_data$Age == "30-39", 2]/sum(age_data$Frequency) #28.9%


#####Industry of respondents#####
pos_table <- as.data.frame(table(prelim$indust))
head(pos_table)
sum(pos_table$Freq) #146 respondents for this question, one option
names(pos_table) <- c("Industry", "Frequency")
pos_table$Industry <- c("Research Institution", "Industry", "Government",
                        "Primarily undergraduate\n academic institution", 
                        "Other college/university", "Self-employed", "Other")
pos_table

ggplot(pos_table, aes(x = reorder(Industry, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12)) +
  xlab(label = "")

pos_table[pos_table$Industry == "Research Institution", 2]/sum(pos_table$Frequency) #28.8%
pos_table[pos_table$Industry == "Other college/university", 2]/sum(pos_table$Frequency) #26.7%
pos_table[pos_table$Industry == "Industry", 2]/sum(pos_table$Frequency) #22.6%
pos_table[pos_table$Industry == "Government", 2]/sum(pos_table$Frequency) #9.6%
pos_table[pos_table$Industry == "Primarily undergraduate\n academic institution", 2]/sum(pos_table$Frequency) #6.2%
pos_table[pos_table$Industry == "Self-employed", 2]/sum(pos_table$Frequency) #4.1%


#####Study Systems of Respondents#####
#Plants
system_data <- subset(prelim, select=paqua:pna)
nrow(system_data)
nrow(system_data[complete.cases(system_data), ]) # we have 146 responses,

system_totals <- colSums(system_data, na.rm = T)
system_names <- c("Aquatic plants",
                  "Bioenergy grasses",
                  "Cereals",
                  "Fiber crops",
                  "Fruits",
                  "Herbs and spices", 
                  "Medicinal plants",
                  "Nuts and seeds", 
                  "Ornamental plants", 
                  "Pastures", 
                  "Plants (general)", 
                  "Pulses", 
                  "Rhizomes, tubers, roots, and bulb crops", 
                  "Soybean and oil crops",
                  "Sugarcane, sugar beets, and sugar crops", 
                  "Trees", 
                  "Vegetables", 
                  "Weeds",
                  "Other", 
                  "Not applicable")
systems <-data.frame(System = system_names, Frequency = system_totals)

systems |>
  ggplot(aes(x = reorder(System, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 
##special denominator because multiple selection possible
systems[systems$System == "Cereals", 2]/nrow(system_data[complete.cases(system_data), ]) #45.9%
systems[systems$System == "Rhizomes, tubers, roots, and bulb crops", 2]/nrow(system_data[complete.cases(system_data), ]) #31.5%

#Animals
system_data <- subset(prelim, select=lanthro:lna)
nrow(system_data)
nrow(system_data[complete.cases(system_data), ]) # we have 146 responses,

system_totals <- colSums(system_data, na.rm = T)
system_names <- c("Arthropods",
                  "Cows",
                  "Fish/Shellfish",
                  "Goats",
                  "Pigs",
                  "Poultry", 
                  "Sheep",
                  "Wildlife", 
                  "Other", 
                  "Not applicable")
systems <-data.frame(System = system_names, Frequency = system_totals)

systems |>
  ggplot(aes(x = reorder(System, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 
##special denominator because multiple selection possible
systems[systems$System == "Cows", 2]/nrow(system_data[complete.cases(system_data), ]) #6.6%
systems[systems$System == "Poultry", 2]/nrow(system_data[complete.cases(system_data), ]) #1.5%

#####Pathogen study####
path_data <- subset(prelim, select=micpath)
summary(path_data)
path <- data.frame(table(path_data))
names(path) <- c("Choice", "Frequency")
path$Choice <- c("No", "Yes")
path |>
  ggplot(aes(x = reorder(Choice, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin
path[path$Choice == "Yes",2]/sum(path$Frequency) #33.8%


#####Topic Area of Respondents#####
topic_data <- subset(prelim, select=tagrono:tother)
nrow(topic_data)
nrow(topic_data[complete.cases(topic_data), ]) # we have 146 responses,

topic_totals <- colSums(topic_data, na.rm = T)
topic_names <- c("Agronomy",
                 "Animal behavior",
                 "Animal nutrition",
                 "Animal science",
                 "Animal welfare",
                 "Breeding", 
                 "Ecology",
                 "Evolution", 
                 "Genetics", 
                 "Pathology", 
                 "Physiology",
                 "Plant/animal development",
                 "Agricultural engineering", 
                 "Sensors/optics", 
                 "Software engineering",
                 "Statistics", 
                 "Mathematics", 
                 "Informatics", 
                 "Computer science",
                 "Soil science",
                 "Environmental science",
                 "Conservation",
                 "Geoscience",
                 "Other")
topics <-data.frame(Topic = topic_names, Frequency = topic_totals)

topics |>
  ggplot(aes(x = reorder(Topic, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 
##special denominator because multiple selection possible
topics[topics$Topic == "Agronomy", 2]/nrow(topic_data[complete.cases(topic_data), ]) #51.4%
topics[topics$Topic == "Breeding", 2]/nrow(topic_data[complete.cases(topic_data), ]) #41.1%
topics[topics$Topic == "Statistics", 2]/nrow(topic_data[complete.cases(topic_data), ]) #17.83%

#####Value of UAV, total respondents#####
value_data <- as.data.frame(table(prelim$value))
value_data
value_names <- c("Very valuable", "Valuable", "Can be valuable", "Minimally valuable")
values <-data.frame(Value = value_names, Frequency = value_data$Freq)
sum(values$Frequency) #145 responses

values |>
  ggplot(aes(x = reorder(Value, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 

values[values$Value == "Very valuable", 2]/sum(values$Frequency) #47.6%
values[values$Value == "Valuable", 2]/sum(values$Frequency) #34.5%
values[values$Value == "Can be valuable", 2]/sum(values$Frequency) #13.8%
values[values$Value == "Minimally valuable", 2]/sum(values$Frequency) #4.1%


#####Current UAV use#####
pos_table <- as.data.frame(table(prelim$situat))
head(pos_table)
sum(pos_table$Freq) #146 respondents for this question, one option

names(pos_table) <- c("Use", "Frequency")
pos_table$Use <- c("Currently using UAV", "Interested in using UAV", "Not interested")

ggplot(pos_table, aes(x = Use, y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12))
pos_table[pos_table$Use == "Currently using UAV", 2]/sum(pos_table$Frequency) #41.7%
pos_table[pos_table$Use == "Interested in using UAV", 2]/sum(pos_table$Frequency) #49.6%
pos_table[pos_table$Use == "Not interested", 2]/sum(pos_table$Frequency) #8.9%

#####Value of UAV, future users#####
futureuse <- prelim[prelim$situat == "2",] #2 is the code for future users
value_data <- as.data.frame(table(futureuse$value))
value_data
value_names <- c("Very valuable", "Valuable", "Can be valuable", "Minimally valuable")
valuesF <-data.frame(Value = value_names, Frequency = value_data$Freq)
sum(valuesF$Frequency) #71 responses

valuesF |>
  ggplot(aes(x = reorder(Value, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 

valuesF[valuesF$Value == "Very valuable", 2]/sum(valuesF$Frequency) #39.4%
valuesF[valuesF$Value == "Valuable", 2]/sum(valuesF$Frequency) #40.8%
valuesF[valuesF$Value == "Can be valuable", 2]/sum(valuesF$Frequency) #15.5%
valuesF[valuesF$Value == "Minimally valuable", 2]/sum(valuesF$Frequency) #4.2%

#####Value of UAV, current users#####
currentuse <- prelim[prelim$situat == "1",] #1 is the code for current users
value_data <- as.data.frame(table(currentuse$value))
value_data
value_names <- c("Very valuable", "Valuable", "Can be valuable", "Minimally valuable")
valuesC <-data.frame(Value = value_names, Frequency = value_data$Freq)
sum(valuesC$Frequency) #61 responses

valuesC |>
  ggplot(aes(x = reorder(Value, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 

valuesC[valuesC$Value == "Very valuable", 2]/sum(valuesC$Frequency) #63.9%
valuesC[valuesC$Value == "Valuable", 2]/sum(valuesC$Frequency) #27.9%
valuesC[valuesC$Value == "Can be valuable", 2]/sum(valuesC$Frequency) #6.6%
valuesC[valuesC$Value == "Minimally valuable", 2]/sum(valuesC$Frequency) #1.6%

#####Comparing values between current and future users#####
frequency <- c(valuesF$Frequency, valuesC$Frequency)
group <- c(rep("Future Users", 4), rep("Current users", 4))
value <- rep(c("Very valuable", "Valuable", "Can be valuable", "Minimally valuable"), 2)
valueTable <- data.frame(Group = group, Value = value, Frequency = frequency)
valueTable$Value <- as.factor(valueTable$Value)
valueTable$Value <- factor(valueTable$Value, levels = c("Very valuable", "Valuable", "Can be valuable", "Minimally valuable", "No value"))
head(valueTable)

ggplot(valueTable,
       aes(y = Frequency, axis1 = Group, axis2 = Value)) +
  geom_alluvium(aes(fill = Value), width = 1/12) +
  geom_stratum(width = 1/12, fill = "black", color = "grey") +
  geom_label(stat = "stratum", aes(label = after_stat(stratum))) +
  scale_x_discrete(limits = c("Group", "Value"), expand = c(.1, .1)) +
  scale_fill_brewer(type = "qual", palette = "Set1") +
  theme_minimal() +
  theme(legend.position = "none") +
  theme(axis.text = element_text(size= 12),
        axis.title = element_text(size = 14))

###Section 2####
####Barriers to and resources for UAV adoption#####
#####Barriers--all respondent####
barrier_data <- subset(prelim, select=bsatisf:bnobar)
nrow(barrier_data)
nrow(barrier_data[complete.cases(barrier_data), ]) # we have 137 responses,
# using 137 as denominator for calculating percentage for this question

barrier_totals <- colSums(barrier_data, na.rm = T)
barrier_names <- c("Satisfaction with\n current approaches",
                   "High cost of instruments,\ndevices,software",
                   "Uncertainty about items\nto purchase or pipelines to use",
                   "Lack of knowledge or trained \npersonnel to run instruments",
                   "Lack of knowledge or trained \npersonnel to analyze data",
                   "Gaps in online materials\n for training",
                   "Lack of in-person training",
                   "General lack of personnel\n to add more research",
                   "Disinterest of funding agencies\n in UAV phenotyping",
                   "Lack of data storage solutions\n or computing power",
                   "Regulatory challenges",
                   "Lack of validated and\n publicly available protocols",
                   "No barriers")
barriers <-data.frame(Barrier = barrier_names, Frequency = barrier_totals)

barriers |>
  ggplot(aes(x = reorder(Barrier, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 
##special denominator because multiple selection possible
barriers[barriers$Barrier == "High cost of instruments,\ndevices,software", 2]/nrow(barrier_data[complete.cases(barrier_data), ]) #46.0%
barriers[barriers$Barrier == "Lack of knowledge or trained \npersonnel to analyze data", 2]/nrow(barrier_data[complete.cases(barrier_data), ]) #40.9%

#####Barriers non-US#####
barrier_data <- subset(prelim, select=c(country,bsatisf:bnobar))
barrier_dataNoUS <- barrier_data |>
  filter(country != 187) ##US country code is 187
barrier_totals <- colSums(barrier_dataNoUS[,-1], na.rm = T)
barriers <-data.frame(Barrier = barrier_names, Frequency = barrier_totals)
barriers |>
  ggplot(aes(x = reorder(Barrier, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 


#####Comparing barriers: current v. future#####
##Current Users
barrier_data <- subset(currentuse, select=bsatisf:bnobar)
nrow(barrier_data)
nrow(barrier_data[complete.cases(barrier_data), ]) # we have 57 responses,
barrier_totals <- colSums(barrier_data, na.rm = T)
barriersC <-data.frame(Barrier = barrier_names, Frequency = barrier_totals)

barriersCplot <- barriersC |>
  ggplot(aes(x = reorder(Barrier, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 
###Future users
barrier_data <- subset(futureuse, select=bsatisf:bnobar)
nrow(barrier_data)
nrow(barrier_data[complete.cases(barrier_data), ]) # we have 68 responses,
barrier_totals <- colSums(barrier_data, na.rm = T)
barriersF <-data.frame(Barrier = barrier_names, Frequency = barrier_totals)

barriersFplot <- barriersF |>
  ggplot(aes(x = reorder(Barrier, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  xlab(label = "") +
  theme(text = element_text(size = 15)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 70)) # Left margin 

barriersCplot + barriersFplot

##manual ranking of barriers based of graphs based on order of barrier_names
ranks <- c(8, 2, 6, 5, 1, 11, 9, 10, 13, 7, 4, 3, 12, 11, 1, 4, 3, 2, 10, 8, 5, 12, 6, 7, 9, 13) 
groups <- c(rep("Current users", 13), rep("Future users", 13))
barrierRanks <- data.frame(barriers = barrier_names, group = groups, ranks = ranks)
barrierRanks
barrierRanks$barriers <- as.factor(barrierRanks$barriers)
#ordering the ranks based on the current users selections
barrierRanks$barriers <- factor(barrierRanks$barriers, 
                                levels = c("Lack of knowledge or trained \npersonnel to analyze data",
                                           "High cost of instruments,\ndevices,software",
                                           "Lack of validated and\n publicly available protocols",
                                           "Regulatory challenges",
                                           "Lack of knowledge or trained \npersonnel to run instruments",
                                           "Uncertainty about items\nto purchase or pipelines to use",
                                           "Lack of data storage solutions\n or computing power",
                                           "Satisfaction with\n current approaches",
                                           "Lack of in-person training",
                                           "General lack of personnel\n to add more research",
                                           "Gaps in online materials\n for training",
                                           "Disinterest of funding agencies\n in UAV phenotyping",
                                           "No barriers"))
ggplot(barrierRanks, aes(x = groups, y = ranks, 
                         group = barriers, col = barriers)) + 
  geom_line() +
  scale_y_reverse(breaks=seq(1,13,1)) +
  scale_colour_discrete(guide = 'none') +
  scale_x_discrete(expand=c(0, 1))  +
  geom_dl(aes(label = barriers), method = list(dl.combine("first.points" ,"last.points")), cex = 0.6) +
  theme(panel.background = element_rect(fill = "white", colour = "white"))


####Team size and funding####
##Funding
table(futureuse$budget)
table(currentuse$budget) #missing some categories, so added manually
mat <-  matrix(c(as.integer(table(futureuse$budget)), 2, 0, 5, 2, 3, 5), ncol = 6, nrow = 2, byrow = T)
colnames(mat) <- c("$0-500", "$501-1000", "$1001-$10,000", "$10,001-$20,000", "$20,001-$100,000", "$100,001+")
rownames(mat) <- c("future users", "current users")
# Calling as.table() Function
as.table(mat)

balloonplot(as.table(mat), main ="Funding", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)
chisq.test(as.table(mat))

##Team size
table(futureuse$ftime)
table(users$ftime) #missing some categories, so added manually
mat <-  matrix(c(as.integer(table(futureuse$ftime)), 0, 4, 2, 12), ncol = 4, nrow = 2, byrow = T)
colnames(mat) <- c("1", "2-3", "4-6", "7+")
rownames(mat) <- c("future users", "current users")

balloonplot(as.table(mat), main ="Team size", xlab ="", ylab="",
            label = FALSE, show.margins = FALSE)
chisq.test(as.table(mat))

####Desired resources####
#Including the US
resource_data <- as.data.frame(table(prelim$resource))
head(resource_data)
sum(!is.na(prelim$resource)) # we have 121 responses,

resource_data$Var1 <- c("In-person training for personnel",
                        "Online training for personnel",
                        "Clear choice of pipeline to select",
                        "Open-source graphical\nuser interface for software",
                        "Funds to purchase equipment",
                        "Detailed step-by-step \nprotocols for pipelines",
                        "Other")
names(resource_data) <- c("Resource", "Frequency")
resource_data

resource_data |>
  ggplot(aes(x = reorder(Resource, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  xlab(label = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1)) +
  theme(text = element_text(size = 30)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 40,  # Bottom margin
                             l = 40)) # Left margin

resource_data[resource_data$Resource == "Detailed step-by-step \nprotocols for pipelines", 2]/sum(!is.na(prelim$resource)) #34.7%
resource_data[resource_data$Resource == "In-person training for personnel", 2]/sum(!is.na(prelim$resource)) #16.5%

##No US
resource_data <- as.data.frame(table(prelim[prelim$country != 187,]$resource)) ##US country code is 187
head(resource_data)
resource_data$Var1 <- c("In-person training for personnel",
                        "Online training for personnel",
                        "Clear choice of pipeline to select",
                        "Open-source graphical\nuser interface for software",
                        "Funds to purchase equipment",
                        "Detailed step-by-step \nprotocols for pipelines",
                        "Other")
names(resource_data) <- c("Resource", "Frequency")
resource_data

resource_data |>
  ggplot(aes(x = reorder(Resource, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 40,  # Bottom margin
                             l = 40)) # Left margin

####Mode of resource delivery#####
#US included
mode_data <- as.data.frame(table(prelim$adopt))
head(mode_data)
sum(!is.na(prelim$adopt)) # we have 121 responses,
mode_data$Var1 <- c("Colleague(s)",
                    "Preprints or published manuscripts",
                    "Manufacturer’s resources",
                    "YouTube/Vimeo",
                    "Protocols within my\ngroup or institution",
                    "Publicly available protocols",
                    "Other")
names(mode_data) <- c("Mode", "Frequency")
mode_data

mode_data |>
  ggplot(aes(x = reorder(Mode, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12)) +
  xlab(label = "")
theme(plot.margin = margin(t = 20,  # Top margin
                           r = 20,  # Right margin
                           b = 40,  # Bottom margin
                           l = 40)) # Left margin
mode_data[mode_data$Mode == "Colleague(s)", 2]/sum(!is.na(prelim$adopt)) #29.8%

##No US
mode_data <- as.data.frame(table(prelim[prelim$country != 187,]$adopt))
head(mode_data)
mode_data$Var1 <- c("Colleague(s)",
                    "Preprints or published manuscripts",
                    "Manufacturer’s resources",
                    "YouTube/Vimeo",
                    "Protocols within my\ngroup or institution",
                    "Publicly available protocols",
                    "Other")
names(mode_data) <- c("Resource", "Frequency")
names(mode_data) <- c("Mode", "Frequency")
mode_data
mode_data |>
  ggplot(aes(x = reorder(Mode, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "seagreen") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 12)) +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 40,  # Bottom margin
                             l = 40)) # Left margin  

###Section 3#####
####Spatial Res####
plan_data <- subset(prelim, select=ireskm:iresmm)
nrow(plan_data[complete.cases(plan_data), ]) # we have 71 responses,
summary(plan_data)
plan_totals <- colSums(plan_data, na.rm = T)
plan_totals
plan_names <- c("km", "hectare", "m", "cm", "mm")

plan <-data.frame(Distance = plan_names, Frequency = plan_totals)
plan$Distance <- factor(plan$Distance, levels = c("mm", "cm", "m", "hectare", "km"))

plan |>
  ggplot(aes(x = Distance, y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin

####Time res#####
plan_data <- subset(prelim, select=itreslt1:itresmpd)
summary(plan_data)
nrow(plan_data[complete.cases(plan_data), ])
plan_totals <- colSums(plan_data, na.rm = T)
plan_totals
plan_names <- c("single image", "1x/year", "2-6x/year", "weekly", ">1/week", "daily", ">1/day")

plan <-data.frame(Timing = plan_names, Frequency = plan_totals)
plan$Timing <- factor(plan$Timing, levels = c("single image", "1x/year", "2-6x/year", "weekly", ">1/week", "daily", ">1/day"))

plan |>
  ggplot(aes(x = Timing, y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin
plan[plan$Timing == "weekly", 2]/nrow(plan_data[complete.cases(plan_data), ]) #50.0%
plan[plan$Timing == "2-6x/year", 2]/nrow(plan_data[complete.cases(plan_data), ]) #43.1%

####UAV type#####
uav_data <- subset(prelim, select=utfixed:utother)
uav_totals <- colSums(uav_data, na.rm = T)
uav_totals
uav_names <- c("fixed wing", "multirotor", "single rotor", "vertical TOL", "other")
uavs <-data.frame(UAV = uav_names, Frequency = uav_totals)

uavs |>
  ggplot(aes(x = reorder(UAV, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18),)+
  xlab(label = "") +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 20)) # Left margin
####Sensor type#####
sensor_data <- subset(prelim, select=usrgb:usother)
sensor_totals <- colSums(sensor_data, na.rm = T)
sensor_totals
sensor_names <- c("RGB", "thermal", "multispectral", "hyperspectral", "LIDAR", "developing own", "other")
sensors <-data.frame(Sensors = sensor_names, Frequency = sensor_totals)

sensors |>
  ggplot(aes(x = reorder(Sensors, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  xlab(label = "") +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18),)+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 20)) # Left margin
####georef type#####
georef_data <- subset(prelim, select=uggcp:ugother)
georef_totals <- colSums(georef_data, na.rm = T)
georef_totals
georef_names <- c("GCP", "RTK", "PPK", "GPS-equipped planter", "none", "other")
georef <-data.frame(Georeferencing = georef_names, Frequency = georef_totals)

georef |>
  ggplot(aes(x = reorder(Georeferencing, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin

####Calibration tools####
#We are missing the raw data; received these values from the HELPS lab
datacol_names <- c("Gimbals for sensor(s)",
                   "Tandem UAV flights",
                   "Color calibration",
                   "Spectral calibration",
                   "Thermal calibration")
datacol_totals <- c(35,1,25,38,15)
datacol <-data.frame(DataCollection = datacol_names, Frequency = datacol_totals)

datacol |>
  ggplot(aes(x = reorder(DataCollection, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin



####Flight planning software####
plan_data <- subset(prelim, select=fpdjifp:fpother)
nrow(plan_data[complete.cases(plan_data), ]) #55 responses

plan_totals <- colSums(plan_data, na.rm = T)
plan_totals
plan_names <- c("DJI Flight Planner", "DroneDeploy", "DroneLink", "FieldAgent", "Micasense Atlas", "Pix4D", "Wingtra", "Not sure", "Other")
plan <-data.frame(FlightPlanning = plan_names, Frequency = plan_totals)

plan |>
  ggplot(aes(x = reorder(FlightPlanning, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 16),
        axis.title.y = element_text(size = 16))+
  xlab(label = "") +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 40)) # Left margin

plan[plan$FlightPlanning == "DJI Flight Planner", 2]/nrow(plan_data[complete.cases(plan_data), ]) #45.5%
plan[plan$FlightPlanning == "Pix4D", 2]/nrow(plan_data[complete.cases(plan_data), ]) #47.3%

####Image Processing#####
plan_data <- subset(prelim, select=piagso:piother)
summary(plan_data)
plan_totals <- colSums(plan_data, na.rm = T)
plan_totals
table(plan_totals)
plan_names <- c("Agisoft Metashape 3D",
                "DJI GS Pro",
                "ImageBreed",
                "MapsMadeEasy",
                "OneDroneCloud",
                "Open Drone Map",
                "Pix4D",
                "Not sure",
                "Other"
)
plan <-data.frame(FlightAnalysis = plan_names, Frequency = plan_totals)

plan |>
  ggplot(aes(x = reorder(FlightAnalysis, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 16),
        axis.title.y = element_text(size = 16))+
  xlab(label = "") +
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin

plan[plan$FlightAnalysis == "Agisoft Metashape 3D", 2]/nrow(plan_data[complete.cases(plan_data), ]) #34.5%
plan[plan$FlightAnalysis == "Pix4D", 2]/nrow(plan_data[complete.cases(plan_data), ]) #60.0%


####Data Storage#####
plan_data <- subset(prelim, select=dspubcl:dsother)
summary(plan_data)
plan_totals <- colSums(plan_data, na.rm = T)
plan_totals
plan_names <- c("Public cloud",
                "Private cloud",
                "Institutional server",
                "Private/within-group server",
                "Hard drives",
                "Other"
)
plan <-data.frame(FlightPlanning = plan_names, Frequency = plan_totals)
table(plan$Frequency)

plan |>
  ggplot(aes(x = reorder(FlightPlanning, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin

####Desire to improve data storage protocol####
plan_data <- subset(prelim, select=uproto)
summary(plan_data)
proto <- data.frame(table(plan_data))
names(proto) <- c("Choice", "Frequency")
proto$Choice <- c("No", "Yes")
proto |>
  ggplot(aes(x = reorder(Choice, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin
proto[proto$Choice == "Yes",2]/sum(proto$Frequency) #69.0%

####Public data#####
plan_data <- subset(prelim, select=upublic)
summary(plan_data)
public <- data.frame(table(plan_data))
names(public) <- c("Choice", "Frequency")
public$Choice <- c("No", "Yes")
public |>
  ggplot(aes(x = reorder(Choice, -Frequency), y = Frequency)) +
  geom_bar(stat = "identity", fill = "steelblue") +
  theme_classic() +
  theme(axis.text.x = element_text(angle = 45, vjust = 1, hjust=1),
        axis.text = element_text(size = 18),
        axis.title.y = element_text(size = 18))+
  theme(plot.margin = margin(t = 20,  # Top margin
                             r = 20,  # Right margin
                             b = 20,  # Bottom margin
                             l = 50)) # Left margin

public[public$Choice == "Yes",2]/sum(public$Frequency) #69.0%



