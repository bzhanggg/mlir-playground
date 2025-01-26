# mlir-playground

This is the code repository for experimenting with building an MLIR-based optimization toolchain for eBPF/XDP programming.

## Setup and build

For Mac users, install the LLVM project using `brew install llvm`. You may need to add the following lines to your shell configuration (`.zshrc`) to avoid conflict with Apple's XCode LLVM install:

```bash
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/llvm/lib"
export CPPFLAGS="-I/opt/homebrew/opt/llvm/include"
```

You can check that the correct binaries are being used by running `which clang` or `which llvm-config`.
