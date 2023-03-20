# MSC-Final-Project
Repository for the Final Project in Modern Statistical Computing by Jonas Wallstein &amp; Martin Blasi

<<<<<<< Updated upstream
## Todo 

Jonas: 
=======
## Next ToDo
### Jonas 
>>>>>>> Stashed changes
- subsample improvement, auch mit subsample pass fail vergleichen
- Rmd files organisieren
- prediction anschauen
- clustering

<<<<<<< Updated upstream
Martin:
=======
### Martin
>>>>>>> Stashed changes
- portugisisch
- grade diff angucken
- clustering
- Email 

<<<<<<< Updated upstream

=======
## Struktur
### Part I: Modell-Annahmen prüfen: 
IM WESENTLICH GEHT ES UM DIE LINEARE REGRESSION

- Grade regression: linear => error normality + constant variance NICHT GEGEBEN!!
=>Robust standard errors
or poisson - error normality + constant variance & equidispersion auch NICHT GEGEBEN!!
=>ist quasi-poisson besser?

+ censored count data prüfen!! Wößmann Umgang mit student test outcomes

- Binary regression: error centered at zero - roughly given

### Part II: Explanation Teil weiter ausführen
+alles für Portugisiesch laufen lassen und vergleichen

-subsample: Grade-differences (G1 to G3), students who got worse/better (regressions);

pass/fail - different explanatory (factors)
+unter den, die bestehen, Arbeitszeit relativ zur Note vergleichen (Hypothese: Mathe=Talentfach, Sprache=Übungsfach)

Clustering? nach noten über die Perioden und ob die gruppen andere charakteristika haben
- G3-G1: new outcome, which factors matter here? e.g. paid classes

### Part III: Prediction Teil bauen
Prediction model: cross-validation and percent of mis-classification

-->random forest ausprobieren? wenn wir Zeit und Lust haben


## Data
### Variables
Attributes for both student-mat.csv (Math course) and student-por.csv (Portuguese language course) datasets:
1 school - student's school (binary: "GP" - Gabriel Pereira or "MS" - Mousinho da Silveira)\\
2 sex - student's sex (binary: "F" - female or "M" - male)
3 age - student's age (numeric: from 15 to 22)
4 address - student's home address type (binary: "U" - urban or "R" - rural)
5 famsize - family size (binary: "LE3" - less or equal to 3 or "GT3" - greater than 3)
6 Pstatus - parent's cohabitation status (binary: "T" - living together or "A" - apart)
7 Medu - mother's education (numeric: 0 - none,  1 - primary education (4th grade), 2 – 5th to 9th grade, 3 – secondary education or 4 – higher education)
8 Fedu - father's education (numeric: 0 - none,  1 - primary education (4th grade), 2 – 5th to 9th grade, 3 – secondary education or 4 – higher education)
9 Mjob - mother's job (nominal: "teacher", "health" care related, civil "services" (e.g. administrative or police), "at_home" or "other")
10 Fjob - father's job (nominal: "teacher", "health" care related, civil "services" (e.g. administrative or police), "at_home" or "other")
11 reason - reason to choose this school (nominal: close to "home", school "reputation", "course" preference or "other")
12 guardian - student's guardian (nominal: "mother", "father" or "other")
13 traveltime - home to school travel time (numeric: 1 - <15 min., 2 - 15 to 30 min., 3 - 30 min. to 1 hour, or 4 - >1 hour)
14 studytime - weekly study time (numeric: 1 - <2 hours, 2 - 2 to 5 hours, 3 - 5 to 10 hours, or 4 - >10 hours)
15 failures - number of past class failures (numeric: n if 1<=n<3, else 4)
16 schoolsup - extra educational support (binary: yes or no)
17 famsup - family educational support (binary: yes or no)
18 paid - extra paid classes within the course subject (Math or Portuguese) (binary: yes or no)
19 activities - extra-curricular activities (binary: yes or no)
20 nursery - attended nursery school (binary: yes or no)
21 higher - wants to take higher education (binary: yes or no)
22 internet - Internet access at home (binary: yes or no)
23 romantic - with a romantic relationship (binary: yes or no)
24 famrel - quality of family relationships (numeric: from 1 - very bad to 5 - excellent)
25 freetime - free time after school (numeric: from 1 - very low to 5 - very high)
26 goout - going out with friends (numeric: from 1 - very low to 5 - very high)
27 Dalc - workday alcohol consumption (numeric: from 1 - very low to 5 - very high)
28 Walc - weekend alcohol consumption (numeric: from 1 - very low to 5 - very high)
29 health - current health status (numeric: from 1 - very bad to 5 - very good)
30 absences - number of school absences (numeric: from 0 to 93)

These grades are related with the course subject, Math or Portuguese:
31 G1 - first period grade (numeric: from 0 to 20)
31 G2 - second period grade (numeric: from 0 to 20)
32 G3 - final grade (numeric: from 0 to 20, output target)

### Additional note: 
there are several (382) students that belong to both datasets . 
These students can be identified by searching for identical attributes that characterize each student, as shown in the annexed R file.

## Requirements final project 
-->should involve data analysis and R programming, using the methods seen in class. 
The project must feature a regression problem with multiple covariates, and must have at least one of the following features: 
• The outcome is a binary or count variable 
• The model includes non-linear covariate effects 
• The data and analysis method features a multi-level structure 

Make sure to discuss model checking, interactions and non-linearities, and whether it was necessary to use computational methods to obtain confidence intervals / P-values. 

You should turn in: 
(1) You should turn in a report in pdf, with no R code (see below for its format). If it contains animations, the format can be in html but its printed size (when saved via File-> Print to file) cannot exceed the page limit (9 pages)
(2) The markdown file with the R code used to produce the analyses 
(3) A short dashboard or interactive document in html format displaying your main results. It should be 1 pages with ≤ 3 tabs containing only a few key figures / tables. Also turn in the markdown file with the code used to produce the document 

- Final report due: March 23rd, 2023 
>>>>>>> Stashed changes
