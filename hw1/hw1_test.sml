use "hw1.sml";

(*******************************************************************)
(*******************************************************************)
val q1 = "********** q1 **********";

(* left year < right year *)
val q1test1 = is_older((1,2,2),(2,2,2)) = true;
(* left year > right year *)
val q1test2 = is_older((2,2,2),(1,2,2)) = false;
(* left year = right year, left month < right month *)
val q1test3 = is_older((2,1,1),(2,2,1)) = true;
(* left year = right year, left month > right month *)
val q1test4 = is_older((2,2,1),(2,1,1)) = false;
(* left year = right year, left month = right month, left day < right day *)
val q1test5 = is_older((1,1,1),(1,1,2)) = true;
(* left year = right year, left month = right month, left day > right day *)
val q1test6 = is_older((1,1,2),(1,1,1)) = false;
(* left year = right year, left month = right month, left day = right day *)
val q1test7 = is_older((1,1,1),(1,1,1)) = false;
val test1 = is_older ((1,2,3),(2,3,4)) = true

(*******************************************************************)
(*******************************************************************)
val q2 = "********** q2 **********";

val q2test0 = number_in_month([],2) = 0;
val q2test1 = number_in_month([(1995,2,1)],2) = 1;
val q2test2 = number_in_month([(1995,1,31)],2) = 0;
val q2test3 = number_in_month([(1995,3,1)],2) = 0;
val q2test4 = number_in_month([(1995,2,1) ,(1999,2,1)] ,2) = 2;
val q2test5 = number_in_month([(1995,1,31),(1999,3,1)] ,2) = 0;
val q2test6 = number_in_month([(1995,2,1) ,(1999,3,1)] ,2) = 1;
val q2test7 = number_in_month([(1999,12,1),(1999,1,28)],2) = 0;
val q2test8 = number_in_month([(1999,12,1),(1999,1,28)],1) = 1;

val pm_test1 = prev_month((1999,1,1)) = (1998,12,1);
val pm_test2 = prev_month((1999,2,1)) = (1999,1,1);

val nm_test1 = next_month((1999,12,1)) = (2000,1,1);
val nm_test2 = next_month((1999,1,1)) = (1999,2,1);

val test2 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1
								
(*******************************************************************)
(*******************************************************************)
val q3 = "********** q3 **********";

val q3test0 = number_in_months([],[]) = 0;
val q3test1 = number_in_months([],[2]) = 0;
val q3test2 = number_in_months([(1999,12,31)],[]) = 0;
val q3test3 = number_in_months([(1999,2,1)],[2]) = 1;
val q3test4 = number_in_months([(1999,2,1),(1999,2,28)],[2]) = 2;
val q3test5 = number_in_months([(1999,2,1),(1999,2,28)],[2,3]) = 2;
val q3test6 = number_in_months([(1999,2,1),(1999,3,28)],[2,3]) = 2;
val q3test7 = number_in_months([(1999,12,1),(1999,1,28)],[2,3]) = 0;
val q3test8 = number_in_months([(1999,12,1),(1999,1,28)],[12,2]) = 1;
val test3 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3
											       
(*******************************************************************)
(*******************************************************************)
val q4 = "********** q4 **********";

val q4_test1 = dates_in_month([],1) = [];
val q4_test2 = dates_in_month([(1999,1,31)],1) = [(1999,1,31)];
val q4_test3 = dates_in_month([(1999,1,31)],2) = [];
val q4_test4 = dates_in_month([(1999,1,31),(1999,2,1)],2) = [(1999,2,1)];
val q4_test5 = dates_in_month([(1999,1,31),(1999,1,1)],1) = [(1999,1,31),(1999,1,1)];
val test4 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)];

(*******************************************************************)
(*******************************************************************)
val q5 = "********** q5 **********";

val q5_1 = dates_in_months([],[]) = [];
val q5_2 = dates_in_months([(1999,1,1)],[]) = [];
val q5_3 = dates_in_months([],[2]) = [];
val q5_4 = dates_in_months([(1999,1,31)],[1]) = [(1999,1,31)];
val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]
							       
(*******************************************************************)
(*******************************************************************)
val q6 = "********** q6 **********";

val q6_1 = get_nth([],1) = "";
val q6_2 = get_nth(["hi"], 1) = "hi";
val q6_3 = get_nth(["hi"], 2) = "";
val q6_4 = get_nth(["hi","bye"],2) = "bye";
val q6_5 = get_nth(["hi","bye"],3) = "";
val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"

(*******************************************************************)
(*******************************************************************)
val q7 = "********** q7 **********";

val h7_1  = find_month(1)  = "January";
val h7_2  = find_month(7)  = "July";
val h7_12 = find_month(12) = "December";

val q7_1 = date_to_string(1999, 1, 23) = "January 23, 1999";
val q7_2 = date_to_string(2016, 7, 3) = "July 3, 2016";
val test7 = date_to_string (2013, 6, 1) = "June 1, 2013"

(*******************************************************************)
(*******************************************************************)
val q8 = "********** q8 **********";

(* sum is positive *)
(* list has all positive ints *)
(* list always totals greater than sum *)
val q8_1 = number_before_reaching_sum(1,[]) = 0;
val q8_2 = number_before_reaching_sum(4,[2]) = 1;
val q8_3 = number_before_reaching_sum(4,[1,2]) = 2;
val q8_3 = number_before_reaching_sum(4,[1,2,3]) = 2;
val q8_4 = number_before_reaching_sum(4,[5]) = 0;

(*******************************************************************)
(*******************************************************************)
val q9 = "********** q9 **********";

val q9_1  = what_month(1)   = 1;
val q9_2  = what_month(31)  = 1;
val q9_3  = what_month(32)  = 2;
val q9_4  = what_month(59)  = 2;
val q9_4  = what_month(60)  = 3;
val q9_5  = what_month(90)  = 3;
val q9_6  = what_month(91)  = 4;
val q9_7  = what_month(120) = 4;
val q9_8  = what_month(121) = 5;
val q9_9  = what_month(151) = 5;
val q9_10 = what_month(152) = 6;
val q9_11 = what_month(181) = 6;
val q9_12 = what_month(182) = 7;
val q9_13 = what_month(212) = 7;
val q9_14 = what_month(213) = 8;
val q9_15 = what_month(243) = 8;
val q9_16 = what_month(244) = 9;
val q9_17 = what_month(273) = 9;
val q9_18 = what_month(274) = 10;
val q9_19 = what_month(304) = 10;
val q9_20 = what_month(305) = 11;
val q9_21 = what_month(334) = 11;
val q9_22 = what_month(335) = 12;
val q9_23 = what_month(365) = 12;


(*******************************************************************)
(*******************************************************************)
val q10 = "********** q10 **********";

val q10_1 = month_range(2,1) = [];
val q10_2 = month_range(1,1) = [1];
val q10_3 = month_range(1,9) = [1,1,1,1,1,1,1,1,1];
val test10 = month_range (31, 34) = [1,2,2,2];
val q10_4 = month_range(90,121) = [3,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,5]
				      
(*******************************************************************)
(*******************************************************************)
val q11 = "********** q11 **********";
