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
