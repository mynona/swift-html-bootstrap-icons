# SwiftSvg + Bootstrap Icons wrapper


This package only provides a Swift wrapper around the official [Bootstrap Icons](https://icons.getbootstrap.com/).  

The package depends on SwiftHtml, created and maintained by [Tibor Bödecs](https://github.com/tib)

[SwiftHtml](https://github.com/BinaryBirds/swift-html.git).

I am not the creator of the icons themselves.

- **Bootstrap Icons** were created and are maintained by the [Bootstrap team](https://github.com/twbs/icons), led by [@mdo](https://github.com/mdo).  
- The full icon set, documentation, and usage instructions can be found at [https://icons.getbootstrap.com/](https://icons.getbootstrap.com/).  
- This wrapper simply makes them easier to use in Swift projects via [SwiftSvg](https://github.com/BinaryBirds/swift-html.git).

---

## Features

- Type‑safe `SvgIcon` enum (no string literals)
- Handles Swift reserved keywords and leading digits
- Accessibility via `<title>` and `aria-labelledby` (or `aria-hidden` when no title)
- Applies official Bootstrap classes (`bi bi-<icon>`)
- Flexible sizing (`width` / `height` in px, or `100%` when set to 0)

---

## Installation

Add the package dependency to your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/swiftlang/swift-markdown.git", from: "0.7.2")
]
```

## Usage

### Render a simple Bootstrap icon:

```
let bell = Svg.icon(.bell)
```

This renders:

```
<svg class="bi bi-bell" width="16" height="16" viewBox="0 0 16 16" aria-hidden="true">
  <path d="..." />
</svg>
```

### Provide a title for screen readers

```
let bell = Svg.icon(.bell, title: "Notifications")
```

This renders:

```
<svg class="bi bi-bell" width="16" height="16" viewBox="0 0 16 16" aria-labelledby="title-bell">
  <title id="title-bell">Notifications</title>
  <path d="..." />
</svg>
```

### Custom sizing

```
// 24x24 pixels
let largeBell = Svg.icon(.bell, width: 24, height: 24)

// Full width/height of container
let responsiveBell = Svg.icon(.bell, width: 0, height: 0)
```
