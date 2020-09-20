class ExampleData {
    static let data = SpannedText(text: "Susie Wolff has memories of Lewis Hamilton that go back to a childhood spent racing karts against each other, an era of innocence in what she calls the purest form of racing where money and politics and gender played no part.",
                                         attributes: [
                                            SpannedText.Span(range: SpannedText.Range(startIndex: 5, length: 5),
                                                                    attribute: .bold),
                                            SpannedText.Span(range: SpannedText.Range(startIndex: 15, length: 30),
                                                                    attribute: .italic),
                                            SpannedText.Span(range: SpannedText.Range(startIndex: 60, length: 10),
                                                                    attribute: .boldItalic),
                                            SpannedText.Span(range: SpannedText.Range(startIndex: 100, length: 25),
                                                                    attribute: .bold),
                                            SpannedText.Span(range: SpannedText.Range(startIndex: 150, length: 50),
                                                                    attribute: .link),
                                            SpannedText.Span(range: SpannedText.Range(startIndex: 210, length: 15),
                                                                    attribute: .italic)

        ])
}
