(* example1 *)
let hello () =
  Js.log "hello world"

(* example2: displays alert dialog. Webapi sample *)
open Webapi
let visible_hello () =
  Dom.Window.alert "hello world!!!" Dom.window

(* example3: add elmement [message] will be appended to text.*)
let hello_again message =
  match Dom.document |> Dom.Document.getElementById "maindiv" with
    None -> raise Not_found
  | Some e ->
     e |> Dom.Element.asNode |. Dom.Node.setTextContent ("Hello in div " ^ message)
