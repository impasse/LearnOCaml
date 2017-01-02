type user = { name:string; gender:bool; };;

let inst = { name="aimy"; gender=false };;

let name  = inst.name;;

let updated = { inst with gender=true };;

type 'a timestamped = { item: 'a; time: Time.t };; (* polymorphic type *)

let show_name (n:user) = print_string n.name;;

let show_name_pattern { name=n; gender=g } = print_string n;;

let show_nanme_pattern_short {name; _ } = print_string name;;

type can_mut = { mutable value:int };;

let mut_inst = { value=123 };;

let mut_it i = i.value <- 321;;
