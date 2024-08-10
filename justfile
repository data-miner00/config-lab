example:
  yaml-to-dhall --file yaml/docker-compose.yml
  dhall-to-yaml --file src/user.dhall
  dhall-to-json --file src/user.dhall
  dhall --file src/importing/imports.dhall
  dhall-to-json --file src/generate-users.dhall

nixfmt:
  alejandra flake.nix

search QUERY:
  lynx https://www.google.com/?q={{QUERY}}

# Template in dhall is just a string interpolated function
license:
  dhall text <<< './templates/wtfpl-license.dhall { year = 2024, copyrightHolder = "Shaun Chong", email = "mumk0313@gmail.com" }'
  dhall text <<< './templates/mit-license.dhall { year = 2024, copyrightHolder = "Shaun Chong" }'
