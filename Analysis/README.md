# Statistical Analysis

## 10/29/20

### Data Transformations 
- for both the Donne and Larkin data all variables were multipled by 100 and then a box cox transformation was applied to achieve normality 

### Donne data normality 
- Kolmogorov–Smirnov (K-S) test was used for normality
- Growth rate 3mm: stat= .069 df=70 sig=.200
- Age at maturity: stat=.068 df=70 sig=.200
- Final length: stat=.076 df=70 sig=.200 

### Larkin data normality 
- Kolmogorov–Smirnov (K-S) test was used for normality 
- Growth rate 3mm: stat=.05 df=231 sig=.067
- Age at maturity: stat=.053 df=231 sig=.200
- Final length: stat=.030 df=231 sig=.200

### Linear regression 
- to see if growth rate was assocaited with age at maturity and final length 
- Age at maturity Rsq=0.515  sig=.000
- Final length Rsq=0.001 sig= .524
- saved residuals for age at maturity to correct for growth rate 
