# Sokol

[Sokol](https://github.com/floooh/sokol) bindings for the Jai language.

# Building

```sh
git clone --recursive https://github.com/judah-caruso/jai-sokol Sokol
cd Sokol && jai generate.jai - make-lib
```

Sokol can be configured by modifying `LIB_CONFIG` in `generate.jai`

To compile the library (required for binding) and create bindings:
```sh
jai generate.jai - make-lib
```

To generate debug information:
```sh
jai generate.jai - make-lib debug
```

# Usage

See: `examples/`

By default, Sokol modules are opt-in:

```cpp
// To only use App and GFX:
#import "Sokol"(USE_APP=true, USE_GFX=true);
```
