#!/usr/bin/env python3


def monthly_payment(principal, annual_rate, num_years):

    monthly_rate = annual_rate / 12
    num_months = num_years * 12
    compounding_factor  = (1 + monthly_rate) ** num_months

    monthly_pmt = principal * monthly_rate * compounding_factor / (compounding_factor - 1)

    return monthly_pmt
  

def payment_schedule(principal, annual_rate, num_years):

    monthly_pmt = monthly_payment(principal, annual_rate, num_years)
    beginning_balance = principal
    
    pmt_schedule = []

    for month in range(1, num_years * 12 + 1):
        interest_pmt = beginning_balance * annual_rate / 12
        principal_pmt = monthly_pmt - interest_pmt
        pmt_schedule.append({month:(round(beginning_balance,2), round(principal_pmt, 2), round(interest_pmt, 2), round(beginning_balance - principal_pmt,2))})
        beginning_balance = beginning_balance - principal_pmt

    return pmt_schedule
