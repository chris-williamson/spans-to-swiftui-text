extension String {
    func substring(from range: SpannedText.Range) -> String {
        let start = self.index(self.startIndex, offsetBy: range.startIndex)
        let end = self.index(self.startIndex, offsetBy: range.startIndex+range.length)
        let range = start..<end
        let substring = self[range]
        return String(substring)
    }
}
