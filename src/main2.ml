open Webapi
open Bind

let image_path = "/image"

let endswith str suffix =
  let strlen = String.length str in
  let suffixlen = String.length suffix in
  if strlen < suffixlen then
    begin
      Js.log false;
      false
    end
  else
    let str_suffix = String.sub str (strlen-suffixlen) suffixlen in
    Js.log [|"endswith "; str; suffix; string_of_int strlen; string_of_int suffixlen; str_suffix|];
    let result = String.compare str_suffix suffix = 0 in
    Js.log result;
    result
  
let main () =
  let xhr = XMLHttpRequest.make () in
  match Dom.Document.getElementById "target" Dom.document with
    None -> Js.log "image list not found "
  | Some list_element -> 
     let node = Dom.Element.asNode list_element in
     let handler = fun () ->
       Js.log "handler is called";
       let docopt = xhr
                    |> XMLHttpRequest.responseXML
                    |> Js.Nullable.toOption in
       match docopt with
         None -> Js.log "cannot get document";
       | Some doc ->
          doc
          |> Dom.Document.getElementsByTagName "a"
          |> Dom.HtmlCollection.toArray
          (* TODO add to list_element *)
          |> Array.iter (fun e ->
                 match Dom.Element.getAttribute "href" e with
                 | None -> Js.log "href not found"
                 | Some href ->
                    if List.exists (endswith href) [".jpg"; ".png"] then
                      let child = Dom.Document.createElement "img" Dom.document in
                      Dom.Element.setAttribute "src" (image_path^"/"^href) child;
                      Dom.Node.appendChild child node) in
     begin
       XMLHttpRequest.open_ xhr ~meth:"GET" ~url:image_path ~async:true ();
       XMLHttpRequest.responseType xhr "document";
       XMLHttpRequest.onload xhr handler;
       Js.log "send;";
       XMLHttpRequest.send xhr
     end
;;

