# Sokol

[Sokol](https://github.com/floooh/sokol) bindings for the Jai language.

# Building

```sh
git clone --recursive https://github.com/judah-caruso/jai-sokol Sokol
cd Sokol/win && build.bat
```

Sokol can be configured by modifying the `Sokol/c/config.inc` file.

# Usage

See: `examples/`

```c
// Import everything
#import "Sokol";

// Import specific "submodules" of Sokol
#import "Sokol"(.App | .Time); // Would only import sokol_app and sokol_time
                               // See notes below.
```

# Notes

[1] Due to a possible bug, importing "submodules" doesn't work as intended right now.
The current workaround is something like: `#import "Sokol"(xx 0x1 | 0x4);` where `0x1` and `0x4` are the values of `.App` and `.Time` in `module.jai`. Once this is fixed, the original usage code should work as-is.