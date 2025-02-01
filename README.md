# mlir-playground

This is the code repository for experimenting with building an MLIR-based optimization toolchain for eBPF/XDP programming.

## Setup and build

For Mac users, the LLVM project is imported as a submodule in the `/externals` directory. Run the `mac-setup.sh` script to build the binaries needed for development. To ensure that the binaries are available for use, add the following line to your shell configuration (`.zshrc`):

```bash
export PATH="`pwd`/externals/llvm-project/llvm/build-release/bin:$PATH"
```

Alternatively, you can try using Homebrew to install the llvm project, but this build lags behind the latest MLIR developments by a lot. Use at your own risk.

For Linux (Ubuntu 20.04) users, see how to install the MLIR build system at the [tutorial](https://mlir.llvm.org/getting_started/). If on cloudlab, this has already been preinstalled for you at `/mydeps/llvm-project/`. To ensure that the binaries are available for use, add the following line to your shell configuration (`.bashrc`):

```bash
export PATH="/mydeps/llvm-project/build/bin:$PATH"
```

You can check that the correct binaries are being used by running `which mlir-opt`. For Cloudlab users, `which mlir-opt` should be prefixed with `/mydeps/`.

## Testing