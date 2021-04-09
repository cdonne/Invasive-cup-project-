library(readxl)
data <- read_excel("CompiledDonneLarkindata.xlsx")
head(data)

library(ggplot2)
#Doing cumulative first. Will work on adding histograms as percentage
#and density plots at some point
data_invas <- data[1:94, ]
data_nativ <- data[95:711, ]
#cumulative density graphs
#Age
age_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                             rep("nativ", nrow(data_nativ))),
                     age = c(data_invas$Ageatmaturity,
                             data_nativ$Ageatmaturity))

age_cdf <- ggplot(age_df, aes(age, color = key)) + 
    stat_ecdf(geom = "line") + labs(title = "CDF of Age in Days by Species")

#growth
growth_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        growth = c(data_invas$growthrate3mm,
                                   data_nativ$growthrate3mm))

growth_cdf <- ggplot(growth_df, aes(growth, color = key)) + 
    stat_ecdf(geom = "line") + labs(title = "CDF of Growth Rate by Species")

#length
length_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        length = c(data_invas$Finallength,
                                   data_nativ$Finallength))

length_cdf <- ggplot(length_df, aes(length, color = key)) + 
    stat_ecdf(geom = "line") + labs(title = "CDF of Length by Species")

library(gridExtra, quietly = TRUE)
grid.arrange(age_cdf, growth_cdf, length_cdf)

#Below, the DENSITY PLOTS:
# Use CompiledDonneLarkindata file 

data <- CompiledDonneLarkindata
data_invas <- data[1:93, ]
data_nativ <- data[94:711, ]

#growth
growth_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        growth = c(data_invas$Familymeans_growth,
                                   data_nativ$Familymeans_growth))

growth_pdf <- ggplot(growth_df, aes(growth, color = key)) + geom_density(geom = "line") 
growth_hist <- ggplot(growth_df, aes(x = growth, color = key, fill = key)) +
    geom_histogram(aes(y =..density..), position = "identity", alpha = 0.5) +
    geom_density(alpha = .2) +  scale_color_manual(values=rev(c("thistle", "gold1")), guide = 'legend',name = 'Group')+
    scale_fill_manual(values=rev(c("thistle", "gold1")), guide = 'legend',name = 'Group', labels = c("Invasive", "Native"))+
    labs(x="Growth/day until 3 mm", y = "Density")+
    guides(color=FALSE)

pdf("LHT_growth", width = 10, height = 5)
growth_hist
dev.off()


#Age
age_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                             rep("nativ", nrow(data_nativ))),
                     age = c(data_invas$Familymeans_age,
                             data_nativ$Familymeans_age))

age_pdf <- ggplot(age_df, aes(age, color = key)) + geom_density(geom = "line")
age_hist <- ggplot(age_df, aes(x = age, color = key, fill = key)) +
    geom_histogram(aes(y =..density..), position = "identity", alpha = 0.5) +
    geom_density(alpha = .2) +  
    scale_color_manual(values=rev(c("plum3", "gold1")), guide = 'legend',name = 'Group')+
    scale_fill_manual(values=rev(c("plum3", "gold1")), guide = 'legend',name = 'Group', labels = c("Invasive", "Native"))+
    labs(x="Days until reproductive maturity", y = "Density")+ 
    guides(color=FALSE)

pdf("LHT_age", width = 10, height = 5)
age_hist
dev.off()

#length
length_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        length = c(data_invas$Familymeans_length,
                                   data_nativ$Familymeans_length))

length_pdf <- ggplot(length_df, aes(length, color = key)) + geom_density(geom = "line") 
length_hist <- ggplot(length_df, aes(x = length, color = key, fill = key)) +
    geom_histogram(aes(y =..density..), position = "identity", alpha = 0.5) +
    geom_density(alpha = .2) +  scale_color_manual(values=rev(c("plum3", "gold1")), guide = 'legend',name = 'Group')+
    scale_fill_manual(values=rev(c("plum3", "gold1")), guide = 'legend',name = 'Group', labels = c("Invasive", "Native"))+
    labs(x="Shell length at reproductive maturity (mm)", y = "Density")+
    guides(color=FALSE)

pdf("LHT_length",width = 10, height = 5)
length_hist
dev.off()

grid.arrange(age_pdf, growth_pdf, length_pdf)
pdf("LHT_histograms")
grid.arrange(growth_hist, age_hist, length_hist)
dev.off()

# MESSING AROUND WIHT ANCESTOR-DESCENDENT COMPARISONS 

data <- CompiledDonneLarkindata
data_invas <- data[78:93, ]
data_nativ <- data[686:692, ]

growth_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        growth = c(data_invas$Familymeans_growth,
                                   data_nativ$Familymeans_growth))

growth_pdf <- ggplot(growth_df, aes(growth, color = key)) + geom_density(geom = "line") 
growth_hist <- ggplot(growth_df, aes(x = growth, color = key, fill = key)) +
    geom_histogram(aes(y =..density..), position = "identity", alpha = 0.5) +
    geom_density(alpha = .2) +  scale_color_manual(values=rev(c("orchid3", "yellow2")), guide = 'legend',name = 'Group')+
    scale_fill_manual(values=rev(c("orchid3", "yellow2")), guide = 'legend',name = 'Group', labels = c("Invasive", "Native"))+
    labs(x="Growth/day until 3 mm", y = "Density")+
    guides(color=FALSE)
