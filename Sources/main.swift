import TextInputSources
import Commander

let main = Group {
    $0.command("current", description: "Print the current selected input source") {
        let inputSource = TextInputSources.current
        print(inputSource.id)
    }

    $0.command("list", description: "List enabled input sources") {
        for inputSource in TextInputSources.find(filtering: [
            .category: InputSource.Category.keyboard,
            .kind: InputSource.Kind.keyboardInputMode,
            ]) {
                print(inputSource.id)
        }
    }

    $0.command("select", description: "Select an input source") { (id: String) in
        guard let inputSource = TextInputSources.find(filtering: [.id: id]).first else {
            throw CUIError.inputSourceIsNotFound(forID: id)
        }
        try TextInputSources.select(inputSource)
    }
}

main.run()
