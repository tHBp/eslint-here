# eslint-here

A batch script to execute ESLint via Windows Context Menu (Right-Click).

It executes `eslint` in the directory in which click is invoked taking configuration from the configuration directory passed while setting up.

It tries to find the configuration directory at the same level first and if not found, recursively goes up the directory tree till the folder is found.

## Setting Up

Uncomment line 3 to set the name of the folder in which configuration resides. For example, `build`.

## Add to context menu

* Open Registry Editor via `regedit` from Windows + R
* Navigate to `Computer\HKEY_CLASSES_ROOT\Directory\background\shell\`
* Create new key as `ESLint Here`
* Create new key as `command` inside the above key
* Set the value for the `command` key as `"<full-path-to-eslint-here>\eslint_here.bat" "%V"`

## License

MIT © [The Half Blood Prince](mailto://thehalfbloodprince.github@gmail.com)