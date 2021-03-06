Calculator for BMI - Body Mass Index 
========================================================
author: Sivarajan N. 
date: Sep 21, 2014

Developing Data Products - Coursera Project
--------------------------------------------------------


Body Mass Index (BMI)
========================================================

**What is BMI?**

The body mass index (BMI), or Quetelet index, is a measure of relative weight based on an average adult men and women's mass and height. The Body Mass Index (BMI) is a measure of body fat based on height and weight that applies to individuals. The BMI is used in a wide variety of contexts as a simple method to assess how much an individual's body weight departs from what is normal or desirable for a person of his or her height. 

Regarding the BMI measure, the World Health Organization (WHO) proposes the following classification:

- BMI <18.5 : Underweight
- BMI [18.5-24.9] : Normal weight
- BMI [25-29.9] : Overweight
- BMI >=30 : Obesity

Calculate BMI
========================================================

How do we calculate BMI?
There is a formula for calculating the BMI measure. The formula is the following:
BMI = weight(kg) / height(metres)2
Thus for the next example, the BMI will be:


```r
weight = 70
height = 1.8
BMI <- weight/height^2
BMI
```

```
[1] 21.60494
```

BMI Diagnostics
========================================================

The function we use for calculating the diagnostic is the following:


```r
diagnostic_f <- function(weight, height) {
    BMI_value <- weight/(height^2)
    ifelse(BMI_value < 18.5, "underweight", ifelse(BMI_value < 25, "normal weight", 
        ifelse(BMI_value < 30, "overweight", "obesity")))
}
```


Summary
========================================================
The medical establishment has acknowledged shortcomings of BMI. Because the BMI depends upon weight and the square of height, it ignores basic scaling laws whereby mass increases to the 3rd power of linear dimensions. Hence, larger individuals, even if they had exactly the same body shape and relative composition, always have a larger BMI.

The BMI is a relatively easy, cheap and non-invasive method for establishing weight status, and for most people, it correlates reasonably well with their level of body fat.

However, BMI is only a proxy for body fatness. other factors such as fitness, ethnic origin and puberty can alter the relation between BMI and body fatness and must be taken into consideration.
