# Load necessary libraries
library(ggplot2)
library(ggthemes)
library(dplyr)

# Set working directory
dir <- '/Users/antony/Desktop/UoL/Programming for Data Science/Week 7'
setwd(dir)

# Read the Titanic dataset
df <- read.csv("titanic.csv")

# Convert categorical variables to factors
df$Pclass <- factor(df$Pclass)
df$Survived <- factor(df$Survived)


# Q1: Bar charts --------------------------------------------------------------

# Gender Plot
gender <- ggplot(df, aes(x=Sex, fill=Sex)) +
  geom_bar() +
  theme_bw() +
  labs(title='Gender Plot', y='Number of Passengers')
ggsave('Gender.png', plot = gender, dpi=300)

# Ticket Class Plot
pclass <- ggplot(df, aes(x=Pclass, fill=Pclass)) +
  geom_bar() +
  theme_bw() +
  labs(title='Ticket Class Plot',
       x='Classes Aboard the Titanic',
       y='Number of Passengers',
       fill='Class')
ggsave('Ticket Class.png', plot = pclass, dpi=300)

# Survival Passengers Plot 
surviver <- ggplot(df, aes(x=Survived, fill=Survived)) +
  geom_bar() +
  theme_bw() +
  labs(title='Survival Passengers Plot',
       x='Survived',
       y='Number of Passengers',
       fill='Survived')
ggsave('Survival Passengers.png', plot = surviver, dpi=300)


# Q2: Histogram and Box-plots for Age -----------------------------------------

# Age Distribution Histogram
age_hist <- ggplot(df, aes(x = Age)) +
  geom_histogram(binwidth = 5, fill = "skyblue") +
  labs(title="Passengers' Age Distribution", x="Age", y="Number of Passengers")
ggsave('Passengers Age Distribution.png', plot = age_hist, dpi=300)

# Age Distribution by Ticket Class Boxplot
age_box_class <- ggplot(df, aes(x=Pclass, y=Age, fill=Pclass)) +
  geom_boxplot() +
  labs(title='Age Distribution by Ticket Class',
       x='Ticket Class',
       y='Age')
ggsave('Age Distribution by Ticket Class.png', plot = age_box_class, dpi=300)

# Age Distribution by Survival Boxplot
age_box_survived <- ggplot(df, aes(x=Survived, y=Age, fill=Survived)) +
  geom_boxplot() +
  labs(title='Age Distribution by Survival',
       x='Survival',
       y='Age')
ggsave('Age Distribution by Survival.png', plot = age_box_survived, dpi=300)


# Q3: Fare Histogram and Number of People Not Paid ---------------------------

# Fare Distribution Histogram
fare_hist <- ggplot(df, aes(x = Fare)) +
  geom_histogram(binwidth = 10, fill = "skyblue") +
  labs(title="Passengers' Fare Distribution", x="Fare", y="Number of Passengers")
ggsave('Passengers Fare Distribution.png', plot = fare_hist, dpi=300)

# Number of People Not Paid Table
not_paid_table <- df %>%
  summarise(Unpaid = sum(Fare == 0),
            Paid = sum(Fare > 0))

# Q4: Family Size per Ticket Class Violin Plot -------------------------------
df <- df %>%
  mutate(FamilySize = SibSp + Parch + 1)

violin_plot <- ggplot(df, aes(x = Pclass, y = FamilySize, fill = Pclass)) +
  geom_violin(trim = FALSE) +
  labs(title = "Violin Plot of Family Size per Ticket Class",
       x = "Ticket Class",
       y = "Family Size",
       fill = "Class")
ggsave('Family Size per Ticket Class.png', plot = violin_plot, dpi=300)


# Q5: Survival differs for different gender and ticket class -----------------

surviver_gender <- ggplot(df, aes(x=Sex, fill=Survived)) +
  geom_bar(position="stack") +
  labs(title="Survivor by Gender")
surviver_gender
ggsave('Survival based on gender.png', plot = surviver_gender, dpi=300)

# Q6: A violin chart describing the survival rate based on age & sex
age_violin_gender <- ggplot(df, aes(x=Sex, y=Age, fill=Survived)) +
  geom_violin() +
  labs(title="Relationship between Age and Sex with Survival")
age_violin_gender
ggsave('Survival Rate relation to Age and Sex.png', plot = age_violin_gender, dpi=300)

# Q7: A violin chart describing the survival rate based on age and ticket class
age_violin_class <- ggplot(df, aes(x=Pclass, y=Age, fill=Survived)) +
  geom_violin(trim = FALSE) +
  labs(title="Relationship between Age and Ticket Class with Survival")
ggsave('Survival Rate relation to Age and Ticket Class.png', plot = age_violin_class, dpi=300)

