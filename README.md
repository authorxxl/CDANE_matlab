# CDANE_matlab
code of CDANE
step 1:
The code for calculating SA similarity is comeneighbor.m. In order to save time, the similarity matrix of the five data sets 
in the article is saved in the CDANE folder. It can be called directly in AANE_fun.m.
step 2:
Run Runtest.m
Step 3:
Run qqq.m to get the two candidate community values A_high and B_high, respectively run testq.m with A_high and B_high as K values,
and get k corresponding to the larger value.
Step 4:
Run Runtest.m and set k to the community value obtained above.
