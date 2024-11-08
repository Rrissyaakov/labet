import SwiftUI

struct RoundedRectangleModifier: ViewModifier {
    let cornerRadius: CGFloat

    func body(content: Content) -> some View {
        content.cornerRadius(cornerRadius)
    }
}

extension View {
    func roundedCorner(radius: CGFloat) -> some View {
        self.modifier(RoundedRectangleModifier(cornerRadius: radius))
    }
}

struct ContentView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .roundedCorner(radius: 20)
    }
}
