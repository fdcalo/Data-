#EBweekends

#Import data

# install.packages("readxl")
# install.packages("CRF")

library(readxl)
library(CRF)

#CRF_EB_weekends <- read_excel("CRF_data/CRF_EB_weekends.xlsx")

#Segment
segmentdf <- read_excel("CRF_data/CRF_EB_weekends.xlsx", sheet = "Segment", col_names = FALSE,
           col_types = "text", na = "*", trim_ws = TRUE, skip = 1,
           n_max = Inf,
           progress = readxl_progress(), .name_repair = "unique")
names(segmentdf)=paste(rep("T",196), 1:196, sep="")

# DAY

daydf <- read_excel("CRF_data/CRF_EB_weekends.xlsx", sheet = "Day", col_names = TRUE,
                    col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                    n_max = Inf,
                    progress = readxl_progress(), .name_repair = "unique")
names(daydf)=paste(rep("T",196), 1:196, sep="")

# Interval

intervaldf <- read_excel("CRF_data/CRF_EB_weekends.xlsx", sheet = "Interval", col_names = TRUE,
                    col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                    n_max = Inf,
                    progress = readxl_progress(), .name_repair = "unique")
names(intervaldf)=paste(rep("T",196), 1:196, sep="")

# Binary
binarydf  <- read_excel("CRF_data/CRF_EB_weekends.xlsx", sheet = "Binary", col_names = TRUE,
                        col_types = "numeric", na = "*", trim_ws = TRUE, skip = 0,
                        n_max = Inf,
                        progress = readxl_progress(), .name_repair = "unique")
names(binarydf)=paste(rep("T",196), 1:196, sep="")

# Summary
dim(binarydf)

combinedf1=data.frame(matrix(ncol=196, nrow=4))
combinedf2=data.frame(matrix(ncol=196, nrow=4))
combinedf3=data.frame(matrix(ncol=196, nrow=4))
combinedf4=data.frame(matrix(ncol=196, nrow=4))
combinedf5=data.frame(matrix(ncol=196, nrow=4))
combinedf6=data.frame(matrix(ncol=196, nrow=4))
combinedf7=data.frame(matrix(ncol=196, nrow=4))


  combinedf1[1,]= segmentdf[1,]
  combinedf1[2,]= daydf[1,]
  combinedf1[3,]= binarydf[1,]
  combinedf1[4,]= intervaldf[1,]
  
  
  combinedf2[1,]= segmentdf[2,]
  combinedf2[2,]= daydf[2,]
  combinedf2[3,]= binarydf[2,]
  combinedf2[4,]= intervaldf[2,]
  
  combinedf3[1,]= segmentdf[3,]
  combinedf3[2,]= daydf[3,]
  combinedf3[3,]= binarydf[3,]
  combinedf3[4,]= intervaldf[3,]
  
  combinedf4[1,]= segmentdf[4,]
  combinedf4[2,]= daydf[4,]
  combinedf4[3,]= binarydf[4,]
  combinedf4[4,]= intervaldf[4,]

  combinedf5[1,]= segmentdf[5,]
  combinedf5[2,]= daydf[5,]
  combinedf5[3,]= binarydf[5,]
  combinedf5[4,]= intervaldf[5,]
  
  combinedf6[1,]= segmentdf[6,]
  combinedf6[2,]= daydf[6,]
  combinedf6[3,]= binarydf[6,]
  combinedf6[4,]= intervaldf[6,]
  
  combinedf7[1,]= segmentdf[7,]
  combinedf7[2,]= daydf[7,]
  combinedf7[3,]= binarydf[7,]
  combinedf7[4,]= intervaldf[7,]
  
  
  colnames(combinedf)=paste(rep("T",196), 1:196, sep="")

  rownames(combinedf)=c("Segment","Day","Binary","Interval")


crf.new <- make.crf(adj, n.states)

#Combined data frames

aa<-t(combinedf1)
ab<-t(combinedf2)
ac<-t(combinedf3)
ad<-t(combinedf4)
ae<-t(combinedf5)
af<-t(combinedf6)
ag<-t(combinedf7)

c1<-cbind.data.frame(aa,ab)
c2<-cbind.data.frame(ac,ad)
c3<-cbind.data.frame(ae,af)
c4<-cbind.data.frame(c1,c2)
c5<-cbind.data.frame(c4,c3)
c6<-cbind.data.frame(c5,ag)

rownames(EBweekend)=paste(rep("T",196), 1:196, sep="")

EBweekend<-cbind.data.frame(c5,ag)
View(EBweekend)


# CRF 
library(data.table)
library(crfsuite)

x<-as.data.table(EBweekend)
x<-x[,Segment_previous := shift(Segment,n=1, type="lag"),by=list(Interval)]
x<-x[,Segment_next := shift(Segment,n=1, type="lead"),by=list(Interval)]
x<-x[,Binary_previous := shift(Binary,n=1, type="lag"),by=list(Interval)]
x<-x[,Binary_next := shift(Binary,n=1, type="lead"),by=list(Interval)]
x<-x[,Day_previous := shift(Day,n=1, type="lag"),by=list(Interval)]
x<-x[,Day_next := shift(Day,n=1, type="lead"),by=list(Interval)]

#ErrorDetected

x<-x[,Segment_previous :=txt_sprintf("Segment[w-1]=%s",Segment_previous),by=list(Interval)]
x<-x[,Segment_next :=txt_sprintf("Segment[w+1]=%s",Segment_next),by=list(Interval)]
x<-x[,Binary_previous :=txt_sprintf("Binary[w-1]=%s",Binary_previous),by=list(Interval)]
x<-x[,Binary_next :=txt_sprintf("Binary[w+1]=%s",Binary_next),by=list(Interval)]
x<-x[,Day_previous :=txt_sprintf("Day[w-1]=%s",Day_previous),by=list(Interval)]
x<-x[,Day_next :=txt_sprintf("Day[w+1]=%s",Day_next),by=list(Interval)]

subset(x,Interval == P1,select=c("Interval","Binary","Binary_previous","Binary_next"))

x<-as.data.frame(x)

crf_train <- subset(x,data=="ned.train")
crf_test<- subset(x,data=="testa")

model<-crf(y=crf_train$label,
           x=crf_train[,c("Segment","Segment_previous","Segment_next","Binary","Binary_previous","Binary_next",
                          "Day", "Day_previous","Day_next"
  )],
          group=crf_train$Interval,
          method="lbfgs",file="tagger.crfsuite",
          options=list(max_iterations = 25, feature.minfreq=5,
                       c1=0,c2=1))
model
