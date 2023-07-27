# Author: Jay Wang


monthly_payment <- function(principal, annual_rate, num_years){

    monthly_rate <- annual_rate / 12
    num_months <- num_years * 12
    compounding_factor  <- (1 + monthly_rate) ** num_months

    monthly_pmt <- principal * monthly_rate * compounding_factor / (compounding_factor - 1)

    return (monthly_pmt)
}
  

payment_schedule <- function(principal, annual_rate, num_years){

    monthly_pmt <- monthly_payment(principal, annual_rate, num_years)

    pmt_schedule <- list()

    beginning_balance = principal

    for (month in 1:(num_years * 12)) {
      
        interest_pmt <- beginning_balance * annual_rate / 12
        principal_pmt <- monthly_pmt - interest_pmt
        
        current_month <- c(month, round(beginning_balance,digit=2), round(principal_pmt, digit=2), round(interest_pmt, digit=2), round(beginning_balance - principal_pmt,digit=2))
        print(current_month)
        append(pmt_schedule, current_month)
        print(pmt_schedule)
        beginning_balance <- beginning_balance - principal_pmt
  
    }

    return (pmt_schedule)
}
