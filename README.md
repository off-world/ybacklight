# Adjust screen brightness

`ybacklight` as a successor to `xbacklight` fixes brightness control on intel devices when using the X.org modesetting driver.

This fork adds boundary checks so the brightness level will not become 0 or larger than 100% and
introduces a Makefile supporting staged installs more easily.

## Arguments
- -get: Get current brightness
- -set x: Set brightness to x%
- -inc x: Increase brightness by x%
- -dec x: Decrease brightness by x%

