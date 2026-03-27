import SwiftUI

struct MainView: View {
    @State private var awardIsShowing = false
    
    var body: some View {
        VStack {
            Button(action: buttonAction) {
                Text(awardIsShowing ? "Hide Award" : "Show Award")
                Spacer()
                Image(systemName: "chevron.up.square")
                    .scaleEffect(awardIsShowing ? 2 : 1)
                    .rotationEffect(.degrees(awardIsShowing ? 0 : 180))
//                    .animation(.default, value: awardIsShowing)
            }
            Spacer()
            
            if awardIsShowing {
                GradientRectangles()
                    .frame(width: 250, height: 250)
                    .transition(.customTransition)
                //                .offset(x: awardIsShowing ? 0 : -UIScreen.main.bounds.width)
                //                .animation(.default, value: awardIsShowing)
            }
            
            Spacer()
        }
        .font(.headline)
        .padding()
    }
    
//    Заменяем анимации, которые приходится добавлять как модификаторы
    private func buttonAction() {
        withAnimation {
            awardIsShowing.toggle()
        }
    }
}

extension AnyTransition {
    static var customTransition: AnyTransition {
        let insertion = AnyTransition.move(edge: .leading)
        let removal = AnyTransition.move(edge: .trailing)
        return .asymmetric(insertion: insertion, removal: removal)
        
    }
}

#Preview {
    MainView()
}
