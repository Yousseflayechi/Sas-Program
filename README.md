# Student Data Analysis in SAS

This project demonstrates a series of SAS procedures to analyze a dataset of students (`eleves`) using both statistical modeling and visual exploration techniques.

## 📁 Project Overview

The dataset includes basic attributes for 5 students:
- Name (`nom`)
- Gender (`sexe`)
- Age (`age`)
- Height (`taille`)
- Weight (`poids`)

The analysis includes:
- Regression modeling
- Prediction and residuals
- Data visualization
- Basic statistical plots

---

## 🧮 Dataset Definition (Q1)

The dataset is created manually using a `DATA` step:

```sas
DATA eleves;
  INPUT nom $ sexe $ age taille poids;
  DATALINES;
Albert M 14 155 52.5
Marc M 13 145 50.0
Louis M 15 132 35.5
Valérie F 12 126 28.7
Mélanie F 14 138 35.2
;
RUN;
