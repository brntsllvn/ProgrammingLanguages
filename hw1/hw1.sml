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

fun find_month(number : int) =
  if number = 13 then 1
  else if number = 0 then 12
  else number;
		      
fun number_in_month([(year : int, month : int, day : int)], monthNumber : int) =
  if is_older(
	  (year, month, day),
	  (year, find_month(monthNumber + 1), 1))
     andalso is_older(
	 (year, find_month(monthNumber - 1), 31),
	 (year, month, day))
  then 1
  else 0;
