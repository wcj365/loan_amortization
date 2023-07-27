# Loan Amortization

## References:

- https://www.investopedia.com/terms/a/amortization.asp#toc-what-is-amortization
- https://www.bankrate.com/mortgages/amortization-calculator/
- https://www.bankrate.com/loans/personal-loans/how-to-calculate-loan-interest/
- https://www.calculator.net/loan-calculator.html

## Variable naming convention

- Upper-case letter represents constant value
- Lower-case letter represents derived value
- 
## Formula to calculate monthly loan payments

$m = P \\dfrac{R (1 + R)^N }{(1 + R)^N - 1}$

- $m$ = the monthly loan payment (principal + interest)
- $P$	= the principal loan amount (original)
- $R$	= the interest rate (monthly. annual rate devided by 12)
- $N$	= number of payments over the loan’s lifetime (loan years times 12)

## Formula to calculate interest payment for a given month

$interest = olb * R$

- $interest$ = interest payment
- $olb$ = outstanding loan balance at the end of last month
  
Note: Interest payment varies from month to month.

- Month 1
  - $interest01 = P * R$
  - $principal01 = m - interest01$
  - $olb01 = P - principal01$
- Month 2
  - $interest02 = $olb01 * R$
  - $principal02 = m - interest02$
  - $olb02 = olb01 - principal02$
- So on and so forth
  
