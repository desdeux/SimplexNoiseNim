import unittest

import SimplexNoiseNim

test "1d Noise test":
  var noise = noise(0.123) # Get the noise value for the coordinate
  echo noise

