#STweekdays

#Import data

# install.packages("readxl")
# install.packages("CRF")

library(readxl)
library(CRF)

#CRF_ST_weekdays <- read_excel("CRF_data/CRF_ST_weekdays.xlsx")

#Segment
segmentdf3 <- read_excel("CRF_data/CRF_ST_weekdays.xlsx", sheet = "Segment", col_names = FALSE,
                         col_types = "text", na = "*", trim_ws = TRUE, skip = 1,
                         n_max = Inf,
                         progress = readxl_progress(), .name_repair = "unique")
names(segmentdf3)=paste(rep("T",226), 1:226, sep="")

# DAY

daydf3 <- read_excel("CRF_data/CRF_ST_weekdays.xlsx", sheet = "Day", col_names = TRUE,
                     col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                     n_max = Inf,
                     progress = readxl_progress(), .name_repair = "unique")
names(daydf3)=paste(rep("T",226), 1:226, sep="")

# Interval

intervaldf3 <- read_excel("CRF_data/CRF_ST_weekdays.xlsx", sheet = "Interval", col_names = TRUE,
                          col_types = "text", na = "*", trim_ws = TRUE, skip = 0,
                          n_max = Inf,
                          progress = readxl_progress(), .name_repair = "unique")
names(intervaldf3)=paste(rep("T",226), 1:226, sep="")

# Binary
binarydf3  <- read_excel("CRF_data/CRF_ST_weekdays.xlsx", sheet = "Binary", col_names = TRUE,
                         col_types = "numeric", na = "*", trim_ws = TRUE, skip = 0,
                         n_max = Inf,
                         progress = readxl_progress(), .name_repair = "unique")
names(binarydf3)=paste(rep("T",226), 1:226, sep="")

# Summary
dim(binarydf)

combinedf50=data.frame(matrix(ncol=226, nrow=4))
combinedf51=data.frame(matrix(ncol=226, nrow=4))
combinedf51=data.frame(matrix(ncol=226, nrow=4))
combinedf53=data.frame(matrix(ncol=226, nrow=4))
combinedf54=data.frame(matrix(ncol=226, nrow=4))
combinedf55=data.frame(matrix(ncol=226, nrow=4))
combinedf56=data.frame(matrix(ncol=226, nrow=4))
combinedf57=data.frame(matrix(ncol=226, nrow=4))
combinedf58=data.frame(matrix(ncol=226, nrow=4))
combinedf59=data.frame(matrix(ncol=226, nrow=4))
combinedf60=data.frame(matrix(ncol=226, nrow=4))
combinedf61=data.frame(matrix(ncol=226, nrow=4))
combinedf62=data.frame(matrix(ncol=226, nrow=4))
combinedf63=data.frame(matrix(ncol=226, nrow=4))
combinedf64=data.frame(matrix(ncol=226, nrow=4))
combinedf65=data.frame(matrix(ncol=226, nrow=4))
combinedf66=data.frame(matrix(ncol=226, nrow=4))
combinedf67=data.frame(matrix(ncol=226, nrow=4))
combinedf68=data.frame(matrix(ncol=226, nrow=4))
combinedf69=data.frame(matrix(ncol=226, nrow=4))
combinedf70=data.frame(matrix(ncol=226, nrow=4))
combinedf71=data.frame(matrix(ncol=226, nrow=4))
combinedf72=data.frame(matrix(ncol=226, nrow=4))
combinedf73=data.frame(matrix(ncol=226, nrow=4))
combinedf74=data.frame(matrix(ncol=226, nrow=4))
combinedf75=data.frame(matrix(ncol=226, nrow=4))
combinedf76=data.frame(matrix(ncol=226, nrow=4))
combinedf77=data.frame(matrix(ncol=226, nrow=4))
combinedf78=data.frame(matrix(ncol=226, nrow=4))
combinedf79=data.frame(matrix(ncol=226, nrow=4))
combinedf80=data.frame(matrix(ncol=226, nrow=4))
combinedf81=data.frame(matrix(ncol=226, nrow=4))
combinedf82=data.frame(matrix(ncol=226, nrow=4))
combinedf83=data.frame(matrix(ncol=226, nrow=4))
combinedf84=data.frame(matrix(ncol=226, nrow=4))


combinedf50[1,]= segmentdf3[1,]
combinedf50[2,]= daydf3[1,]
combinedf50[3,]= binarydf3[1,]
combinedf50[4,]= intervaldf3[1,]


combinedf51[1,]= segmentdf3[2,]
combinedf51[2,]= daydf3[2,]
combinedf51[3,]= binarydf3[2,]
combinedf51[4,]= intervaldf3[2,]

combinedf52[1,]= segmentdf3[3,]
combinedf52[2,]= daydf3[3,]
combinedf52[3,]= binarydf3[3,]
combinedf52[4,]= intervaldf3[3,]

combinedf53[1,]= segmentdf3[4,]
combinedf53[2,]= daydf3[4,]
combinedf53[3,]= binarydf3[4,]
combinedf53[4,]= intervaldf3[4,]

combinedf54[1,]= segmentdf3[5,]
combinedf54[2,]= daydf3[5,]
combinedf54[3,]= binarydf3[5,]
combinedf54[4,]= intervaldf3[5,]

combinedf55[1,]= segmentdf3[6,]
combinedf55[2,]= daydf3[6,]
combinedf55[3,]= binarydf3[6,]
combinedf55[4,]= intervaldf3[6,]

combinedf56[1,]= segmentdf3[7,]
combinedf56[2,]= daydf3[7,]
combinedf56[3,]= binarydf3[7,]
combinedf56[4,]= intervaldf3[7,]

combinedf57[1,]= segmentdf3[8,]
combinedf57[2,]= daydf3[8,]
combinedf57[3,]= binarydf3[8,]
combinedf57[4,]= intervaldf3[8,]

combinedf58[1,]= segmentdf3[9,]
combinedf58[2,]= daydf3[9,]
combinedf58[3,]= binarydf3[9,]
combinedf58[4,]= intervaldf3[9,]

combinedf59[1,]= segmentdf3[10,]
combinedf59[2,]= daydf3[10,]
combinedf59[3,]= binarydf3[10,]
combinedf59[4,]= intervaldf3[10,]

combinedf60[1,]= segmentdf3[11,]
combinedf60[2,]= daydf3[11,]
combinedf60[3,]= binarydf3[11,]
combinedf60[4,]= intervaldf3[11,]

combinedf61[1,]= segmentdf3[12,]
combinedf61[2,]= daydf3[12,]
combinedf61[3,]= binarydf3[12,]
combinedf61[4,]= intervaldf3[12,]

combinedf62[1,]= segmentdf3[13,]
combinedf62[2,]= daydf3[13,]
combinedf62[3,]= binarydf3[13,]
combinedf62[4,]= intervaldf3[13,]

combinedf63[1,]= segmentdf3[14,]
combinedf63[2,]= daydf3[14,]
combinedf63[3,]= binarydf3[14,]
combinedf63[4,]= intervaldf3[14,]

combinedf64[1,]= segmentdf3[15,]
combinedf64[2,]= daydf3[15,]
combinedf64[3,]= binarydf3[15,]
combinedf64[4,]= intervaldf3[15,]


combinedf65[1,]= segmentdf3[16,]
combinedf65[2,]= daydf3[16,]
combinedf65[3,]= binarydf3[16,]
combinedf65[4,]= intervaldf3[16,]

combinedf66[1,]= segmentdf3[17,]
combinedf66[2,]= daydf3[17,]
combinedf66[3,]= binarydf3[17,]
combinedf66[4,]= intervaldf3[17,]

combinedf67[1,]= segmentdf3[18,]
combinedf67[2,]= daydf3[18,]
combinedf67[3,]= binarydf3[18,]
combinedf68[4,]= intervaldf3[18,]

combinedf68[1,]= segmentdf3[19,]
combinedf68[2,]= daydf3[19,]
combinedf68[3,]= binarydf3[19,]
combinedf68[4,]= intervaldf3[19,]

combinedf69[1,]= segmentdf3[20,]
combinedf69[2,]= daydf3[20,]
combinedf69[3,]= binarydf3[20,]
combinedf69[4,]= intervaldf3[20,]

combinedf70[1,]= segmentdf3[21,]
combinedf70[2,]= daydf3[21,]
combinedf70[3,]= binarydf3[21,]
combinedf70[4,]= intervaldf3[21,]

combinedf71[1,]= segmentdf3[22,]
combinedf71[2,]= daydf3[22,]
combinedf71[3,]= binarydf3[22,]
combinedf71[4,]= intervaldf3[22,]


combinedf72[1,]= segmentdf3[23,]
combinedf72[2,]= daydf3[23,]
combinedf72[3,]= binarydf3[23,]
combinedf72[4,]= intervaldf3[23,]

combinedf73[1,]= segmentdf3[24,]
combinedf73[2,]= daydf3[24,]
combinedf73[3,]= binarydf3[24,]
combinedf73[4,]= intervaldf3[24,]

combinedf74[1,]= segmentdf3[25,]
combinedf74[2,]= daydf3[25,]
combinedf74[3,]= binarydf3[25,]
combinedf74[4,]= intervaldf3[25,]

combinedf75[1,]= segmentdf3[26,]
combinedf75[2,]= daydf3[26,]
combinedf75[3,]= binarydf3[26,]
combinedf75[4,]= intervaldf3[26,]

combinedf76[1,]= segmentdf3[27,]
combinedf76[2,]= daydf3[27,]
combinedf76[3,]= binarydf3[27,]
combinedf76[4,]= intervaldf3[27,]

combinedf77[1,]= segmentdf3[28,]
combinedf77[2,]= daydf3[28,]
combinedf77[3,]= binarydf3[28,]
combinedf77[4,]= intervaldf3[28,]

combinedf78[1,]= segmentdf3[29,]
combinedf78[2,]= daydf3[29,]
combinedf78[3,]= binarydf3[29,]
combinedf78[4,]= intervaldf3[29,]


combinedf79[1,]= segmentdf3[30,]
combinedf79[2,]= daydf3[30,]
combinedf79[3,]= binarydf3[30,]
combinedf79[4,]= intervaldf3[30,]

combinedf80[1,]= segmentdf3[31,]
combinedf80[2,]= daydf3[31,]
combinedf80[3,]= binarydf3[31,]
combinedf80[4,]= intervaldf3[31,]

combinedf81[1,]= segmentdf3[32,]
combinedf81[2,]= daydf3[32,]
combinedf81[3,]= binarydf3[32,]
combinedf81[4,]= intervaldf3[32,]

combinedf82[1,]= segmentdf3[33,]
combinedf82[2,]= daydf3[33,]
combinedf82[3,]= binarydf3[33,]
combinedf82[4,]= intervaldf3[33,]

combinedf83[1,]= segmentdf3[34,]
combinedf83[2,]= daydf3[34,]
combinedf83[3,]= binarydf3[34,]
combinedf83[4,]= intervaldf3[34,]

combinedf84[1,]= segmentdf3[35,]
combinedf84[2,]= daydf3[35,]
combinedf84[3,]= binarydf3[35,]
combinedf84[4,]= intervaldf3[35,]


colnames(combinedf)=paste(rep("T",226), 1:226, sep="")

rownames(combinedf)=c("Segment","Day","Binary","Interval")

#Combined Data Frames


