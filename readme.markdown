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
```

