import SwiftUI

func buildTextFromSpan(_ span: SpannedText.Span, originalText: String) -> Text {
    let substring = originalText.substring(from: span.range)
    switch span.attribute {
    case .bold: return Text(substring).bold()
    case .italic: return Text(substring).italic()
    case .boldItalic: return Text(substring).bold().italic()
    case .link: return Text(substring).foregroundColor(.blue).underline().bold()
    case .heading: return Text(substring).font(.title)
    default: return Text(substring)
    }
}

func buildAttributedText(from model: SpannedText) -> Text {
    var i = 0
    let originalText = model.text
    var attributedText = Text("")
    while i < model.text.count {
        if let span = model.attributes?.first(where: { $0.range.startIndex == i }) {
            let text = buildTextFromSpan(span, originalText: originalText)
            attributedText = attributedText + text
            i+=span.range.length
            continue
        }
        let index = originalText.index(originalText.startIndex, offsetBy: i)
        attributedText = attributedText + Text(String(originalText[index]))
        i += 1
    }
    return attributedText
}

struct ContentView: View {
    private let models = ExampleData.data

    var body: some View {
        buildAttributedText(from: models)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
