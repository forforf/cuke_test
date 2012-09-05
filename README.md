cuke_test
=========

Minimal code to reproduce html formatting error in cucumber

To Reproduce
Run `cucumber -f html features`
The *Pass this test* scenario has a red background on its header indicating a failure.

Next, rename the `apass.feature` file to `pass.feature` file
Re-run `cucumber -f html features`
The *Pass this test* scenario now has a green on its header indiciating success (the expected result).