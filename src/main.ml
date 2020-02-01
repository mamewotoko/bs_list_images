open Webapi

(* external make: float -> float -> float -> string -> t = "Euler" [@@bs.new] [@@bs.module "three"] *)
(* style1: map to ocaml class *)
   
module rec XMLHttpRequest:
sig
  class type _xmlhttprequest =
    object
      (* TODO support get? *)
      (* method onreadystatechange: eventhandler [@@bs.set] *)
      (* unsigned short 16bit 0 - 65535 *)
      method readyState: int [@@bs.get]
      method responseText: string [@@bs.get]
      method responseURL: string Js.Nullable.t [@@bs.get]
      method responseXML: Dom.Document.t [@@bs.get]
      (* unsigned short 16bit 0 - 65535 *)
      method status: int [@@bs.get]
      method statusText: string [@@bs.get]

      (* labelled argument is no supported yet *)
      method open_: string (* method *)
                    -> string (* url *)
                    -> bool (* async *)
                    -> string (* user *)
                    -> string (* passowrd *)
                    -> unit
    end [@bs]
  type t = _xmlhttprequest Js.t

  external make: unit ->  t = "XMLHttpRequest" [@@bs.new]
end = XMLHttpRequest
   
let image_directory = "./image"

                        (* method or bs.send*)
                        
(* let get_images path f =
 *   let req = XMLHttpRequest.make () in *)
(* let hello_again message =
 *   match Dom.document |> Dom.Document.getElementById "maindiv" with
 *     None -> raise Not_found
 *   | Some e ->
 *      e |> Dom.Element.asNode |. Dom.Node.setTextContent ("Hello in div " ^ message) *)
