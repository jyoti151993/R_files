w <- 4
y <- "s"
h <-w**3
ls()

class(d)
w<-4
class(w)
length(d)

# vectorization -> enabled without any loop
d+3 # addition
d*3 # multiplication

s <- c(38.4,4.67,"df")
class(s)

name <- c("A","H","H","M")
age <- c(34,78,12,55)

# to make matric of the two vectors name and age
# horizontal or row wise binding
rb <-rbind(name,age)

#vertical or colmn binding
cb <- cbind(name,age)
cb
class(rb)
class(cb)

ds <- data.frame(name,age)

data()

data(mtcars)
mtcars
# to access disp =displacement of mtcars you will have to use $
mtcars$disp
class(mtcars$disp)

a_h <-9
a.h <- 6
a_h
a.h

# aggregate functions
mean(mtcars$disp)
sd(mtcars$disp)
summary(mtcars$disp)

##### List
s <- list(a=6,g=9.43,j="ftr",k=c(4,2,1,5,6))
class(s)
s$g
s$k[4]
s[[4]]
s[[2]]
s[2]
s[[4]][3]

### factor
name<- c("A","H","L","M")
age <- c(34,78,12,55)
gdr <-c("F","M","M","F","T")
df <- data.frame(name,age,gdr)
class(df$gdr)
df$gdr <- factor(df$gdr)
class(df$gdr)
df$gdr <- factor(df$gdr)
class(df$gdr)
levels(df$gdr)

as.integer(df$gdr)
levels(df$gdr)

# Missing values
d <- c(78,NA,99,NA,5,33,2,90,NA)
is.na(d)
# count on na
table(is.na(d))
# table function gives frequency function
# or
sum(is.na(d))
as.integer(is.na(d))
is.na
sum(is.na(d))

### count nan in the vector using table and sum function
v <- c(78,NA,99,NA,5,33,2,90,NA, NaN, 23,NaN)
is.nan(v)
table(is.nan(v))
sum(is.nan(v))

# checking the infinity of number
r<- 23
p<- 0
e <- r/p
is.finite(e) # false
is.infinite(e) # true

# Matrix
m <-matrix(c(9,3,1,5,6,3),3,2) # dist colmn wise by default
m
m <-matrix(c(9,3,1,5,6,3),3,2,byrow=T) # dist row wise
m
m <-matrix(c(9,3,1,5,6,3),3,3)
m
m <-matrix(c(9,3,1,5,6,3),2,2)
m

name <- c("A","H","L","M","N","F")
age <- c(34,78,12,55)
rb <- rbind(name, age)
rb

m <-matrix(c(9,3,1),3,3)
m


#ARRAY
a <- array(dim=c(3,2))
a
a[1,1] <-4.56
a[1,2]<-9
a[3,2] <-5
a

### retreiving colmn names from data frames
data(mtcars)
colnames(mtcars)
names(mtcars)
# colnames will be processing on same data frame or matrix
# instances where colnames will not be working is in case of list
s <-list(a=6,g=9.43, h="ftr",k=c(4,2,1,5,6))
names(s)
colnames(s)

##CSV  reading csv 
b2 <- read.csv("C:/")

b <- c(1,3,5,7,8)
class(b)

b2 <-read.csv("D:/Bollywood_2015.csv",header=T)
b2
colnames(b2)
b3 <-read.csv("D:/Bollywood_2015_2.csv", header=F)

# by default header is T so you don't have to explicitly mention header=T
# setwd and getwd()

setwd("D:/")
b2 <-read.csv("Bollywood_2015.csv")
b2
b3 <-read.csv("Bollywood_2015_2.csv", header=F)
b3
d1 <-read.csv2("Diamonds.csv")
d1
d2 <-read.csv("Diamonds.csv",sep=";",dec=",")
d2

mem <-read.table("D:/members.txt",header=T,colClasses=c("character","character","integer"),skip=1,sep=" ")


mem <-read.csv("members.txt",header=T,colClasses=c("character","character","numeric"),skip=1,sep=" ")
mem

### str() to get the data types of all the columns in the files, glimse of the values,no of rows & columns
## stringsAsFactors used for the catagorical data 
d1 <-read.csv2("Diamonds.csv", stringsAsFactors=T)
str(d1)
d1

#exporting the data, to particular directory
data("ChickWeight")
write.csv(ChickWeight,"D:/R_files/ChickWeight.csv")

# reading an excel files
library(xlsx)
bnk <-read.xlsx("D:/R_files/bankruptcy.xlsx",3)
bnk

# or
library(readxl)
bnk <-read_excel("D:/R_files/bankruptcy.xlsx",sheet=3)
bnk

#Subsetting a matrix
m = matrix(1:12,4,3)
m
m[3,] # 3rd row
m[c(2,4),]  # will get 2nd and 4th row ,enclosing in c functions

# subsetting data frames
d1 <-read.csv2("Diamonds.csv",stringsAsFactors =T)
d1$clarity
d1[4,]
d1[,c(4,6)]
d1[1:50,c(4,6)]
df <-d1[1:50,c(4,6)]
# all column except 2 and 6 rows use "-" sign means exclusion

df <-d1[1:50,-c(4,6)]
df
df <-d1[-c(1:50),-c(4,6)]
df
# filtering the data , which (), subset(), filter() functions
# subsetting the data frames
b1 <-read.csv("Bollywood_2015.csv")
b1
ss <-subset(b1,BO_Collection>50 & Budget>70)
ss 
ss2 <-subset(b1,BO_Collection>50 & Budget>70,select=c(Movie_Name,BO_Collection))
ss2

# Handson on Subsetting
