let Config : Type =
    { home : Text
    , age : Natural
    , email : Text
    }

let makeUser : Text -> Config = \(user : Text) ->
    let home : Text = "/home/${user}"
    let age : Natural = 32
    let email : Text = "${user}@email.com"
    let config : Config = { home, age, email }

    in config

-- I am using the same schema but defined in another file
let configs : List ./schema.dhall =
    [ makeUser "Dan"
    , makeUser "Jimmy"
    ]
in configs
