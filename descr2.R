#EBweekdays

#Import data

# install.packages("readxl")
# install.packages("CRF")

library(readxl)
library(CRF)

#CRF_EB_weekdays <- read_excel("CRF_data/CRF_EB_weekdays.xlsx")

#Segment
segmentdf2 <- read_excel("CRF_data/CRF_EB_weekdays.xlsx", sheet = "Segment", col_names = FALSE,
                        col_types = "text", na = "*", trim_ws = TRUE, skip = 1,
                        n_max = Inf,
                        progress = readxl_progress(), .name_repair = "unique")
names(segmentdf2)=paste(rep("T",151), 1:151, sep="")

# DAY

daydf2 <- read_excel("CRF_data/CRF_EB_weekdays.xlsx", sheet = "Day", col_names = TRUE,
                    col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                    n_max = Inf,
                    progress = readxl_progress(), .name_repair = "unique")
names(daydf2)=paste(rep("T",151), 1:151, sep="")

# Interval

intervaldf2 <- read_excel("CRF_data/CRF_EB_weekdays.xlsx", sheet = "Interval", col_names = TRUE,
                         col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                         n_max = Inf,
                         progress = readxl_progress(), .name_repair = "unique")
names(intervaldf2)=paste(rep("T",151), 1:151, sep="")

# Binary
binarydf2  <- read_excel("CRF_data/CRF_EB_weekdays.xlsx", sheet = "Binary", col_names = TRUE,
                        col_types = "numeric", na = "*", trim_ws = TRUE, skip = 0,
                        n_max = Inf,
                        progress = readxl_progress(), .name_repair = "unique")
names(binarydf2)=paste(rep("T",151), 1:151, sep="")

# Summary
dim(binarydf)

combinedf15=data.frame(matrix(ncol=151, nrow=4))
combinedf16=data.frame(matrix(ncol=151, nrow=4))
combinedf17=data.frame(matrix(ncol=151, nrow=4))
combinedf18=data.frame(matrix(ncol=151, nrow=4))
combinedf19=data.frame(matrix(ncol=151, nrow=4))
combinedf20=data.frame(matrix(ncol=151, nrow=4))
combinedf21=data.frame(matrix(ncol=151, nrow=4))
combinedf22=data.frame(matrix(ncol=151, nrow=4))
combinedf23=data.frame(matrix(ncol=151, nrow=4))
combinedf24=data.frame(matrix(ncol=151, nrow=4))
combinedf25=data.frame(matrix(ncol=151, nrow=4))
combinedf26=data.frame(matrix(ncol=151, nrow=4))
combinedf27=data.frame(matrix(ncol=151, nrow=4))
combinedf28=data.frame(matrix(ncol=151, nrow=4))
combinedf29=data.frame(matrix(ncol=151, nrow=4))
combinedf30=data.frame(matrix(ncol=151, nrow=4))
combinedf31=data.frame(matrix(ncol=151, nrow=4))
combinedf32=data.frame(matrix(ncol=151, nrow=4))
combinedf33=data.frame(matrix(ncol=151, nrow=4))
combinedf34=data.frame(matrix(ncol=151, nrow=4))
combinedf35=data.frame(matrix(ncol=151, nrow=4))
combinedf36=data.frame(matrix(ncol=151, nrow=4))
combinedf37=data.frame(matrix(ncol=151, nrow=4))
combinedf38=data.frame(matrix(ncol=151, nrow=4))
combinedf39=data.frame(matrix(ncol=151, nrow=4))
combinedf40=data.frame(matrix(ncol=151, nrow=4))
combinedf41=data.frame(matrix(ncol=151, nrow=4))
combinedf42=data.frame(matrix(ncol=151, nrow=4))
combinedf43=data.frame(matrix(ncol=151, nrow=4))
combinedf44=data.frame(matrix(ncol=151, nrow=4))
combinedf45=data.frame(matrix(ncol=151, nrow=4))
combinedf46=data.frame(matrix(ncol=151, nrow=4))
combinedf46=data.frame(matrix(ncol=151, nrow=4))
combinedf48=data.frame(matrix(ncol=151, nrow=4))
combinedf49=data.frame(matrix(ncol=151, nrow=4))


combinedf15[1,]= segmentdf2[1,]
combinedf15[2,]= daydf2[1,]
combinedf15[3,]= binarydf2[1,]
combinedf15[4,]= intervaldf2[1,]


combinedf16[1,]= segmentdf2[2,]
combinedf16[2,]= daydf2[2,]
combinedf16[3,]= binarydf2[2,]
combinedf16[4,]= intervaldf2[2,]

combinedf17[1,]= segmentdf2[3,]
combinedf17[2,]= daydf2[3,]
combinedf17[3,]= binarydf2[3,]
combinedf17[4,]= intervaldf2[3,]

combinedf18[1,]= segmentdf2[4,]
combinedf18[2,]= daydf2[4,]
combinedf18[3,]= binarydf2[4,]
combinedf18[4,]= intervaldf2[4,]

combinedf19[1,]= segmentdf2[5,]
combinedf19[2,]= daydf2[5,]
combinedf19[3,]= binarydf2[5,]
combinedf19[4,]= intervaldf2[5,]

combinedf20[1,]= segmentdf2[6,]
combinedf20[2,]= daydf2[6,]
combinedf20[3,]= binarydf2[6,]
combinedf20[4,]= intervaldf2[6,]

combinedf21[1,]= segmentdf2[7,]
combinedf21[2,]= daydf2[7,]
combinedf21[3,]= binarydf2[7,]
combinedf21[4,]= intervaldf2[7,]

combinedf22[1,]= segmentdf2[8,]
combinedf22[2,]= daydf2[8,]
combinedf22[3,]= binarydf2[8,]
combinedf22[4,]= intervaldf2[8,]


combinedf23[1,]= segmentdf2[9,]
combinedf23[2,]= daydf2[9,]
combinedf23[3,]= binarydf2[9,]
combinedf23[4,]= intervaldf2[9,]

combinedf24[1,]= segmentdf2[10,]
combinedf24[2,]= daydf2[10,]
combinedf24[3,]= binarydf2[10,]
combinedf24[4,]= intervaldf2[10,]

combinedf25[1,]= segmentdf2[11,]
combinedf25[2,]= daydf2[11,]
combinedf25[3,]= binarydf2[11,]
combinedf25[4,]= intervaldf2[11,]

combinedf26[1,]= segmentdf2[12,]
combinedf26[2,]= daydf2[12,]
combinedf26[3,]= binarydf2[12,]
combinedf26[4,]= intervaldf2[12,]

combinedf27[1,]= segmentdf2[13,]
combinedf27[2,]= daydf2[13,]
combinedf27[3,]= binarydf2[13,]
combinedf27[4,]= intervaldf2[13,]

combinedf28[1,]= segmentdf2[14,]
combinedf28[2,]= daydf2[14,]
combinedf28[3,]= binarydf2[14,]
combinedf28[4,]= intervaldf2[14,]

combinedf29[1,]= segmentdf2[15,]
combinedf29[2,]= daydf2[15,]
combinedf29[3,]= binarydf2[15,]
combinedf29[4,]= intervaldf2[15,]


combinedf30[1,]= segmentdf2[16,]
combinedf30[2,]= daydf2[16,]
combinedf30[3,]= binarydf2[16,]
combinedf30[4,]= intervaldf2[16,]

combinedf31[1,]= segmentdf2[17,]
combinedf31[2,]= daydf2[17,]
combinedf31[3,]= binarydf2[17,]
combinedf31[4,]= intervaldf2[17,]

combinedf32[1,]= segmentdf2[18,]
combinedf32[2,]= daydf2[18,]
combinedf32[3,]= binarydf2[18,]
combinedf32[4,]= intervaldf2[18,]

combinedf33[1,]= segmentdf2[19,]
combinedf33[2,]= daydf2[19,]
combinedf33[3,]= binarydf2[19,]
combinedf33[4,]= intervaldf2[19,]

combinedf34[1,]= segmentdf2[20,]
combinedf34[2,]= daydf2[20,]
combinedf34[3,]= binarydf2[20,]
combinedf34[4,]= intervaldf2[20,]

combinedf35[1,]= segmentdf2[21,]
combinedf35[2,]= daydf2[21,]
combinedf35[3,]= binarydf2[21,]
combinedf35[4,]= intervaldf2[21,]

combinedf36[1,]= segmentdf2[22,]
combinedf36[2,]= daydf2[22,]
combinedf36[3,]= binarydf2[22,]
combinedf36[4,]= intervaldf2[22,]


combinedf37[1,]= segmentdf2[23,]
combinedf37[2,]= daydf2[23,]
combinedf37[3,]= binarydf2[23,]
combinedf37[4,]= intervaldf2[23,]

combinedf38[1,]= segmentdf2[24,]
combinedf38[2,]= daydf2[24,]
combinedf38[3,]= binarydf2[24,]
combinedf38[4,]= intervaldf2[24,]

combinedf39[1,]= segmentdf2[25,]
combinedf39[2,]= daydf2[25,]
combinedf39[3,]= binarydf2[25,]
combinedf39[4,]= intervaldf2[25,]

combinedf40[1,]= segmentdf2[26,]
combinedf40[2,]= daydf2[26,]
combinedf40[3,]= binarydf2[26,]
combinedf40[4,]= intervaldf2[26,]

combinedf41[1,]= segmentdf2[27,]
combinedf41[2,]= daydf2[27,]
combinedf41[3,]= binarydf2[27,]
combinedf41[4,]= intervaldf2[27,]

combinedf42[1,]= segmentdf2[28,]
combinedf42[2,]= daydf2[28,]
combinedf42[3,]= binarydf2[28,]
combinedf42[4,]= intervaldf2[28,]

combinedf43[1,]= segmentdf2[29,]
combinedf43[2,]= daydf2[29,]
combinedf43[3,]= binarydf2[29,]
combinedf43[4,]= intervaldf2[29,]


combinedf44[1,]= segmentdf2[30,]
combinedf44[2,]= daydf2[30,]
combinedf44[3,]= binarydf2[30,]
combinedf44[4,]= intervaldf2[30,]

combinedf45[1,]= segmentdf2[31,]
combinedf45[2,]= daydf2[31,]
combinedf45[3,]= binarydf2[31,]
combinedf45[4,]= intervaldf2[31,]

combinedf46[1,]= segmentdf2[32,]
combinedf46[2,]= daydf2[32,]
combinedf46[3,]= binarydf2[32,]
combinedf46[4,]= intervaldf2[32,]

combinedf47[1,]= segmentdf2[33,]
combinedf47[2,]= daydf2[33,]
combinedf47[3,]= binarydf2[33,]
combinedf47[4,]= intervaldf2[33,]

combinedf48[1,]= segmentdf2[34,]
combinedf48[2,]= daydf2[34,]
combinedf48[3,]= binarydf2[34,]
combinedf48[4,]= intervaldf2[34,]

combinedf49[1,]= segmentdf2[35,]
combinedf49[2,]= daydf2[35,]
combinedf49[3,]= binarydf2[35,]
combinedf49[4,]= intervaldf2[35,]


colnames(combinedf)=paste(rep("T",151), 1:151, sep="")

rownames(combinedf)=c("Segment","Day","Binary","Interval")

#Combined Data Frames

ao<-t(combinedf15)
ap<-t(combinedf16)
aq<-t(combinedf17)
ar<-t(combinedf18)
as<-t(combinedf19)
at<-t(combinedf20)
au<-t(combinedf21)
av<-t(combinedf22)
aw<-t(combinedf23)
ax<-t(combinedf24)
ay<-t(combinedf25)
az<-t(combinedf26)
ba<-t(combinedf27)
bb<-t(combinedf28)
bb<-t(combinedf29)
bd<-t(combinedf30)
be<-t(combinedf31)
bf<-t(combinedf32)
bg<-t(combinedf33)
bh<-t(combinedf34)
bi<-t(combinedf35)
bj<-t(combinedf36)
bk<-t(combinedf37)
bl<-t(combinedf38)
bm<-t(combinedf39)
bn<-t(combinedf40)
bo<-t(combinedf41)
bp<-t(combinedf42)
bq<-t(combinedf43)
br<-t(combinedf44)
bs<-t(combinedf45)
bt<-t(combinedf46)
bu<-t(combinedf47)
bv<-t(combinedf48)
bw<-t(combinedf49)

c13<-cbind.data.frame(ah,ai)
c14<-cbind.data.frame(ak,ak)
c15<-cbind.data.frame(al,am)
c16<-cbind.data.frame(c7,c8)
c17<-cbind.data.frame(c10,c9)
c18<-cbind.data.frame(c11,an)

rownames(STweekend)=paste(rep("T",196), 1:196, sep="")

STweekend<-cbind.data.frame(c11,an)
View(STweekend)


