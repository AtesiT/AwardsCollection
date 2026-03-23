import SwiftUI

struct PathView: View {
    var body: some View {
        GeometryReader { geometry in
            let width = geometry.size.width
            let height = geometry.size.height
            let size = min(height, width)
            let middle = size / 2
            let nearLine = size * 0.1
            let farLine = size * 0.9
            
            Path { path in
                //  Установка начальной линии
                path.move(to: CGPoint(x: middle + nearLine, y: nearLine))
                //  Продолжение построения линий.
                //  Необходимо минимум 3 линии, чтобы фигура построилась минимальная
                path.addLine(to: CGPoint(x: farLine, y: farLine))
                path.addLine(to: CGPoint(x: nearLine, y: farLine))
                path.addLine(to: CGPoint(x: middle - nearLine, y: nearLine))
                
            }
        }
    }
}

#Preview {
    PathView()
        .frame(width: 200, height: 200)
}
