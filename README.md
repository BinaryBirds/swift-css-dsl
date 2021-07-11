# SwiftCss

An awesome Swift CSS DSL library using result builders.

```swift
@MediaBuilder func buildCSS() -> [Media] {
    Media {
        All {
            Background("#222")
        }
        Root {
            Color(.blue)
        }
        Element(.div) {
            BackgroundColor(.red)
            Color(.white)
            TextAlign("left")
        }
        .pseudo(.nthChild(2))
    }
    Media("only screen and (max-width: 600px)") {
        Id("custom-identifier") {
            Background("#222")
            Color(.cyan)
        }
        Class("custom-class") {
            Background("#333")
            Color(.aliceBlue)
        }
        Selector("ul > li > a") {
            Background("black")
            Color(.red)
                .important()
        }
        .pseudo(.hover)
    }
}

```