#!/usr/bin/env nix-shell
#! nix-shell -i amm -p ammonite-repl

import $ivy.`org.scalacheck:scalacheck_2.13:1.15.4`

org.scalacheck.Prop.forAll { x: Int => x < 100 }.check