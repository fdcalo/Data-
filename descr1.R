#STweekends

#Import data

# install.packages("readxl")
# install.packages("CRF")

library(readxl)
library(CRF)

#CRF_ST_weekends <- read_excel("CRF_data/CRF_ST_weekends.xlsx")

#Segment
segmentdf1 <- read_excel("CRF_data/CRF_ST_weekends.xlsx", sheet = "Segment", col_names = FALSE,
                        col_types = "text", na = "*", trim_ws = TRUE, skip = 1,
                        n_max = Inf,
                        progress = readxl_progress(), .name_repair = "unique")
names(segmentdf1)=paste(rep("T",224), 1:224, sep="")

# DAY

daydf1 <- read_excel("CRF_data/CRF_ST_weekends.xlsx", sheet = "Day", col_names = TRUE,
                    col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                    n_max = Inf,
                    progress = readxl_progress(), .name_repair = "unique")
names(daydf1)=paste(rep("T",224), 1:224, sep="")

# Interval

intervaldf1 <- read_excel("CRF_data/CRF_ST_weekends.xlsx", sheet = "Interval", col_names = TRUE,
                         col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                         n_max = Inf,
                         progress = readxl_progress(), .name_repair = "unique")
names(intervaldf1)=paste(rep("T",196), 1:224, sep="")

# Binary
binarydf1  <- read_excel("CRF_data/CRF_ST_weekends.xlsx", sheet = "Binary", col_names = TRUE,
                        col_types = "numeric", na = "*", trim_ws = TRUE, skip = 0,
                        n_max = Inf,
                        progress = readxl_progress(), .name_repair = "unique")
names(binarydf1)=paste(rep("T",224), 1:224, sep="")

# Summary
dim(binarydf1)

combinedf8=data.frame(matrix(ncol=224, nrow=4))
combinedf9=data.frame(matrix(ncol=224, nrow=4))
combinedf10=data.frame(matrix(ncol=224, nrow=4))
combinedf11=data.frame(matrix(ncol=224, nrow=4))
combinedf12=data.frame(matrix(ncol=224, nrow=4))
combinedf13=data.frame(matrix(ncol=224, nrow=4))
combinedf14=data.frame(matrix(ncol=224, nrow=4))


combinedf8[1,]= segmentdf1[1,]
combinedf8[2,]= daydf1[1,]
combinedf8[3,]= binarydf1[1,]
combinedf8[4,]= intervaldf1[1,]


combinedf9[1,]= segmentdf1[2,]
combinedf9[2,]= daydf1[2,]
combinedf9[3,]= binarydf1[2,]
combinedf9[4,]= intervaldf1[2,]

combinedf10[1,]= segmentdf1[3,]
combinedf10[2,]= daydf1[3,]
combinedf10[3,]= binarydf1[3,]
combinedf10[4,]= intervaldf1[3,]

combinedf11[1,]= segmentdf1[4,]
combinedf11[2,]= daydf1[4,]
combinedf11[3,]= binarydf1[4,]
combinedf11[4,]= intervaldf1[4,]

combinedf12[1,]= segmentdf1[5,]
combinedf12[2,]= daydf1[5,]
combinedf12[3,]= binarydf1[5,]
combinedf12[4,]= intervaldf1[5,]

combinedf13[1,]= segmentdf1[6,]
combinedf13[2,]= daydf1[6,]
combinedf13[3,]= binarydf1[6,]
combinedf13[4,]= intervaldf1[6,]

combinedf14[1,]= segmentdf1[7,]
combinedf14[2,]= daydf1[7,]
combinedf14[3,]= binarydf1[7,]
combinedf14[4,]= intervaldf1[7,]


colnames(combinedf)=paste(rep("T",224), 1:224, sep="")

rownames(combinedf)=c("Segment","Day","Binary","Interval")

#Combined Data Frames

ah<-t(combinedf8)
ai<-t(combinedf9)
aj<-t(combinedf10)
ak<-t(combinedf11)
al<-t(combinedf12)
am<-t(combinedf13)
an<-t(combinedf14)

c7<-cbind.data.frame(ah,ai)
c8<-cbind.data.frame(ak,ak)
c9<-cbind.data.frame(al,am)
c10<-cbind.data.frame(c7,c8)
c11<-cbind.data.frame(c10,c9)
c12<-cbind.data.frame(c11,an)

rownames(STweekend)=paste(rep("T",196), 1:196, sep="")

STweekend<-cbind.data.frame(c11,an)
View(STweekend)
