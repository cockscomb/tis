import TextInputSources

enum CUIError: Error {
    case inputSourceIsNotFound(forID: String)
}

extension CUIError: CustomStringConvertible {
    var description: String {
        switch self {
        case let .inputSourceIsNotFound(forID: id):
            return "'\(id)' is not found"
        }
    }
}

extension TextInputSourcesError: CustomStringConvertible {
    public var description: String {
        switch self {
        case .cannotSelect:
            return "Cannot select the input source"
        case .cannotDeselect:
            return "Cannot deselect the input source"
        case .cannotEnable:
            return "Cannot enable the input source"
        case .cannotDisable:
            return "Cannot disable the input source"
        case .cannotRegister:
            return "Cannot register the input source"
        case .cannotOverrideKeyboardLayout:
            return "Cannot override the keyboard layout"
        case let .unknown(status):
            return "Unknown error (status: \(status)) has occured"
        }
    }
}
