module Program

open Freya.Core
open Suave

[<EntryPoint>]
let main argv =
    let myCfg = {
        defaultConfig with
            bindings = [ HttpBinding.createSimple HTTP "0.0.0.0" 8888 ]
    }

    startWebServer
        myCfg
        (Owin.OwinApp.ofAppFunc "/" (OwinAppFunc.ofFreya Api.root))

    0
