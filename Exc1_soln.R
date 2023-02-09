#Subset the dataset Orders in the folder datasets to create a dataset with only ???Online??? payment

ds<- read.csv("D:/Orders.csv",stringsAsFactors =T)
ds
datasets<-subset(ds,Payment.Terms=="Online")
datasets

#2. Consider the dataset mtcars. Output (write) the data in this data set into a csv file and name the csv file asmtcars.csv.

data("mtcars")
write.csv(mtcars,"D:/R_files/asmcars.csv")


#3. Consider the dataset diamonds in the folder datasets. Subset the dataset with criteria as cut=Premium and color=J
dj <-read.csv2("Diamonds.csv")
dj
mj <-subset(dj,cut=="Premium" & color=="J")
mj
#4. Consider the dataset diamonds in the folder datasets. Create a data frame object which stores just variables carat, color, depth and price
dj <-read.csv2("Diamonds.csv",stringsAsFactors =T)
dj
mk<-dj[ ,c(1,3,5,7)]
mk
#5. Consider the dataset mtcars. Choose the 2nd, 18th, 30th and 12th rows
data(mtcars)
mtcars
mycars <-mtcars[c(2,18,30,12),]
mycars  


#################################################################
b_data <-read.csv("D:/R_files/breast-cancer-wisconsin.data",header=F)
colnames(b_data)<-c("SampleID",
                    "Clump",
                    "Uni_size",
                    "Uni_shape",
                    "marg_adh",
                    "epith",
                    "bare_nuc",
                    "b_chrome",
                    "n_nucl",
                    "mitosis",
                    "class")
b_data

b_name<-read.csv("D:/R_files/breast-cancer-wisconsin.names",header=F)
b_name
colnames(b_name)<-c()