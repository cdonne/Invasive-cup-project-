# Load in all necessary data files, GROWTH, AGE, LENGTH 
# Install packages ggplot2 and Hmisc by going to Tools -> Install Packages -> Type in package name

# Load packages 
library(ggplot2)
library(Hmisc)


# Growth rate plots 

data_invas <- CompiledDonneLarkindata_GROWTH[1:93, ]
data_nativ <- CompiledDonneLarkindata_GROWTH[94:707, ]

growth_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        growth = c(data_invas$growthrate3mm,
                                   data_nativ$growthrate3mm))
pdf(file="growth_violin")

growth_violin <- ggplot(growth_df,aes(x= CompiledDonneLarkindata_GROWTH$Status, y=CompiledDonneLarkindata_GROWTH$growthrate3mm, fill=CompiledDonneLarkindata_GROWTH$Status)) + geom_violin() + scale_fill_manual(values=c("yellow1", "orchid2")) +
  labs(x="Status", y = "Mean growth rate/day until 3 mm (95% CI)", fill = "Group") + theme(plot.title = element_blank(), axis.title= element_text(size = 17), axis.text = element_text(size = 14), legend.title = element_text(size = 17),legend.text = element_text(size=14))

growth_complete <- growth_violin + stat_summary(fun.data = "mean_sdl",geom = "pointrange",color="black")

growth_complete

dev.off()

# Age at maturity plots 

data_invas <- CompiledDonneLarkindata_AGE[1:93, ]
data_nativ <- CompiledDonneLarkindata_AGE[94:697, ]

age_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                                rep("nativ", nrow(data_nativ))),
                        age = c(data_invas$Ageatmaturity,
                                   data_nativ$Ageatmaturity))
pdf(file= "age_violin")

age_violin <- ggplot(age_df,aes(x= CompiledDonneLarkindata_AGE$Status, y=CompiledDonneLarkindata_AGE$Ageatmaturity, fill=CompiledDonneLarkindata_AGE$Status)) + geom_violin() + scale_fill_manual(values=c("yellow1", "orchid2")) +
  labs(x="Status", y = "Mean days until reproductive maturity (95% CI)", fill = "Group") + theme(plot.title = element_blank(), axis.title= element_text(size = 17), axis.text = element_text(size = 14), legend.title = element_text(size = 17),legend.text = element_text(size=14))

age_complete <- age_violin + stat_summary(fun.data = "mean_sdl",geom = "pointrange",color="black")

age_complete

dev.off()


# Length plots 

data_invas <- CompiledDonneLarkindata_LENGTH[1:92, ]
data_nativ <- CompiledDonneLarkindata_LENGTH[93:697, ]

length_df <- data.frame(key = c(rep("invas", nrow(data_invas)),
                             rep("nativ", nrow(data_nativ))),
                     length = c(data_invas$Finallength,
                             data_nativ$Finallength))

pdf(file="length_violin")

length_violin <- ggplot(length_df,aes(x= CompiledDonneLarkindata_LENGTH$Status, y=CompiledDonneLarkindata_LENGTH$Finallength, fill=CompiledDonneLarkindata_LENGTH$Status)) + geom_violin() + scale_fill_manual(values=c("yellow1", "orchid2")) +
  labs(x="Status", y = "Mean shell length (mm) at reproductive maturity (95% CI)", fill = "Group") + theme(plot.title = element_blank(), axis.title= element_text(size = 17), axis.text = element_text(size = 14), legend.title = element_text(size = 17),legend.text = element_text(size=14))

length_complete <- length_violin + stat_summary(fun.data = "mean_sdl",geom = "pointrange",color="black")

length_complete

dev.off()