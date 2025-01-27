# mlir-playground

This is the code repository for experimenting with building an MLIR-based optimization toolchain for eBPF/XDP programming.

## Setup and build

For Mac users, install the LLVM project using `brew install llvm`. You may need to add the following lines to your shell configuration (`.zshrc`) to avoid conflict with Apple's XCode LLVM install:

```bash
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
```

For Linux (Ubuntu 20.04) users, see how to install the MLIR build system at the [tutorial](https://mlir.llvm.org/getting_started/). If on cloudlab, this has already been preinstalled for you at `/mydeps/llvm-project/`. To ensure that the binaries are available for use, add the following line to your shell configuration (`.bashrc`):

```bash
export PATH="/mydeps/llvm-project/build/bin:$PATH"
```

You can check that the correct binaries are being used by running `which mlir-opt`. For Mac with a homebrew install, the path should be prefixed with `/opt/homebrew/`. For Cloudlab users, `which mlir-opt` should be prefixed with `/mydeps/`. 
