struct SpannedText: Decodable, Equatable {

    enum TextAttribute: String, Decodable, Equatable {
        case bold
        case italic
        case link
        case boldItalic
        case heading
        case crosshead
        case subheading
    }

    struct Range: Decodable, Equatable {

        let startIndex: Int
        let length: Int
    }

    struct Span: Decodable, Equatable {

        let range: Range
        let attribute: TextAttribute
    }

    let text: String
    let attributes: [Span]?
}
