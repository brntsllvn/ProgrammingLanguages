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

fun date_is_in_month(year : int, month : int, day : int, month_number : int) =
      is_older(
	  (year, month, day),
	  (next_month(year, month_number, 1)))
      andalso is_older(
	  (prev_month(year, month_number, 31)),
	  (year, month, day))
	  
fun number_in_month(date_list : (int * int * int) list, month_number : int) =
  if null date_list then 0		     
  else if date_is_in_month(#1 (hd date_list), #2 (hd date_list), #3 (hd date_list), month_number) 
  then 1 + number_in_month(tl date_list, month_number)
  else 0 + number_in_month(tl date_list, month_number)

fun number_in_months(date_list : (int * int * int) list, month_list : int list) =
  if null month_list then 0
  else number_in_month(date_list, hd month_list) + number_in_months(date_list, tl month_list);

fun dates_in_month(date_list : (int * int * int) list, month_number : int) =
  if null date_list then []
  else if date_is_in_month(#1 (hd date_list), #2 (hd date_list), #3 (hd date_list), month_number)
  then hd date_list::dates_in_month(tl date_list, month_number)
  else dates_in_month(tl date_list, month_number);

fun dates_in_months(date_list : (int * int * int) list, month_list : int list) =
  if null month_list then []
  else dates_in_month(date_list, hd month_list) @ dates_in_months(date_list, tl month_list);

fun get_nth(string_list : string list, nth_item : int) =
  if null string_list then ""
  else if nth_item = 1 then hd string_list
  else get_nth(tl string_list, nth_item - 1);

fun find_month(month_no : int) =
  let
      val month_list = ["January", "February", "March", "April",
			"May", "June", "July", "August",
			"September", "October", "November", "December"]
  in
      get_nth(month_list, month_no)
  end;
      
fun date_to_string(year_no : int, month_no : int, day_no : int) =
  let
      val year  = Int.toString year_no;
      val month = find_month month_no;
      val day   = Int.toString day_no;
  in
      month ^ " " ^ day ^ ", " ^ year
  end;

fun number_before_reaching_sum(sum : int, int_list : int list) =
  if null int_list then 0
  else if sum - (hd int_list) > 0 then 1 + number_before_reaching_sum(sum - (hd int_list),tl int_list)	  
  else 0
      
fun what_month(day_of_year : int) =
  if      day_of_year >= 1   andalso day_of_year <= 31  then 1
  else if day_of_year >= 32  andalso day_of_year <= 59  then 2
  else if day_of_year >= 60  andalso day_of_year <= 90  then 3
  else if day_of_year >= 91  andalso day_of_year <= 120 then 4
  else if day_of_year >= 121 andalso day_of_year <= 151 then 5
  else if day_of_year >= 152 andalso day_of_year <= 181 then 6
  else if day_of_year >= 182 andalso day_of_year <= 212 then 7
  else if day_of_year >= 213 andalso day_of_year <= 243 then 8
  else if day_of_year >= 244 andalso day_of_year <= 273 then 9
  else if day_of_year >= 274 andalso day_of_year <= 304 then 10
  else if day_of_year >= 305 andalso day_of_year <= 334 then 11
  else if day_of_year >= 335 andalso day_of_year <= 365 then 12
  else 0
      
  

  
