use "hw1.sml";

val q2test1 = number_in_month([(1995,2,1)],2) = 1;
val q2test2 = number_in_month([(1995,1,31)],2) = 0;
val q2test3 = number_in_month([(1995,3,1)],2) = 0;

val find_month_test1 = find_month(1) = 1;
val find_month_test2 = find_month(0) = 12;
val find_month_test3 = find_month(12) = 12;
val find_month_test4 = find_month(13) = 1;

(*******************************************************************)
(*******************************************************************)

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

