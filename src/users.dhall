let makeUser = \(user : Text) ->
    let home = "/home/${user}"
    let age = 32
    let email = "${user}@email.com"
    in { home, age, email }
in  [ makeUser "Dan"
    , makeUser "Jimmy"
    ]
