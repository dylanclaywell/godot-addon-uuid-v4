# godot-addon-uuid-v4

This is a simple Godot Engine plugin that generates pseudo-random UUID v4 strings. It is useful for generating unique identifiers for your game objects.

## Installation

1. Clone this repository or download and copy the `addons` directory into your Godot project's `addons` directory.
2. Enable the plugin in your project settings.
3. Add the `UUID` singleton to your project in the Autoload section of your project settings.

## Usage

```gdscript
var uuid = UUID.generate_id()

print(uuid) # 1b9d6bcd-bbfd-4b2d-9b5d-ab8dfbbd4c1e
```

## License

[MIT Copyright (c) 2024 Dylan Claywell](LICENSE)
