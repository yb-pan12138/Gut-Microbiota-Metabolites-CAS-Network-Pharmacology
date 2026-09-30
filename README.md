# Gut-Microbiota-Metabolites-CAS-Network-Pharmacology

Data, analysis scripts, processed results, and reproducibility materials supporting the JoVE protocol **“A Network Pharmacology-Based Computational Workflow for Investigating Gut Microbiota Metabolites Associated with Coronary Atherosclerosis.”**

## Overview

This repository accompanies a computational workflow for prioritizing associations among gut microbiota-derived metabolites, host targets, and coronary atherosclerosis (CAS). The workflow integrates metabolite structure standardization, computational target prediction, disease-associated gene sources, PPI/network analysis, enrichment analysis, sensitivity analyses, ADME/toxicity prioritization, and exploratory molecular docking.

The repository is intended to improve traceability and computational reproducibility. Computational associations and docking scores should not be interpreted as evidence of causal regulation, experimentally validated binding, or therapeutic efficacy.

## Repository structure

- `scripts/` — analysis scripts used in the workflow.
- `processed_data/` — author-generated or processed datasets used to reproduce reported analyses.
- `supplementary_tables/` — supplementary tables accompanying the manuscript.
- `docking/` — processed molecular-docking score tables and related documentation.
- `docs/` — workflow notes, provenance information, and reproducibility documentation.

## Main workflow

1. Retrieve gut microbiota–metabolite–host associations.
2. Standardize metabolite structures and identifiers.
3. Predict metabolite-associated targets using SEA and SwissTargetPrediction.
4. Integrate disease-associated genes from the transcriptomic and disease-database branches.
5. Prioritize candidate targets and construct the PPI network.
6. Perform GO, KEGG, and Disease Ontology analyses.
7. Evaluate robustness using leave-one-database-out and network-centrality sensitivity analyses.
8. Construct the microbiota–substrate–metabolite–target network.
9. Apply SwissADME and ADMETlab as a separate developability-oriented prioritization branch.
10. Perform exploratory molecular docking of prioritized compounds against selected targets.

## Data provenance and redistribution

Some inputs used in the study were retrieved from third-party databases and web resources. Raw third-party exports are **not automatically redistributed in this repository** where redistribution rights are unclear or restricted. Instead, this repository is designed to provide author-generated scripts, processed/derived results, retrieval information, filtering criteria, and provenance documentation sufficient to trace the analytical workflow.

Users who wish to reproduce analyses involving third-party resources should obtain the relevant source data directly from the original databases under their applicable terms of use.

## Key study outputs

The representative CAS analysis included 226 microbiota-associated metabolites, 1,518 unique predicted metabolite targets after integrating SEA and SwissTargetPrediction, 2,462 disease-associated genes, 525 intersecting targets, and 52 final candidate targets after integration with gutMGene host-gene evidence. The six reported hub targets were TNF, IL6, AKT1, TP53, IL1B, and PPARG.

Sensitivity analyses include leave-one-database-out evaluation and comparison of Degree, Betweenness centrality, and Closeness centrality rankings.

## Reproducibility notes

Database retrieval and the principal computational analyses reported in the manuscript were completed during October 15–17, 2025. Exact database sources, thresholds, and analysis details should be interpreted together with the final JoVE protocol and the files provided in this repository.

## Availability

This is a public research repository associated with the manuscript. Additional processed data and scripts will be added as the submission package is finalized.

## Funding

This research received no specific grant from any funding agency in the public, commercial, or not-for-profit sectors.

## Figures and tables

All figures and tables in the associated manuscript are original to the present study and have not been previously published or adapted from previously published materials.

## Citation

Citation information will be updated after publication of the associated JoVE article.
