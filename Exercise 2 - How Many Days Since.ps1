function Count-DaysAlive {
  Param ([datetime]$Birthday = [datetime]"23-September-1977"
  )
  $Today = Get-Date
  $Age = ($Today - $Birthday
    )
  $DaysAlive = ($Age).days
  return "You've survived $DaysAlive days!"
}

Count-DaysAlive -Birthday "2 Dec 1991"

#Make a function to calculate my age, in days
#insert birthday as DD MMM YYYY
