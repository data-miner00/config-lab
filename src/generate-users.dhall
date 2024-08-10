-- Dhall can import arbitraty codes via HTTP
let generate = https://prelude.dhall-lang.org/List/generate.dhall

let Config : Type =
    { home : Text
    , age : Natural
    , email : Text
    }

let makeUser = \(user : Text) -> \(age : Natural) ->
    let home = "/home/${user}"
    let age = age
    let email = "${user}@email.com"
    in { home, age, email }

let buildUser = \(index : Natural) ->
    makeUser "Jimmy-${Natural/show index}" (index + 20)

in generate 10 Config buildUser
