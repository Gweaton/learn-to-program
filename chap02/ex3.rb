#Age in seconds
age_in_years = 24
age_in_months = age_in_years * 12 + 4

seconds_in_day = 24 * 60 * 60
seconds_per_month = seconds_in_day * 31

rough_age_in_seconds = seconds_per_month * age_in_months
puts rough_age_in_seconds
#=>782092800
