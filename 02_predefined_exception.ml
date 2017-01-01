let mf = Match_failure ("filename", 1, 1);;
(* (filename:string*lineno:int*columnoint)  *)

let af = Assert_failure ("filename", 1, 1);;
(* same to above *)

let ia = Invalid_argument "info";;

let f = Failure "info";;

let nf = Not_found;;

let oom = Out_of_memory;;

let so = Stack_overflow;;

let se = Sys_error "info";;
(* (string) *)

let eof = End_of_file;;

let dvz = Division_by_zero;;

let sbi = Sys_blocked_io;;
(* A special case of Sys_error raised when no I/O is possible on a non-blocking I/O channel. *)

let urm = Undefined_recursive_module ("filename", 1, 1);;
(* (filename:string,lineno:int,columno:int)  *)

