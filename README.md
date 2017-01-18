# Stair Injury Analysis

### Contributors
Levi Hassel

## Overview
Have you ever wondered the exact probability of someone going to the ER for falling down the stairs in a certain year of his or her life? ... Yeah, I didn't think so. Still, I decided to use numerical integration methods to analyze stair injuries and census data in order to answer this exact question. While this README will give you the gist of how to run the code, I **highly recommend** you read my [report](/report.pdf "Stair Injury Analysis Report") on this matter. It will clear up all of the details and contains some very interesting charts.

## Project Organization
There are three MATLAB programs: *sumOfRectangles.m*, *trapezoid.m* and *simpsons.m*. These are NOT general use functions. They are designed specifically for output in terms of this project; they do not return values, they only print off the answers. All solutions are multiplied by 100 in order to show them in terms of percentages, the way the report displays probability. For more info, check out the [full report](/report.pdf "Stair Injury Analysis Report").

## Requirements
You will need MATLAB. First, download this project and put all of the files into your working directory. Then open *stairs.m* and change the filepath in single quotes for both age and chance to your directory's filepath + `\injurydata.csv` and save the file.

## How to Run
Every function is of the form `function_name(f,a,b,h)` where:
 * f is the f(x) vector, containing probability values
 * a is the starting year
 * b is the ending year
 * h is the distance (in years) between each evaluated data point (must be at least 1)

Run each as `function_name(stairs.chance,a,b,h)` in the MATLAB command window using an a, b and h of your choice (note that h=1 will always be the most accurate option). For example, if you want to find the probability of someone going to the ER for a stair-related injury between the ages of 5 and 75 using the Trapezoid method, you would type `trapezoid(stairs.chance,5,75,1)`.

## References
See the [report](/report.pdf "Stair Injury Analysis Report").