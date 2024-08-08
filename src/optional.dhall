{-
Let say we have Json that have optional field, we need to use "Some"

[
  {
    "name": "Jason",
    "isSmart": true
  },
  {
    "name": "Sam"
  }
]

-}

[ { name = "Jason"
  , isSmart = Some True
  }
, { name = "Sam"
  , isSmart = None Bool
  }
]
