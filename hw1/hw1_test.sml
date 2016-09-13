use "hw1.sml";

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
