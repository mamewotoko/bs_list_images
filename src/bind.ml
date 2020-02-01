open Webapi

(*
  https://developer.mozilla.org/en-US/docs/Web/API/XMLHttpRequest
 *)
   
module rec XMLHttpRequest:
sig
  type t
  external make: unit -> t = "XMLHttpRequest" [@@bs.new]

  external open_: t
                  -> meth:string
                  -> url:string
                  -> ?async:bool
                  -> ?user:string
                  -> ?password:string
                  -> unit
                  -> unit = "open" [@@bs.send]
  external send: t -> unit = "" [@@bs.send]

  (* TODO: handler takes progress event as its argument *)
  external onload: t -> (unit -> unit) -> unit = "" [@@bs.set]

  external readyState: t -> int = "" [@@bs.get]
  external responseText: t -> string Js.Nullable.t = "" [@@bs.get]
  (* TODO: add set, get *)
  external responseType: t -> string -> unit = "" [@@bs.set]
  external responseURL: t -> string Js.Nullable.t = "" [@@bs.get]
  external responseXML: t ->  Dom.Document.t Js.Nullable.t = "" [@@bs.get]
  (* unsigned short 16bit 0 - 65535 *)
  external status: t -> int = "" [@@bs.get]
  external statusText: t -> string = "" [@@bs.get]
end = XMLHttpRequest
