import pandas as pd
from pathlib import Path
root=Path(__file__).resolve().parents[1]
d=pd.read_csv(root/'data/ratings.csv')
assert len(d)==18 and list(d)==['State','Rating','Gender']
t=pd.crosstab(d.Gender,d.Rating)
print('Observations:',len(d));print('Counts by gender and rating:');print(t.to_string());print('Conditional row proportions:');print(t.div(t.sum(axis=1),axis=0).round(6).to_string())
assert abs(t.to_numpy().sum()-18)==0
