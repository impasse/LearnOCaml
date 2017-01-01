let i:int = 123;;

let c:char = 'c';;

let b:bytes = Bytes.create 10;;

let s:string = "string";;

let f:float = 100.;;

let b:bool = true;;

let u:unit = ();;

exception AException;;
let e:exn = AException;;

let a:int array = [|1;2;3|];;

let l:int list = [1;2;3];;

let o:int option = Some 123;;

let i32:int32 = Int32.zero;;

let i64:int64 = Int64.zero;;

let ni:nativeint = Nativeint.of_int 123;;

let lz:int lazy_t = lazy 123;;
