# 💳 Credit Risk Default Prediction

> An end-to-end data science project to predict loan defaults using SQL, Python, and Machine Learning.

---

## 📌 Project Overview

Financial institutions lose billions every year to loan defaults. This project builds a **credit risk prediction model** that identifies high-risk borrowers before a loan is approved — using real-world data with 32,000+ loan records.

---

## 📊 Dataset

- **Source:** Kaggle — Credit Risk Dataset
- **Rows:** 32,414
- **Target Column:** `loan_status` → 0 = Paid Back, 1 = Defaulted
- **Default Rate:** 21.87%

| Column | Description |
|---|---|
| `person_age` | Age of the borrower |
| `person_income` | Annual income |
| `person_home_ownership` | RENT / OWN / MORTGAGE |
| `person_emp_length` | Employment length (years) |
| `loan_intent` | Purpose of loan |
| `loan_grade` | Loan quality grade (A–G) |
| `loan_amnt` | Loan amount requested |
| `loan_int_rate` | Interest rate (%) |
| `loan_status` | **Target** — 0: Paid, 1: Defaulted |
| `loan_percent_income` | Loan as % of income |
| `cb_person_default_on_file` | Previous default history (Y/N) |
| `cb_person_cred_hist_length` | Credit history length (years) |

---

## 🔍 Key Findings from EDA

| Insight | Finding |
|---|---|
| Default rate | **21.87%** (7,088 out of 32,414) |
| Avg loan — defaulters | **₹10,854** vs ₹9,239 for non-defaulters |
| Avg income — defaulters | **₹49,093** vs ₹70,844 for non-defaulters |
| Home ownership | Renters default **27x more** than owners (5,176 vs 192) |
| Interest rate | Defaulters have avg rate of **13.07%** vs 10.44% |
| Missing values | 887 nulls in `person_emp_length`, 3,092 in `loan_int_rate` |

---

## 🗂️ Project Structure

```
credit-risk-project/
├── data/
│   └── credit_risk_dataset.csv
├── sql/
│   └── fraud_eda.sql          
├── notebooks/
│   └── (coming soon)          ← Python EDA + ML model
└── README.md
```

---

## 🛠️ Tech Stack

| Tool | Purpose |
|---|---|
| PostgreSQL + DBeaver | Data loading & SQL EDA |
| Python (Pandas, NumPy) | Data cleaning & analysis |
| Scikit-learn | Machine learning model |
| Matplotlib / Seaborn | Visualizations |
| GitHub | Version control |

---

## 👤 Author

**Prabhu Mishra**
[GitHub](https://github.com/Prabhatmishra007) | [LinkedIn](https://www.linkedin.com/in/prabhat-mishra-ai/)
