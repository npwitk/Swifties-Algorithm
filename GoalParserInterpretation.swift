import UIKit

func interpret(_ command: String) -> String {
        command
            .replacingOccurrences(of: "()", with: "o")
            .replacingOccurrences(of: "(al)", with: "al")
    }

interpret("G()(al)")
interpret("G()()()()(al)")
interpret("(al)G(al)()()G")
