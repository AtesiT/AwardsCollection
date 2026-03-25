import SwiftUI

struct CartRacingView: View {
    @State private var start = false
    
    var body: some View {
        HStack {
            VStack(spacing: 10) {
                CartView(
                    start: start,
                    title: "Default",
                    color: .red,
                    animation: .default
                )
            }
            Spacer()
        }
        .onTapGesture {
            start.toggle()
        }
    }
}

struct CartView: View {
    var start: Bool
    let title: String
    let color: Color
    let animation: Animation
    
    var body: some View {
        VStack {
            Image(systemName: "cart.fill")
                .font(.title)
                .foregroundStyle(color)
                .offset(x: start ? UIScreen.main.bounds.width - 80 : 0)
                .animation(animation, value: start)
            Text("Default")
        }
    }
}

#Preview {
    CartRacingView()
}
