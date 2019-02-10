# SimplexNoiseNim

## About Perlin's "Simplex" Noise

- Perlin's "Classic" Noise (1984) is an algorithm producing pseudo-random fluctuations
  simulating natural looking variations, producing paterns all of the same size.
  It is a kind of gradiant-noise algorithm, invented by Ken Perlin while working
  on visual special effects for the Tron movie (1982).
  It works by interpolating pseudo-random gradiants defined in a multi-dimensionnal grid.
  [Ken Perlin original references](http://mrl.nyu.edu/~perlin/doc/oscar.html)
- Perlin's "Improved" Noise (2002) switches to a new interpolation fonction with
  a 2nd derivative zero at t=0 and t=1 to remove artifacts on integer values,
  and switches to using predefined gradients of unit lenght to the middle of each edges.
  [Ken Perlin original references](http://mrl.nyu.edu/~perlin/paper445.pdf)
- Perlin's "Simplex" Noise (2001) rather than placing each input point into a cubic grid,
  based on the integer parts of its (x,y,z) coordinate values, placed them onto a simplicial grid
  (think triangles instead of squares, pyramids instead of cubes...)
  [Ken Perlin original references](http://www.csee.umbc.edu/~olano/s2002c36/ch02.pdf)

## Coherent noise

A coherent noise is a type of smooth pseudorandom noise with following properties:.
- same input will always return the same output.
- small change of the input will produce small change of the output.
- large change of the input will produce random change of the output.

## Fractal noise / Fractional Brownian Motion

Fractional Brownian Motion (fBm) is the summation of successive octaves of coherent noise,
each with higher frequency and lower amplitude.

- Frequency of an octave of noise is the "width" of the pattern
- Amplitude of an octave of noise it the "height" of its feature
- Lacunarity specifies the frequency multipler between successive octaves (typically 2.0).
- Persistence is the loss of amplitude between successive octabes (usually 1/lacunarity).

2D image of fractal noise with 7 octaves of 2D Simplex Noise (from [SimplexNoiseCImg example project](https://raw.githubusercontent.com/SRombauts/SimplexNoiseCImg)):
![1 octave of 2D Simplex Noise](Screenshots/Simplex2D-7octaves.png)