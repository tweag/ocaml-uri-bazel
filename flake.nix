{
  description = "OCaml: tezos";

  inputs.obazl.url = github:tek/rules_ocaml;

  outputs = { obazl, ... }:
  let
    extraInputs = p: [
    ];

    depsOpam = [
      "angstrom"
      "crowbar"
      "ounit"
      "ppx_deriving"
      "ppx_sexp_conv"
      "ppxlib"
      "re"
      "sexplib"
      "stringext"
    ];

  in obazl.flakes { inherit extraInputs depsOpam; switch = "4.12"; compiler = "ocaml-base-compiler.4.12.0"; };
}
