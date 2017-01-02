let empty = [];;

let one = 1::empty;;

let four = [1;2;3;4];;

List.length four;; (* 4 *)

List.cons 0 one;; (* [0;1] *)

List.hd four;; (* 1 *)

List.tl four;; (* [2;3;4] *)

List.nth four 0;; (* 1 *)

List.rev four;; (* [4;3;2;1] *)

List.append one four;; (* [1;1;2;3;4] *)

List.rev_append four one;; (* [4; 3; 2; 1; 1] *)

List.concat [[1;3;5];[2;4;6]];; (* [1;3;5;2;4;6] *)

List.iter print_int four;;

List.iteri (fun index value -> () ) four;;

List.map (fun x->x*x) four;;

List.mapi (fun index value -> index * value) four;;

List.rev_map (fun x->x*x) four;;

List.fold_left ( + ) 0 four;;

List.fold_right ( + ) four 0;;

List.iter2 (fun a b-> print_int @@ a*b ) [1;3;5] [2;4;6];;

List.map2 (fun a b-> a*b ) [1;3;5] [2;4;6];;

List.rev_map2 (fun a b-> a*b ) [1;3;5] [2;4;6];;

List.fold_left2 (fun a b c-> a+b*c) 0 [1;3;5] [2;4;6];;

List.fold_right2 (fun a b c-> c+a*b) [1;3;5] [2;4;6] 0;;

List.for_all (fun x->x>2) [1;2;3];; (* false *)

List.exists (fun x->x>2) [1;2;3];; (* true *)

List.for_all2 (fun a b-> a*b > 4) [1;2] [2;3];; 

List.exists2 (fun a b-> a*b > 4) [1;2] [2;3];;

List.mem 1 [1;2;3];; (* true *)

List.memq 1 [1;2;3];;

List.find (fun a->a>2) [1;2;4];; (* 4 *)

List.filter (fun a->a>2) [1;3;4];; (* [3;4] *)

List.find_all (fun a->a>2) [1;3;4];;

List.partition (fun a->a>2) [1;3;4;6];; (* ([3; 4; 6], [1]) *)

List.assoc 2 [1,'a';2,'b'];; (* 'b' *)

List.assq 2 [1,'a';2,'b'];; (* 'b' *) (* physical equality *)

List.mem_assoc 2 [1,'a';2,'b'];; (* true *)

List.mem_assq 2 [1,'a';2,'b'];; (* true *)

List.remove_assoc 2 [1,'a';2,'b'];; (* [(1, 'a')] *)

List.remove_assq 2 [1,'a';2,'b'];; (* [(1, 'a')] *)

List.split [1,'a';2,'b'];; (* ([1; 2], ['a'; 'b']) *)

List.combine [1; 2] ['a'; 'b'];; (* [(1, 'a'); (2, 'b')] *)

List.sort (fun a b-> a-b) [3;1;2;111;34;4234;313;1;44];; (* [1; 1; 2; 3; 34; 44; 111; 313; 4234] *)

List.stable_sort (fun a b-> a-b) [3;1;2;111;34;4234;313;1;44];; (* [1; 1; 2; 3; 34; 44; 111; 313; 4234] *)

List.fast_sort (fun a b-> a-b) [3;1;2;111;34;4234;313;1;44];; (* [1; 1; 2; 3; 34; 44; 111; 313; 4234] *)

List.sort_uniq (fun a b-> a-b) [3;1;2;111;34;4234;313;1;44];; (* [1; 2; 3; 34; 44; 111; 313; 4234] *)

List.merge (fun a b-> a-b) [1;3;5] [2;4;6];; (* [1; 2; 3; 4; 5; 6] *)