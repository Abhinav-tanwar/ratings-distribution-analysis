/* Ratings Distribution Analysis */
%require_input(ratings.csv);
data ratings;
  length State $2 Rating $8 Gender $8;
  infile "&project_root./data/ratings.csv" dsd dlm=',' firstobs=2 truncover;
  input State $ Rating $ Gender $;
run;
proc contents data=ratings; run;
proc freq data=ratings;
  tables State Gender Rating / missing nocum;
  title 'Marginal distributions';
run;
proc freq data=ratings;
  tables Gender*Rating / missing;
  title 'Joint counts and distributions';
run;
proc freq data=ratings;
  tables Gender*Rating / norow nocol missing;
  title 'Joint distribution: percent of all observations';
run;
/* Row percentages answer P(Rating | Gender). */
proc freq data=ratings;
  tables Gender*Rating / nocol nopercent missing;
  title 'Conditional distribution of ratings within gender';
run;
