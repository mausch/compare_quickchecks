#!/usr/bin/env -S nix run -f channel:nixpkgs-unstable dotnet-sdk_5 -c dotnet fsi
#r "nuget: FsCheck, 2.16.0"

FsCheck.Check.Quick (fun (x: int) -> x < 100)
