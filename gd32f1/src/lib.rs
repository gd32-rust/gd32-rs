//! Peripheral access API for GD32F1 microcontrollers
//! (generated using [svd2rust](https://github.com/rust-embedded/svd2rust)
//! 0.17.0)
//!
//! You can find an overview of the API here:
//! [svd2rust/#peripheral-api](https://docs.rs/svd2rust/0.17.0/svd2rust/#peripheral-api)
//!
//! For more details see the README here:
//! [gd32-rs](https://github.com/qwandor/gd32-rs)
//!
//! This crate supports all GD32F1 devices; for the complete list please
//! see:
//! [gd32f1](https://github.com/qwandor/gd32-rs/tree/main/gd32f1)
//!
//! Due to doc build limitations, not all devices may be shown on docs.rs;
//! a representative few have been selected instead. For a complete list of
//! available registers and fields see: [gd32-rs Device Coverage](https://qwandor.github.io/gd32-rs/)

#![allow(non_camel_case_types)]
#![no_std]

mod generic;
pub use self::generic::*;

#[cfg(feature = "gd32f1x0")]
pub mod gd32f1x0;

