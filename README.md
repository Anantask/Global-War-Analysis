# Global-War-Analysis
Global Conflicts/War Analysis
Case Study 2: Global Conflict Analysis

###  Project Title
Global Conflict & Terrorism – EDA, SQL Analysis & Dashboard

### Project Objective
To analyse global conflict data from 1990–2023, identify regional hotspots, understand
attack patterns, and track how conflict has evolved over decades using Python, SQL and
Power BI.

### Tools & Technologies Used
1. **Python (Pandas, NumPy)** – Data cleaning, feature engineering, EDA
2. **Seaborn & Matplotlib** – Distribution and trend visualizations
3. **Folium** – Interactive geographic heatmap of conflict locations
4. **SQL** – Querying conflict patterns, casualty rankings, success rates
5. **Power BI** – Regional and yearly conflict dashboard

###  Data Overview
- 1,390+ conflict incidents across 1990–2023
- Key attributes: Year, Region, Country, Attack Type, Group Name, Killed, Wounded,
  Total Casualties, Target Type, Weapon Type, Success, Latitude, Longitude

### Analysis Performed

**1️ Univariate Analysis**
- Middle East and Africa have the highest incident counts
- Bombing/Explosion is the most frequent attack type

**2️ Bivariate Analysis**
- Incidents and casualties peaked between 2010–2017
- Bombing causes the highest average deaths per incident
- Hijacking and Assassination have the lowest success rates

**3️ Multivariate Analysis**
- Region × Decade heatmap shows Middle East spiking in the 2010s
- Africa shows consistently high activity across all decades

**4️ SQL Analysis**
- Top 10 countries by total casualties
- Success rate by attack type and weapon type
- Deadliest years ranked by total killed
- Decade-wise casualty trends

**5️ Geographic Map**
- Folium heatmap plotted using latitude/longitude — visual hotspot clusters
  clearly visible in Middle East, South Asia and parts of Africa

### Key Insights
- Middle East and Africa account for the majority of global conflict incidents
- Conflict peaked globally between 2010–2017 and declined post-2018
- Bombing is the deadliest and most common attack method
- Overall attack success rate is ~73% — most executed attacks succeed
- Civilians are the most frequent target type across all regions

### Business Outcomes
- Policy makers can identify highest-risk regions and decades
- Security analysts can prioritise attack types for prevention strategies
- Dashboard enables year-by-year and region-by-region drill-down

### What I Learned
- Writing analytical SQL queries on real-world event data
- Geographic visualisation using Folium heatmaps
- Decade-level trend analysis using pivot tables
- Combining Python + SQL + Power BI in one end-to-end project
