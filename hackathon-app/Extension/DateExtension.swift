import Foundation

extension Date {
    var toJapaneseLongString: String{
        let df = DateFormatter()
        df.locale = Locale(identifier: "ja_JP")
        df.dateStyle = .long
        return df.string(from: Date())
    }
}
