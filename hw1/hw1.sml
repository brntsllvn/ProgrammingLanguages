(* function should be called "right_is_older_than_left" *)
fun is_older((year1 : int, month1 : int, day1 : int),(year2 : int, month2 : int, day2 : int)) =
  if year1 > year2 then false
  else if year1 < year2 then true
  else (* year1 = year2 *)
      if month1 > month2 then false
      else if month1 < month2 then true
      else (* month1 = month2 *)
	  if day1 > day2 then false
	  else if day1 < day2 then true
	  else (* day1 = day2 *) false

fun prev_month((year : int, month : int, day : int)) =
  if month = 1 then (year - 1, 12, day)
  else (year, month - 1, day);

fun next_month((year : int, month : int, day : int)) =
  if month = 12 then (year + 1, 1, day)
  else (year, month + 1, day);
  		      
fun number_in_month(date_list : (int * int * int) list, monthNumber : int) =
  if null date_list then 0		     
  else
      let
	  val year  = #1 (hd date_list)
	  val month = #2 (hd date_list)
	  val day   = #3 (hd date_list)
      in
	  if is_older(
		  (year, month, day),
		  (next_month(year, monthNumber, 1)))
	     andalso is_older(
		 (prev_month(year, monthNumber, 31)),
		 (year, month, day))
	  then 1 + number_in_month(tl date_list, monthNumber)
	  else 0 + number_in_month(tl date_list, monthNumber)
      end

fun number_in_months(date_list : (int * int * int) list, month_list : int list) =
  if null month_list then 0
  else number_in_month(date_list, hd month_list) + number_in_months(date_list, tl month_list)
