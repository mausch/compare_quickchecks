#!/usr/bin/env nix-shell
#! nix-shell -i python -p python3 python3Packages.hypothesis

from hypothesis import given
import hypothesis.strategies as st

@given(st.integers())
def test_ints(x):
  assert x < 100

if __name__ == "__main__":
  test_ints()