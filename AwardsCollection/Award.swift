import SwiftUI

struct Award {
    let awardView: AnyView
    let title: String
    let awarded: Bool
    
    static var awards: [Award] {
        [
            Award(
                awardView: AnyView(GradientRectangles().frame(width: 200, height: 200)),
                title: "Gradient Rectangles",
                awarded: true
            ),
            Award(
                awardView: AnyView(PathView().frame(width: 200, height: 200)),
                title: "Path View",
                awarded: true
            ),
            Award(
                awardView: AnyView(CurvesView().frame(width: 200, height: 200)),
                title: "Curves View",
                awarded: true
            )
        ]
    }
}
