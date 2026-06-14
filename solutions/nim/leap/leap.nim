func isLeapYear*(year: int): bool =
   year %% 100 == 0 and year %% 400 == 0 or
       year %% 100 != 0 and year %% 4 == 0
