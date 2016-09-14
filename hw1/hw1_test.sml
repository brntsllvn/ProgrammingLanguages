use "hw1.sml";

(*******************************************************************)
(*******************************************************************)
val q3 = "********** q3 **********";

(* nothing *)
val q3test0 = number_in_months([],[]) = 0;
val q3test1 = number_in_months([],[2]) = 0;
val q3test2 = number_in_months([(1999,12,31)],[]) = 0;

val q3test3 = number_in_months([(1999,2,1)],[2]) = 1;
val q3test4 = number_in_months([(1999,2,1),(1999,2,28)],[2]) = 2;
val q3test5 = number_in_months([(1999,2,1),(1999,2,28)],[2,3]) = 2;
val q3test6 = number_in_months([(1999,2,1),(1999,3,28)],[2,3]) = 2;
val q3test7 = number_in_months([(1999,12,1),(1999,1,28)],[2,3]) = 0;
val q3test8 = number_in_months([(1999,12,1),(1999,1,28)],[12,2]) = 1;

(*******************************************************************)
(*******************************************************************)
val q2 = "********** q2 **********";

(* no date *)
val q2test0 = number_in_month([],2) = 0;
(* one date *)
val q2test1 = number_in_month([(1995,2,1)],2) = 1;
val q2test2 = number_in_month([(1995,1,31)],2) = 0;
val q2test3 = number_in_month([(1995,3,1)],2) = 0;
(* two dates *)
val q2test4 = number_in_month([(1995,2,1) ,(1999,2,1)] ,2) = 2;
val q2test5 = number_in_month([(1995,1,31),(1999,3,1)] ,2) = 0;
val q2test6 = number_in_month([(1995,2,1) ,(1999,3,1)] ,2) = 1;
val q2test7 = number_in_month([(1999,12,1),(1999,1,28)],2) = 0;
val q2test8 = number_in_month([(1999,12,1),(1999,1,28)],1) = 1;

val pm_test1 = prev_month((1999,1,1)) = (1998,12,1);
val pm_test2 = prev_month((1999,2,1)) = (1999,1,1);

val nm_test1 = next_month((1999,12,1)) = (2000,1,1);
val nm_test2 = next_month((1999,1,1)) = (1999,2,1);

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

