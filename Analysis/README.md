# Statistical Analysis

## 1/25/21

### Normality test
- Kolmogorov-Smirnov (K-S) test was used for assessing normality 
- Final length:K-S statistic=0.030, df=301, p=.200
- Age at maturity:K-S statistic= .111, df=301, p<0.001 
- Growth rate: K-S statistic= 0.080, df= 301, p<0.001

### Data Transformations 
- All variables were multipled by 100 and then a box cox transformation was applied to achieve normality 

### Normality using transformed data 
- Final length: K-S statistic= 0.030, df= 301, p=.200
- Age at maturity: K-S statistic = 0.049, df= 301, p=0.083
- Growth rate: K-S statistic= 0.037, df= 301, p=.200 

### Linear regression 
- to see if growth rate was assocaited with age at maturity and final length 
- Age at maturity Rsq=0.246  p<0.001
- Final length Rsq=0.051 p<0.001
- saved residuals for age at maturity to correct for growth rate 
