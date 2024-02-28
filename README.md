# Assignment 7 - Titanic Dataset Analysis

This repository contains an R script for analyzing the Titanic dataset. The dataset was downloaded from [Kaggle](https://www.kaggle.com/datasets/yasserh/titanic-dataset), and the focus is on exploring various aspects related to passengers' demographics and survival.

## Dataset Preparations

1.  Downloaded the Titanic dataset from Kaggle.
2.  Unzipped the folder and retained only the `train.csv` file.
3.  Renamed the file to `titanic.csv`.

## Analysis Operations

The R script in this repository performs the following operations:

1.  **Bar Charts:**
    -   Generates bar charts to describe the gender, ticket class, and survival of the passengers onboard.
2.  **Histogram and Boxplots for Age:**
    -   Generates a histogram for passengers' age.
    -   Describes the passengers' age using boxplots based on ticket class and survival.
3.  **Histogram and Table for Travel Fare:**
    -   Generates a histogram for the travel fare.
    -   Displays a table showing the number of people who did not pay.
4.  **Family Size per Ticket Class:**
    -   Creates a chart depicting family size per ticket class.
5.  **Stacked Bar Charts for Survival:**
    -   Generates stacked bar charts to show how survival differs for different genders and ticket classes.
6.  **Violin Chart - Survival vs. Age and Gender:**
    -   Describes survival in relation to age and gender using a violin chart.
7.  **Violin Chart - Survival Rate vs. Age and Ticket Class:**
    -   Illustrates survival rate in relation to age and ticket class through a violin chart.

## Observations

Without further advanced statistical tools it seems a bit complex to give a definitive conclusion on the association of these four variables all together.

Nevertheless, In analyzing the Titanic dataset, several noteworthy observations emerge. First, there is a discernible correlation between age and survival, with children exhibiting notably higher survival rates.

Gender also plays a crucial role, as females consistently demonstrate higher survival rates than males. Furthermore, ticket class is a significant factor, with passengers in higher classes experiencing greater chances of survival.

Interestingly, when considering the interaction between variables, certain demographics, such as young females in the first and second class, display particularly high survival rates.

Overall, these findings provide valuable insights into the dynamics of survival on the Titanic, underscoring the importance of considering multiple variables in the analysis.

### Note:

Ensure that the necessary R packages, especially ggplot, are installed before running the script.
