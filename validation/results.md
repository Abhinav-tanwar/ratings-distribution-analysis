# Independent numerical validation

Computed directly from the repository CSV using Python, pandas, NumPy, and SciPy. This is independent numerical evidence, not a SAS execution log. Reproduce with `python -m pip install -r validation/requirements.txt` then `python validation/check_results.py`.

```text
Observations: 18
Counts by gender and rating:
Rating  A  B  C
Gender         
F       3  2  3
M       1  5  4
Conditional row proportions:
Rating      A     B      C
Gender                    
F       0.375  0.25  0.375
M       0.100  0.50  0.400
```
