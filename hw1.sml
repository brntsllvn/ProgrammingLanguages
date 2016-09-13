(* function should be called "right_is_older_than_left" *)
fun is_older((year1 : int, month1 : int, day1 : int),(year2 : int, month2 : int, day2 : int)) =
  if year1 > year2
  then false
  else if year1 < year2
  then true
  else (* year1 = year2 *)
      if month1 > month2
      then false
      else if month1 < month2
      then true
      else (* month1 = month2 *)
	  if day1 > day2
	  then false
	  else if day1 < day2
	  then true
	  else (* day1 = day2 *)
	      false;
      
