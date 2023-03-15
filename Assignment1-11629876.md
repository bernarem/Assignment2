INFO 3010 - Assignment 1
================

## by Lingzi Hong

### Instructions

1.  This is an R Markdown format used for publishing markdown documents
    to GitHub. When you click the **Knit** button all R code chunks are
    run and a markdown file (.md) suitable for publishing to GitHub is
    generated.
2.  Submit this downloaded completed R markdown file in the assignment
    on Canvas. Make sure when you save that you have run all cells, so
    the outputs displace between the cells.
3.  make sure to replace the directoryID in the filename with your
    student ID.

### Q1: Compute the following values. Write code in the below chunks. (5pts)

1)  Square root of 28 (2pts)

``` r
sqrt(28)
```

    ## [1] 5.291503

3)  Round to two decimal places for pi, i.e, 3.1415926… (3pts)

``` r
round(3.1415926, 2)
```

    ## [1] 3.14

### Q2: Create the following vectors. a = (5, 10, 15, 20, 70, 120), b = (-7, 6, 18, 3, 58, -56). (10pts)

1)  create a vector c, which is add results of vector a and b (3pts)

``` r
a <- c(5, 10, 15, 20, 70, 120)
b <- c(-7, 6, 18, 3, 58, -56)
c <- c(a,b)
```

2)  get the 3rd and 5th element of c (3pts)

``` r
c[c(3,5)]
```

    ## [1] 15 70

3)  how many elements of c are greater than 30 (4pts)

``` r
c[c>30]
```

    ## [1]  70 120  58

### Q3: Create the following vectors with seq or rep (10pts)

1)  c(1,2,3,4,1,2,3,4) (5pts)

``` r
x <- c(rep(1:4, times = 2))
x
```

    ## [1] 1 2 3 4 1 2 3 4

1)  c(1,1,3,3,5,5,7,7) (5pts)

``` r
y <- rep(c(1,3,5,7),each=2)
y
```

    ## [1] 1 1 3 3 5 5 7 7

### Q4: Create a vector which contains 10 random integer values between -20 and +30. (5pts)

``` r
z = sample(-20:30, 10)
z
```

    ##  [1] -18  14 -11 -12  -6  18   3  28  24  17

### Q5: Get the maximum and minumum value of a vector c(3,-5,8,12,4,2,1,7). (5pts)

``` r
d <- c(3,-5,8,12,4,2,1,7)
#maximum value of a vector
max(d)
```

    ## [1] 12

``` r
#minimum value of a vector
min(d)
```

    ## [1] -5

### Q6: Write a R program to print the numbers from 1 to 50 and print “Fizz” for multiples of 3, print “Buzz” for multiples of 5, and print “FizzBuzz” for multiples of both. (5pts)

``` r
numbers <- 1:50
for (i in numbers) {
  if (i %% 3 == 0 & i %% 5 == 0) {
    print("FizzBuzz")
  } else if (i %% 3 == 0) {
    print("Fizz")
  } else if (i %% 5 == 0) {
    print("Buzz")
  } else {
    print(i)
  }
}
```

    ## [1] 1
    ## [1] 2
    ## [1] "Fizz"
    ## [1] 4
    ## [1] "Buzz"
    ## [1] "Fizz"
    ## [1] 7
    ## [1] 8
    ## [1] "Fizz"
    ## [1] "Buzz"
    ## [1] 11
    ## [1] "Fizz"
    ## [1] 13
    ## [1] 14
    ## [1] "FizzBuzz"
    ## [1] 16
    ## [1] 17
    ## [1] "Fizz"
    ## [1] 19
    ## [1] "Buzz"
    ## [1] "Fizz"
    ## [1] 22
    ## [1] 23
    ## [1] "Fizz"
    ## [1] "Buzz"
    ## [1] 26
    ## [1] "Fizz"
    ## [1] 28
    ## [1] 29
    ## [1] "FizzBuzz"
    ## [1] 31
    ## [1] 32
    ## [1] "Fizz"
    ## [1] 34
    ## [1] "Buzz"
    ## [1] "Fizz"
    ## [1] 37
    ## [1] 38
    ## [1] "Fizz"
    ## [1] "Buzz"
    ## [1] 41
    ## [1] "Fizz"
    ## [1] 43
    ## [1] 44
    ## [1] "FizzBuzz"
    ## [1] 46
    ## [1] 47
    ## [1] "Fizz"
    ## [1] 49
    ## [1] "Buzz"

### Q7. Write a R program to get the unique characters of the string “This is a challenging question”. (Whitespace can be counted as a unique character) (10pts)

``` r
#defining the string
string <- "This is a challenging question"
#getting the unique characters
unique_charc <- unique(strsplit(string, "")[[1]])
unique_charc
```

    ##  [1] "T" "h" "i" "s" " " "a" "c" "l" "e" "n" "g" "q" "u" "t" "o"
