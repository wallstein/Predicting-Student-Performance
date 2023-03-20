# MSC-Final-Project
Repository for the Final Project in Modern Statistical Computing by Jonas Wallstein &amp; Martin Blasi

## Next ToDo
### Jonas 
- subsample improvement, auch mit subsample pass fail vergleichen
- Rmd files organisieren
- prediction anschauen
- clustering
### Martin
- portugisisch
- grade diff angucken
- clustering
- Email 

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
see Student Performance.Rmd

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
