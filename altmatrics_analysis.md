---
title: "On the origin of citations"  
author: "Sidney"  
date: "Sep 15, 2015"  
output: 
  html_document:
    toc: true
    theme: cerulean
    highlight: espresso
    fig_width: 8
    fig_height: 8
    fig_caption: yes
---

# load the data


# Data exploration

Dist of author count

![Figure 1: Number of Authors per Article](figure/author count-1.png) 

![Figure 2: Number of FB share per Article](figure/fb share-1.png) 




The average number of Facebook shares per paper in the data set is 0.6524187

## dplyr


```r
library("dplyr")
```

```
## Warning: package 'dplyr' was built under R version 3.2.2
```

```
## 
## Attaching package: 'dplyr'
## 
## The following objects are masked from 'package:stats':
## 
##     filter, lag
## 
## The following objects are masked from 'package:base':
## 
##     intersect, setdiff, setequal, union
```

```r
research <- filter(count.raw,articleType == "Research Article")
```







