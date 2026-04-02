 import SwiftUI

struct HorizontalGridView: View {
    private let rows = [
        //  Инициализированное GridItem без аргументов автоматически становится fixed
        GridItem()
    ]
    
    var body: some View {
        //  По умолчанию в ScrollView - веертикальное отображение
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, spacing: 20) {
                ForEach(1...10, id: \.self) { item in
                    Image(systemName: item.formatted() + ".circle")
                        .resizable()
                        .frame(width: 80, height: 80)
                }
            }
        }
    }
}

#Preview {
    HorizontalGridView()
}
