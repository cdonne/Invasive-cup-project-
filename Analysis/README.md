# Statistical Analysis

## 1/25/21

### Normality test
- Kolmogorov-Smirnov (K-S) test was used for assessing normality 
- Final length:K-S statistic=0.030, df=301, p=.200
- Age at maturity:K-S statistic= .111, df=301, p<0.001 
- Growth rate: K-S statistic= 0.080, df= 301, p<0.001

### Data Transformations 
- No transformation needed for final length
- Inverse log transformation for growth rate
- Inverse squareroot transfomation for age at maturity 

### Normality using transformed data 
- Age at maturity: K-S statistic = 0.043, df= 301, p=0.200
- Growth rate: K-S statistic= 0.045, df= 301, p=.200 


## 2/24/21

### Kendall rank sum correlation test 
- used to evaluate the relationship between growth rate and age at maturity and final length in the invasive snails 
- see output file for results (Kendalloutput) 

### General linear model 
- a nested design was used to assess the differences in life history traits between invasive and native snails
- see output file for the tables (Nested_GLMoutput)

## 5/19/21

### Kendall rank sum correlation test 
- used to evaluate whether genetic variation could be associated with phenotypic variaiton in invasive poulations 
- see output file for results (KendallSNPoutput) 

## 6/10/21

### Kendall rank sum correlation test
- similar to the previous correlation analysis but using F values from ANOVA/ANCOVA analysis for all life history traits within populations
- output file (SNP_correlation) 
