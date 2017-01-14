# tis

Text Input Sources CUI for macOS

## Typical usages

List enabled keyboard input sources

```
$ tis list
com.apple.inputmethod.Kotoeri.Japanese
com.apple.inputmethod.Kotoeri.Roman
```

Print the current selected input source

```
$ tis current
com.apple.inputmethod.Kotoeri.Roman
```

Select input sources

```
$ tis select com.apple.inputmethod.Kotoeri.Japanese
$ tis current
com.apple.inputmethod.Kotoeri.Japanese
```
