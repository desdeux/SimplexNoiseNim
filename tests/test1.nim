import unittest

import SimplexNoiseNim

test "1d Noise test":
  var noise = noise(0.123) # Get the noise value for the coordinate
  echo noise

test "2d Noise test":
  var noise = noise(0.123, 0.123) # Get the noise value for the coordinate
  echo noise

test "3d Noise test":
  var noise = noise(0.123, 0.123, 0.123) # Get the noise value for the coordinate
  echo noise
