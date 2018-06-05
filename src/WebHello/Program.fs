module Program

open Freya.Core
open Suave

[<EntryPoint>]
let main argv =
    startWebServer
        defaultConfig
        (Owin.OwinApp.ofAppFunc "/" (OwinAppFunc.ofFreya Api.root))

    0
