<div align="center">
  <p align="center">
    <a href="https://github.com/kebasyaty/vizbor">
      <img
        alt="Logo"
        src="https://raw.githubusercontent.com/kebasyaty/vizbor/main/logo/logo.svg">
    </a>
  </p>
  <p>
    <h1>Vizbor</h1>
    <h3>Vizbor is a high-level Crystal web framework that encourages rapid development and clean, pragmatic design. It’s free and open source.</h3>
    <p align="center">
      <a href="https://github.com/kebasyaty/vizbor/actions/workflows/specs.yml" alt="Build Status"><img src="https://github.com/kebasyaty/vizbor/actions/workflows/specs.yml/badge.svg" alt="Build Status"></a>
      <a href="https://kebasyaty.github.io/vizbor/" alt="Docs"><img src="https://img.shields.io/badge/docs-available-brightgreen.svg" alt="Docs"></a>
      <a href="https://crystal-lang.org/" alt="Crysta"><img src="https://img.shields.io/badge/crystal-v1.12.1%2B-CC342D" alt="Crysta"></a>
      <a href="https://github.com/kebasyaty/vizbor/releases/" alt="GitHub release"><img src="https://img.shields.io/github/release/kebasyaty/vizbor" alt="GitHub release"></a>
      <a href="https://github.com/kebasyaty/vizbor/blob/main/LICENSE" alt="GitHub license"><img src="https://img.shields.io/github/license/kebasyaty/vizbor" alt="GitHub license"></a>
      <a href="https://github.com/kebasyaty/vizbor" alt="GitHub repository"><img src="https://img.shields.io/badge/--ecebeb?logo=github&logoColor=000000" alt="GitHub repository"></a>
    </p>
    <div align="center">
      TODO: Write a description here
    </div>
  </p>
</div>

<hr>

_Vizbor is based on the lightning fast, super simple Kemal web framework._
<br>
_For more information see [Kemal](https://github.com/kemalcr/kemal "Kemal")_.

<p>
  <a href="https://github.com/kebasyaty/vizbor" alt="Status Project">
    <img src="https://raw.githubusercontent.com/kebasyaty/vizbor/main/pictures/status_project/Status_Project-Development-.svg"
      alt="Status Project">
  </a>
</p>

## Requirements

[View the list of requirements.](https://github.com/kebasyaty/vizbor/blob/main/REQUIREMENTS.md "Requirements")

## Installation

1. Install MongoDB (if not installed):<br>
   [![Fedora](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/FEDORA_INSTALL_MONGODB.md)
   [![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/DEBIAN_INSTALL_MONGODB.md)
   [![Ubuntu](https://img.shields.io/badge/Ubuntu-ba4319?style=for-the-badge&logo=ubuntu&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/UBUNTU_INSTALL_MONGODB.md)
   [![Linux Mint](https://img.shields.io/badge/Linux_Mint-5e902b?style=for-the-badge&logo=linux-mint&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/UBUNTU_INSTALL_MONGODB.md)

2. Install additional libraries (if not installed):<br>
   [![Fedora](https://img.shields.io/badge/Fedora-294172?style=for-the-badge&logo=fedora&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/FEDORA_ADDITIONAL_LIBRARIES.md)
   [![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/DEBIAN_ADDITIONAL_LIBRARIES.md)
   [![Ubuntu](https://img.shields.io/badge/Ubuntu-ba4319?style=for-the-badge&logo=ubuntu&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/UBUNTU_ADDITIONAL_LIBRARIES.md)
   [![Linux Mint](https://img.shields.io/badge/Linux_Mint-5e902b?style=for-the-badge&logo=linux-mint&logoColor=white)](https://github.com/kebasyaty/vizbor/blob/main/UBUNTU_ADDITIONAL_LIBRARIES.md)

3. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     vizbor:
       github: kebasyaty/vizbor
   ```

4. Run:

    ```shell
    shards install
    bin/vcli --init
    # or
    shards install && cp bin/vcli ~/.local/bin/vizbor
    vizbor --init
    ```

## Usage

```crystal
require "vizbor"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

## Contributing

1. Fork it (<https://github.com/kebasyaty/vizbor/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [kebasyaty](https://github.com/kebasyaty) Gennady Kostyunin - creator and maintainer

## Changelog

[View the change history.](https://github.com/kebasyaty/vizbor/blob/main/CHANGELOG.md "View the change history.")

## License

**This project is licensed under the** [MIT](https://github.com/kebasyaty/vizbor/blob/main/LICENSE "MIT")**.**

<br>
<br>
<div>
  <a href="https://crystal-lang.org/" alt="Made with Crystal">
    <img width="100%" src="https://raw.githubusercontent.com/kebasyaty/vizbor/main/pictures/made-with-crystal.svg"
      alt="Made with Crystal">
  </a>
</div>
