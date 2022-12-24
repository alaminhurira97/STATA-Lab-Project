/*
This is my do file for Stata Lab Exam


By Md Al Amin

Last updated 12/01/2022


*/

cd "C:\Users\bentleylab\Desktop\Exam"

log using CARD_small

use dataset


set more off

codebook

*Summary Statistics for observations, more than 100 missing values for observations ,average years of schooling 
sum

*Summary Statistics for observations lived in region 7 in 1966
tab south66
*Summary Statistics for black
tab black

*Summary Statistics for lwage
sum wage

*Summary Statistics for the average wage for people older than 30
sum wage if age>30

*Summary Statistics for the average number of years of father’s schooling for people in this sample who are black
sum fatheduc if black==1

*Summary Statistics for the average number of years of father’s schooling for people in this sample who are NOT black
sum fatheduc if black==0

*histogram of hourly wage
histogram wage, xtitle(Wage) title(Histogram of Hourly Wage (in Cents, 1976))
graph export "C:\Users\bentleylab\Desktop\Exam\A histogram of hourly wage.png", as(png) replace
*	A bar chart of average IQ score by years of schooling in 1976  

graph bar (mean) IQ, over(educ) title(Average IQ Score by Years of Schooling in 1976)
graph export "C:\Users\bentleylab\Desktop\Exam\A bar chart of average IQ score by years of schooling in 1976  .png", as(png) replace

*A histogram of years of experience (exper) for people who are married in 1976 and enrolled in school in 1976
histogram exper if enroll==1 & married==1, xtitle(Years of Experience) title(Years of Experience) subtitle((for people who are married in 1976 and enrolled in school in 1976))
graph export "C:\Users\bentleylab\Desktop\Exam\A histogram of years of experience (exper) for people who are married in 1976 and enrolled in school in 1976.png", as(png) replace



log close
