# Changelog

## [Unreleased]

- GD32F30x
  - Added support for GD32F305 and GD32F307, in new `gd32f3` crate.

## [0.5.0]

- GD32E23x
  - Added support for GD32E230 and GD32E231, in new `gd32e2` crate.
- GD32F1x0
  - Renamed `I2Cn.STAT0.SMBALTS` to `SMBALT`. This matches what the documentation calls it.
- Updated to `svd2rust` 0.19.0.

## [0.4.0]

- GD32F1x0
  - Fixed `TIMERn.CTL0.CEN` values, the enum values were accidentally reversed in 0.3.0.

## [0.3.0]

- GD32F1x0
  - Changed various timer fields to share the same enum type.

## [0.2.1]

- GD32F1x0
  - Reduced set of features for docs.rs, to hopefully fix build.

## [0.2.0]

- GD32F1x0
  - Fixed TIMER PWM mode names, and added missing timer fields.
  - Split into 4 separate variants, and removed features not actually present on each variant.
  - Added CAN peripheral.
  - Added DAC peripheral.
  - Added I2C peripheral.
  - Added IVREF peripheral.
  - Added OPA peripheral.
  - Added SPI peripheral.
  - Added SYSCFG peripheral.

## [0.1.0]

First release.

[unreleased]: https://github.com/gd32-rust/gd32-rs/compare/0.5.0...HEAD
[0.2.0]: https://github.com/gd32-rust/gd32-rs/compare/0.1.0...0.2.0
[0.2.1]: https://github.com/gd32-rust/gd32-rs/compare/0.2.0...0.2.1
[0.3.0]: https://github.com/gd32-rust/gd32-rs/compare/0.2.1...0.3.0
[0.4.0]: https://github.com/gd32-rust/gd32-rs/compare/0.3.0...0.4.0
[0.5.0]: https://github.com/gd32-rust/gd32-rs/compare/0.4.0...0.5.0
