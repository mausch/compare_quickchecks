#!/usr/bin/env nix-shell
#! nix-shell -p "haskellPackages.ghcWithPackages (pkgs: with pkgs; [ QuickCheck ])" -i runhaskell

import Test.QuickCheck

test :: Int -> Bool
test x = x < 100

main = quickCheck test