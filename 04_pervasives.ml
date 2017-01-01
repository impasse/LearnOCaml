(* Comparisons *)

123 = 123;; (* true *)
(* e1 = e2 tests for structural equality of e1 and e2. Mutable structures (e.g. references and arrays) are equal if and only if their current contents are structurally equal, even if the two mutable objects are not the same physical object. Equality between functional values raises Invalid_argument. Equality between cyclic data structures may not terminate. *)

123 <> 123;; (* false,negation of (=) *)

124 > 123;; (* true *)

124 <= 123;; (* false *)

123 >= 123;; (* true *)

compare 123 125;; (* -1 *)

min 1 2;; (* 1 *)

max 1 2;; (* 2 *)

1 == 1;; (* true *)
(* e1 == e2 tests for physical equality of e1 and e2. On mutable types such as references, arrays, byte sequences, records with mutable fields and objects with mutable instance variables, e1 == e2 is true if and only if physical modification of e1 also affects e2. On non-mutable types, the behavior of ( == ) is implementation-dependent; however, it is guaranteed that e1 == e2 implies compare e1 e2 = 0. *)

1 != 1;; (* false, negation of (==) *)

(* Boolean operations *)

not true;; (* false *)

true && false (* false *)

false || true (* true *)

(* Composition operators *)
1 |> print_int;; (* 'a->('a->'b)->'b *)
print_int @@ int_of_string "hello" (* ('a->'b)->'a->'b, same as the ($) in haskell*)

succ 1;; (* 2 *)
pred 2;; (* 1 *)

3 iland 1;; (* 1, bitwise logical and *)
3 lor 1;; (* 3, bitwise logical or *)
3 lxor 1;; (* 2, bitwise logical xor *)
lnot 1;; (* -2, bitwise logical negation *)
(* (lsl),(lsr),(asr) same as java 's <<,>>,>>> *)

"hello" ^ "world";; (* "helloworld",string concat *)

ignore 123;; (* (), 'a->unit *)

fst (1,2);; (* 1 *)
snd (1,2);; (* 2 *)

exit 0;; (* exit with errorcode *)
at_exit fun ()-> ();; (* add exit hook *)

let i = ref 0;;

!i;; (* 0 *)
i := 1;; (* i.contents change to 1 *)
incr i;; (* incr i to 2 *)
decr i;; (* decr i to 1 *)

(* Exceptions *)

exception MyException;;

raise MyException;;

raise_notrace MyException;;
(* from 4.02.0 *)

invalid_arg "invalid_arg";;

failwith "failwith";;


