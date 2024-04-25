import UIKit

struct Day {
    let title: String
    let detail: String
    let classPrefix: String
    let enabled: Bool

    func controller() -> UIViewController {
        let storyboard = UIStoryboard(name: classPrefix, bundle: nil)
        guard let controller = storyboard.instantiateInitialViewController() else { fatalError() }
        controller.title = title
        return controller
    }
}

struct DaysDataSource {
    let days = [
        Day(
            title: "Highlighting person (isolated)",
            detail: "",
            classPrefix: "FindPerson",
            enabled: true
        ),
    ]
}
