#####################################################################################
## Instructional Demonstration - Idaho State University, April 4 2025 (C. Small)
#####################################################################################

## Simulated genetic architecture for a quantitative trait (D. aterrimus tail length)
## Can we get a trait that *looks* normally distributed from only 5 genes?



## Can use rbinom() to get us random single-locus genotypes for 100 individuals.
## We want how many "successes" result from 2 trials (2 alleles per diploid genotype).
## Remember, with 2 trials we can get 0, 1 or 2 "successes."

locus_1 <- rbinom(n=?, size=?, prob=?)#a vector of diploid genotypes

## Genetic contributions to phenotype
## Add 1 cm for "AA," 1.5 cm for "Aa," and 2 cm for "aa."
contributions_1 <- ifelse(locus_1==2, 0+1,
                          ifelse(locus_1==1, 0+1.5, 0+2))






## Now combine and sum the contributions to phenotype across the 5 genes
df_contribs <- data.frame(contributions_1,contributions_2,contributions_3,
                          contributions_4,contributions_5)

phenotype_values <- apply(df_contribs, MARGIN=1, FUN=sum)



## Finally, let's plot the values







#### NOTE: Technically the above trait variable is not strictly continuous,
####       based on way we set up the simulation, but you get the idea.








