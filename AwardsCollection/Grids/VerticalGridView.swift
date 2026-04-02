import SwiftUI

struct VerticalGridView: View {
    private let dataSet = (1...100).map {"Item \($0)" }
    
    private let columns = [
        GridItem(.fixed(40)),
        GridItem(.flexible()),
        GridItem(.flexible())
//        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(dataSet, id: \.self) { item in
                    Text(item)
                }
            }
        }
    }
}

#Preview {
    VerticalGridView()
}
