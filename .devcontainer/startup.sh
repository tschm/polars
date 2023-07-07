#!/bin/bash
#cargo --version
#rustc --version

RUST_TOOLCHAIN := nightly-2023-06-23

#RUST_TOOLCHAIN := $(RUST_TOOLCHAIN_VERSION)

rustup toolchain install $(RUST_TOOLCHAIN) --component miri
rustup default $(RUST_TOOLCHAIN)

rustup component add rustfmt
rustup component add clippy


# follow https://github.com/pola-rs/polars/blob/main/CONTRIBUTING.md#setting-up-your-environment
#rustup toolchain install ${toolchain}-x86_64-unknown-linux-gnu --component miri

# add https://github.com/rust-lang/rustfmt
#rustup component add rustfmt --toolchain ${toolchain}-x86_64-unknown-linux-gnu
#rustup component add clippy --toolchain ${toolchain}-x86_64-unknown-linux-gnu

# Install dprint, see https://dprint.dev/install/
# this will be slower since it builds from the source
cargo install --locked dprint
cargo install cargo-license
