title ’Preference for Chocolate Candies’;
data choc;
input Chocolate $ 1-4 Center $ 6-10  Price comma5.3 Rating ;
datalines;
Dark Chewy 1.50     7
Dark Chewy 1.75     6
Dark Soft  1.50     6
Dark Soft  1.75     4
Milk Chewy 1.50     9
Milk Chewy 1.75     8
Milk Soft  1.50     9
Milk Soft  1.75     7
;
run;
proc print data=choc;
run;

proc transreg data=choc  utilities;
model identity(rating) = class (Chocolate Center Price   / zero=sum);
run;


