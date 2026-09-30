# Reproducibility guide

This repository accompanies the JoVE protocol on gut microbiota metabolites associated with coronary atherosclerosis.

## GEO branch

The representative transcriptomic dataset is GSE132651. The analysis script performs probe/gene averaging with `avereps`, conditional log2 transformation, between-array normalization, a no-intercept group design, limma linear modeling, empirical Bayes moderation, and BY adjustment.

The manuscript treats the transcriptomic branch as exploratory evidence of endothelial dysfunction rather than as a CAS diagnostic signature. Nominal-P exploratory findings and multiple-testing-adjusted findings should be distinguished.

## Enrichment branch

GO and KEGG outputs in the manuscript were filtered using nominal P < 0.05 and adjusted P < 0.05. Disease Ontology analysis used nominal P < 0.05 with q-value filtering disabled operationally (qvalue cutoff = 1); DO results therefore should not be described as FDR-significant.

## Sensitivity analyses

Two robustness checks are reported:
1. leave-one-disease-database-out analysis; and
2. comparison of Degree, Betweenness centrality, and Closeness centrality rankings.

## Docking branch

The six prioritized compounds were docked against six selected targets. The resulting Vina scores are exploratory computational scores. Native-ligand redocking/RMSD pose-recovery validation and molecular-dynamics simulations were not performed.

## Third-party data

Where raw third-party database exports cannot clearly be redistributed, users should retrieve the corresponding source data from the original database and apply the criteria described in the manuscript and repository documentation.
