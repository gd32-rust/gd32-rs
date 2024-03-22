# GD32 Peripheral Access Crates

[![CI](https://github.com/gd32-rust/gd32-rs/workflows/CI/badge.svg?branch=main)](https://github.com/gd32-rust/gd32-rs)
[![crates.io](https://img.shields.io/crates/v/gd32e1.svg?label=gd32e1)](https://crates.io/crates/gd32e1)
[![crates.io](https://img.shields.io/crates/v/gd32e2.svg?label=gd32e2)](https://crates.io/crates/gd32e2)
[![crates.io](https://img.shields.io/crates/v/gd32e5.svg?label=gd32e5)](https://crates.io/crates/gd32e5)
[![crates.io](https://img.shields.io/crates/v/gd32f1.svg?label=gd32f1)](https://crates.io/crates/gd32f1)
[![crates.io](https://img.shields.io/crates/v/gd32f2.svg?label=gd32f2)](https://crates.io/crates/gd32f2)

This repository provides Rust device support crates for Cortex-M based GD32
microcontrollers, providing a safe API to that device's peripherals using
[svd2rust] and a community-built collection of patches to the basic SVD files.
There is one crate per device family, and each supported device is a
feature-gated module in that crate. These crates are commonly known as
peripheral access crates or "PACs".

[svd2rust]: https://github.com/rust-embedded/svd2rust

To view the generated code that makes up each crate, visit the
[gd32-rs-nightlies](https://github.com/gd32-rust/gd32-rs-nightlies)
repository, which is automatically rebuilt on every commit to gd32-rs main.
The gd32-rs repository contains the patches to the underlying SVD files and
the tooling to generate the crates.

While these crates are widely used, not every register of every device will
have been tested on hardware, and so errors or omissions may remain. We can't
make any guarantee of correctness. Please report any bugs you find!

You can see current coverage status for each chip
[here](https://gd32-rust.github.io/gd32-rs/). Coverage means that individual fields are
documented with possible values, but even devices with low coverage should
have every register and field available in the API. That page also allows you
to drill down into each field on each register on each peripheral.

## Using Device Crates In Your Own Project

In your own project's `Cargo.toml`:

```toml
[dependencies.gd32f1]
version = "0.9.0"
features = ["gd32f130", "rt"]
```

The `rt` feature is optional but helpful. See
[svd2rust](https://docs.rs/svd2rust/latest/svd2rust/#the-rt-feature) for
details.

Then, in your code:

```rust
use gd32f1::gd32f130;

let mut peripherals = gd32f130::Peripherals::take().unwrap();
```

Refer to `svd2rust` [documentation](https://docs.rs/svd2rust) for further usage.

Replace `gd32f1` and `gd32f130` with your own device; see the individual
crate READMEs for the complete list of supported devices.

## Using Latest "Nightly" Builds

Whenever the main branch of this repository is updated, all device crates are
built and deployed to the
[gd32-rs-nightlies](https://github.com/gd32-rust/gd32-rs-nightlies)
repository. You can use this in your `Cargo.toml`:

```toml
[dependencies.gd32f1]
git = "https://github.com/gd32-rust/gd32-rs-nightlies"
features = ["gd32f130", "rt"]
```

The nightlies should always build and be as stable as the latest release, but
contain the latest patches and updates.

## Generating Device Crates / Building Locally

- Install `svd2rust`: `cargo install svd2rust`
- Install `form`: `cargo install form`
- Install rustfmt: `rustup component add rustfmt`
- Install svdtools: `pip install --user svdtools`
- Unzip bundled SVD zip files: `cd svd; ./extract.sh; cd ..`
- Generate patched SVD files: `make patch` (you probably want `-j` for all `make` invocations)
- Generate svd2rust device crates: `make svd2rust`
- Optional: Format device crates: `make form`

## Motivation and Objectives

This project serves two purposes:

- Create a source of high-quality GD32 SVD files, with manufacturer errors
  and inconsistencies fixed. These files could be used with svd2rust or other
  tools, or in other projects. They should hopefully be useful in their own
  right.
- Create and publish svd2rust-generated crates covering all Cortex-M based GD32s, using
  the SVD files.

## Helping

This project is still young and there's a lot to do!

- More peripheral patches need to be written, most of all. See what we've got
  in `peripherals/` and grab a reference manual!
- Also everything needs testing, and you can't so easily automate finding bugs
  in the SVD files...

## Supported Device Families

| Crate                                                                                                    | Supported devices                      | Notes                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------- | ---------------------------------- |
| `gd32c1`                                                                                                 | GD32C103, GD32C113                     | Not yet published                  |
| [![crates.io](https://img.shields.io/crates/v/gd32e1.svg?label=gd32e1)](https://crates.io/crates/gd32e1) | GD32E103                               |                                    |
| [![crates.io](https://img.shields.io/crates/v/gd32e2.svg?label=gd32e2)](https://crates.io/crates/gd32e2) | GD32E230, GD32E231                     |                                    |
| [![crates.io](https://img.shields.io/crates/v/gd32e5.svg?label=gd32e5)](https://crates.io/crates/gd32e5) | GD32E503, GD32E505, GD32E507, GD32E508 |                                    |
| [![crates.io](https://img.shields.io/crates/v/gd32f1.svg?label=gd32f1)](https://crates.io/crates/gd32f1) | GD32F130, GD32F150, GD32F170, GD32F190 |                                    |
| [![crates.io](https://img.shields.io/crates/v/gd32f2.svg?label=gd32f2)](https://crates.io/crates/gd32f2) | GD32F205, GD32F207                     |                                    |
| `gd32f3`                                                                                                 | GD32F303, GD32F305, GD32F307           | Not published due to name conflict |

Please see the individual crate READMEs for the full list of devices each crate
supports.

Many peripherals are not yet patched to provide the type-safe friendly-name
interface (enumerated values); please consider helping out with this!

Check out the full list of supported devices [here](https://gd32-rust.github.io/gd32-rs/).

## Adding New Devices

- Update SVD files in `svd/vendor` to include new SVD.
- Run `svd/extract.sh` to copy the files into `svd` (ignored in git).
- Add new YAML file in `devices/` with the new SVD path and include any
  required SVD patches for this device, such as renaming or merging fields.
- You can run `scripts/matchperipherals.py` script to find out what existing
  peripherals could be cleanly applied to this new SVD. If they look sensible,
  you can include them in your device YAML.
- Re-run `scripts/makecrates.py devices/` to update the crates with the new devices.
- Run `make` to rebuild, which will make a patched SVD and then run `svd2rust`
  on it to generate the final library.

## Updating Existing Devices/Peripherals

- You'll need to run `svd/extract.sh` at least once to pull the SVDs out.
- Edit the device or peripheral YAML (see below for format).
- Run `make` to rebuild all the crates using `svd patch` and `svd2rust`.
- Test your new stuff compiles: `cd gd32f1; cargo build --features gd32f130`

If you've added a new peripheral, consider using the `matchperipherals.py`
script to see which devices it would cleanly apply to.

To generate a new peripheral file from scratch, consider using
`periphtemplate.py`, which creates an empty peripheral file based on a single
SVD file, with registers and fields ready to be populated. For single bit wide
fields with names ending in 'E' or 'D' it additionally generates sample
"Enabled"/"Disabled" entries to save time.

## Device and Peripheral YAML Format

Please see the [svdtools](https://github.com/stm32-rs/svdtools) documentation
for full details of the patch file format.

### Style Guide

- Enumerated values should be named in the past tense ("enabled", "masked",
  etc).
- Descriptions should start with capital letters but do not end with a period

## Releasing

Notes for maintainers:

```
$ make -j16 form
$ env CARGO_INCREMENTAL=0 make -j12 check
$ vi scripts/makecrates.py # update version number
$ python3 scripts/makecrates.py devices/
$ vi CHANGELOG.md # add changelog entry
$ vi README.md # update version number
$ git checkout -b vX.X.X
$ git commit -am "vX.X.X"
$ git push origin vX.X.X
# wait for CI build to succeed
$ git tag -a 'vX.X.X' -m 'vX.X.X'
$ git push origin vX.X.X
$ for f in gd32f1; cd $f; pwd; cargo publish --allow-dirty; cd ..; end
```

## Disclaimer

This is not an officially supported Google product.

## License

Licensed under either of

- Apache License, Version 2.0 ([LICENSE-APACHE](LICENSE-APACHE) or http://www.apache.org/licenses/LICENSE-2.0)
- MIT license ([LICENSE-MIT](LICENSE-MIT) or http://opensource.org/licenses/MIT)

at your option.

## Contribution

Unless you explicitly state otherwise, any contribution intentionally submitted
for inclusion in the work by you, as defined in the Apache-2.0 license, shall be
dual licensed as above, without any additional terms or conditions.

See the [contributing guide](CONTRIBUTING.md) for more details.
