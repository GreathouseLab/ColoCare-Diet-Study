# ============================================= #
# script: load_packages.R
# Project: ColoCare Data Study
# Author(s): L. Greathouse et al.
# ============================================= #
# Date Created: 2019-12-10
# Date Modified: 2021-07-13
# By: R. Noah Padgett
# ============================================= #
# ============================================= #
# Purpose:
# This R script is for loading all necessary
#   R packages
#
# No output - just loading packages into the
#   environment
# ============================================= #
# Set up directory and libraries
rm(list=ls())

# BiocManager "bioconductor manager"
if (!requireNamespace("BiocManager", quietly = TRUE)){
  install.packages("BiocManager")
}
# check if phyloseq is installed:
if(!requireNamespace("phyloseq", quietly=T)){
  BiocManager::install("phyloseq")
}

# list of packages
packages <- c("phyloseq","vegan", "lme4", "lmerTest",
              "tidyverse", "readr", "readxl", "forcats",
              "data.table", "ggplot2", "MASS",
              "kableExtra", "xtable", "gridExtra", "viridis",
              "patchwork", "gvlma", "car", "dplyr", "stringr",
              "reshape2", "ggdendro", "dendextend", "cowplot")
new.packages <- packages[!(packages %in% installed.packages()[,"Package"])]
if(length(new.packages)) install.packages(new.packages, quiet = T, dependencies = T)
# Load packages
lapply(packages, library, character.only = TRUE)

w.d <- getwd()

