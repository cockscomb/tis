import TextInputSources
import Commander

let main = Group {
    $0.command("current",
               Flag("name", description: "Print input source name instead of ID"),
               description: "Print the current selected input source")
    { (name) in
        let inputSource = TextInputSources.current
        if name {
            print(inputSource.localizedName)
        } else {
            print(inputSource.id)
        }
    }

    $0.command("list", description: "List enabled input sources") {
        for inputSource in TextInputSources.find(filtering: [
            .category: InputSource.Category.keyboard,
            .selectCapability: true,
        ]) {
            print(inputSource.id)
        }
    }

    $0.command("select",
               Argument<String>("id", description: "Input source ID"),
               description: "Select an input source")
    { (id) in
        guard let inputSource = TextInputSources.find(filtering: [.id: id]).first else {
            throw CUIError.inputSourceIsNotFound(forID: id)
        }
        try TextInputSources.select(inputSource)
    }
}

main.run()
