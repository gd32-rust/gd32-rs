# Changelog

## [unreleased]

- GD32F4xx
  - Added support for GD32F425 in new `gd32f4` crate.

## [0.9.1]

- Re-enabled re-export of `cortex_m_rt::interrupt` macro.

## [0.9.0]

- Updated to `svd2rust` 0.32.0.
- GD32C1x3
  - Added support for GD32C103 and GD32C113 in new `gd32c1` crate.
- GD32E103
  - Fixed range of `I2C*.CTL1.I2CCLK` and `I2C*.RT.RISETIME`.
  - Fixed range of `DAC.DACC_R8DH.DAC*_DH`.
  - Fixed range of `CAN*.BT.BAUDPSC`.
- GD32F1x0
  - Fixed width of `I2C*.CTL1.I2CCLK` and `I2C*.RT.RISETIME` to be 7 bits rather than 6.
  - Fixed range of `DAC.DACC_R8DH.DAC*_DH`.
  - Fixed range of `CAN*.BT.BAUDPSC`.
- GD32F20x
  - Fixed range of `I2C*.CTL1.I2CCLK` and `I2C*.RT.RISETIME`.
  - Fixed range of `DAC.DACC_R8DH.DAC*_DH`.
  - Fixed range of `CAN*.BT.BAUDPSC`.
- GD32F30x
  - Fixed range of `DAC.DACC_R8DH.DAC*_DH`.
  - Fixed range of `CAN*.BT.BAUDPSC`.

## [0.8.0]

- Updated to `critical-section` to 1.1.2.
- Updated to `cortex-m-rt` to 0.7.3.
- Updated to `cortex-m` to 0.7.7.
- Updated to `svd2rust` 0.30.1.
- GD32E103
  - Added some more field details to `RCU.INT`.
- GD32E23x
  - Added RCU peripheral.
- GD32F1x0
  - Fixed `RCU.DSV.DSLPVS` variants for GD32F170 and GD32F190.
- GD32F20x
  - Added some more field details to `RCU.INT`.

## [0.7.0]

- Updated to `svd2rust` 0.27.2.
- Updated to `cortex-m` 0.7.6 and `cortex-m-rt` 0.7.2.
- GD32E103
  - Added support for GD32E103 in new `gd32e1` crate.
- GD32E50x
  - Added support for GD32E503, GD32E505, GD32E507, GD32E508 in new `gd32e5` crate.

## [0.6.0]

- GD32E23x
  - Added DMA peripheral.
- GD32F1x0
  - Renamed various DMA registers and fields to be consistent with documentation and other series.
- GD32F20x
  - Added support for GD32F205 and GD32F207 in new `gd32f2` crate.
- GD32F30x
  - Added support for GD32F303, GD32F305 and GD32F307, in new `gd32f3` crate.
- Updated to `svd2rust` 0.24.0.

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

[unreleased]: https://github.com/gd32-rust/gd32-rs/compare/0.9.1...HEAD
[0.2.0]: https://github.com/gd32-rust/gd32-rs/compare/0.1.0...0.2.0
[0.2.1]: https://github.com/gd32-rust/gd32-rs/compare/0.2.0...0.2.1
[0.3.0]: https://github.com/gd32-rust/gd32-rs/compare/0.2.1...0.3.0
[0.4.0]: https://github.com/gd32-rust/gd32-rs/compare/0.3.0...0.4.0
[0.5.0]: https://github.com/gd32-rust/gd32-rs/compare/0.4.0...0.5.0
[0.6.0]: https://github.com/gd32-rust/gd32-rs/compare/0.5.0...0.6.0
[0.7.0]: https://github.com/gd32-rust/gd32-rs/compare/0.6.0...0.7.0
[0.8.0]: https://github.com/gd32-rust/gd32-rs/compare/0.7.0...0.8.0
[0.9.0]: https://github.com/gd32-rust/gd32-rs/compare/0.8.0...0.9.0
[0.9.1]: https://github.com/gd32-rust/gd32-rs/compare/0.9.0...0.9.1
