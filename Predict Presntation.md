
<style type="text/css">

.reveal pre code {
  display: block; padding: 0.3em;
  font-size: 1em;
  
</style>

"Course Project: Shiny Application and Reproducible Pitch"
=====================================
author: K Hull 
date: 12/11/17
autosize: true
transition: rotate
transition-speed: slow



Overview
==================================================
-The data used in the app comes from the Motor Trend Car Road Tests (mtcars) dataset. The data was extracted from the 1974 Motor Trend US magazine, and comprises fuel consumption and 10 aspects of automobile design and performance for 32 automobiles (1973-74 models). 

*Create a Shiny application

*A Reproducible Pitch Presentation that contains five slides in either Slidify or Rstudio Presenter that is pushed to and hosted on GitHub or Rpubs and contains embedded R code that runs.


introduction
==================================
-"This data product used dataset mtcars to predicts  Miles Per Gallon based on:

*dataset:mtcars

*Input:mpg , Cyl

*Output: Miles Per Gallon by mtcars with histogram

Different mpg help as a tool kit from the dataset mtcars

The application “MPG Prediction Based on Cylinder Size” is deployed here:

Web Application functionality dataset
====================================================================
This presentation will seek to provide tools for looking at 
cars
To  ensure  efficenty  upload:library

```r
library(caret)
```

```
Loading required package: lattice
```

```
Loading required package: ggplot2
```

```r
set.seed(123)
lm1 <- lm(mpg ~ cyl, data=mtcars)
lm1
```

```

Call:
lm(formula = mpg ~ cyl, data = mtcars)

Coefficients:
(Intercept)          cyl  
     37.885       -2.876  
```

```r
summary(mtcars)
```

```
      mpg             cyl             disp             hp       
 Min.   :10.40   Min.   :4.000   Min.   : 71.1   Min.   : 52.0  
 1st Qu.:15.43   1st Qu.:4.000   1st Qu.:120.8   1st Qu.: 96.5  
 Median :19.20   Median :6.000   Median :196.3   Median :123.0  
 Mean   :20.09   Mean   :6.188   Mean   :230.7   Mean   :146.7  
 3rd Qu.:22.80   3rd Qu.:8.000   3rd Qu.:326.0   3rd Qu.:180.0  
 Max.   :33.90   Max.   :8.000   Max.   :472.0   Max.   :335.0  
      drat             wt             qsec             vs        
 Min.   :2.760   Min.   :1.513   Min.   :14.50   Min.   :0.0000  
 1st Qu.:3.080   1st Qu.:2.581   1st Qu.:16.89   1st Qu.:0.0000  
 Median :3.695   Median :3.325   Median :17.71   Median :0.0000  
 Mean   :3.597   Mean   :3.217   Mean   :17.85   Mean   :0.4375  
 3rd Qu.:3.920   3rd Qu.:3.610   3rd Qu.:18.90   3rd Qu.:1.0000  
 Max.   :4.930   Max.   :5.424   Max.   :22.90   Max.   :1.0000  
       am              gear            carb      
 Min.   :0.0000   Min.   :3.000   Min.   :1.000  
 1st Qu.:0.0000   1st Qu.:3.000   1st Qu.:2.000  
 Median :0.0000   Median :4.000   Median :2.000  
 Mean   :0.4062   Mean   :3.688   Mean   :2.812  
 3rd Qu.:1.0000   3rd Qu.:4.000   3rd Qu.:4.000  
 Max.   :1.0000   Max.   :5.000   Max.   :8.000  
```



Slide with Complete Reporting Appliaction
==============================================


```r
plot(mtcars$cyl,mtcars$mpg, pch=20,col="orange",main= "MPG Prediction Based on Cylinder Size", xlab="Cylinder size",ylab="Miles Per Gallon")
lines(mtcars$cyl,lm1$fitted, lwd=3)
```

![plot of chunk unnamed-chunk-2](Predict Presntation-figure/unnamed-chunk-2-1.png)






