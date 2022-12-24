/*
This is my do file for Summary Statistics and Basic Figures

By Md Al Amin

Last updated 11/22/2022


*/


cd "C:\Users\bentleylab\Desktop\HW"

log using testscores

use testscores_data


set more off

codebook

*Summary Statistics of race
tab race

*histogram of household income
histogram hh_income, ytitle(Density) xtitle(HOUSEHOLD INCOME (DOLLARS)) title(Histogram of Household Income)
graph export "C:\Users\bentleylab\Desktop\HW\histogram_household_income.png", as(png) replace

*bar chart of average math test scores by race
graph bar (mean) math_score, over(race) ytitle(Math Score (in percent)) title(Average Math Test Scores of Students by Race)
graph export "C:\Users\bentleylab\Desktop\HW\bar_chart_average_math_test_scores_by_race.png", as(png) replace

*bar chart of average reading test scores by gender
graph bar (mean) reading_score, over(gender) ytitle(Reading Score (in percent)) title(Average Reading Test Scores of Students by Gender)
graph export "C:\Users\bentleylab\Desktop\HW\bar_chart_average_reading_test_scores_by_gender.png", as(png) replace

*histogram of math test scores for Black female students
histogram math_score if race==2&gender==1, ytitle(Density) xtitle(Math Scores (in percent)) title(Histogram of Math Test Scores for Black Female Students)
graph export "C:\Users\bentleylab\Desktop\HW\histogram_math_test_scores_for_Black_female_students.png", as(png) replace

*histogram of reading test scores for students from a household with an income less than $50,000.
histogram reading_score if hh_income<50000, ytitle(Density) xtitle(Reading Test Scores for Students (in percent)) title(Histogram of Reading Test Scores) subtitle(for Students with HH Income < $50000)
graph export "C:\Users\bentleylab\Desktop\HW\histogram_reading_test_scores_for_students_from_a_household_with_an_income_less_than_$50,000.png", as(png) replace



log close
