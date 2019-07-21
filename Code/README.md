# Food Deserts and Socioeconomic Factors
Michael Labadie & Samantha Roberts <br/>
DATS 6450 - Bayesian Methods for Data Science

## Introduction

### Summary:

This is a Bayesian Inference project designed to analyze socioeconomic factors such as race, age, and poverty rate with a subject's geographical proximity to food sources, such as supermarkets. The results of this research could discover important factors related to at risk populations and neighborhoods. 


### Data Set Information:

The data set is "Food Access Research Atlas" found on USDA's ERS webiste and was retrieved from www.ers.usda.gov/data-products/food-access-research-atlas/.

The original dataset contained 72,864 samples and included 147 columns. The comprehensive set reported on all 50 states plus Washington, D.C. on factors such as population density (e.g. urban), poverty rate, median income, age categories such as kids and seniors, and access to a vehicle. More granular data included population counts and percentages for seven racial categories at various distances from half a mile up to 20 miles. No data samples were removed; however, there were several columns that were excluded during the analysis phase. All geographical locations were analyzed with follow-on review of Washington, D.C. as a singular location during testing.

## Methodology

### Tools & Software:

R Studio <br/>
&ensp;&ensp;Packages Required:

```
library(readxl)
require(rjags)
```
&ensp;&ensp;Files:

```
excel_reader.R
Jags-Ydich-XnomSsubj-MbernBeta-Example.R
```

Excel Files:
```
DataDownload2015.xlsx
```

Output Files:
```
Output_1subj_DataDownload2015-DC_lablack1_lawhite1Diagtheta.pdf
Output_1subj_DataDownload2015-DC_lablack1_lawhite1Post.pdf








```
### Process Flow

1) Download the data from the USDA's ERS website and save into the current working directory set in R Studio. <br/>
2) Open 'excel_reader.R'. <br/>
3) Refer to Models in the next section for variable combinations included in this project. Updates should be made to lines 3 and 25 to reflect selected features under review. <br/>
4) Run Jags-Ydich-Xnom1subj-MbernBeta.R with the data loaded into the RStudio global environment for single-variable analysis. <br/>
5) Run Jags-Ydich-XnomSsubj-MbernBeta.R with the data loaded into the RStudio global environment for multi-variable analysis. <br/>


## Model Design

Model: <br/>
		- Beta Distribution <br/>
		- Bernoulli Distribution <br/>
		- Markov Chain Monte Carlo (MCMC) <br/>

Variable Combinations: <br/>
	Model 1: <br/>
		- Output_1subj_DataDownload2015-DC_lablack1_lawhite1Diagtheta <br/>
	Model 2: <br/>
		- Var 1, var 2, var 3 <br/>
	Model 3: <br/> 
		- Var 1, var 2, var 3 <br/>
	Model 4: <br/>
		- Var 1, var 2, var 3 <br/>
	Model 5: <br/>
		- Var 1, var 2, var 3 <br/>

## Acknowledgements

Code from Kruschke, J. K. (2014). Doing Bayesian Data Analysis's example file "Jags-Ydich-XnomSsubj-MbernBeta-Example.R" was used extensively in assistance with the model construction portion of the script.
