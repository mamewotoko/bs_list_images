(** This is BuckleScript + browserify sample which is used as JavaScript library *)

val hello : unit -> unit
(** example1: writes "hello world" to console. (console.log) *)
  
val visible_hello : unit -> unit
(** example2: displays alert dialog. Webapi sample *)

val hello_again : string -> unit
(** example3: add elmement [message] will be appended to text.*)
