import SwiftUI

struct CustomGridView: View {
    let items: [Int]
    let columns: Int
    
    private var rows : Int {
        //  Получаем количество строк
        items.count / columns
    }
    
    var body: some View {
        //  Нам необходимо передавать уникальные элементы и для этого используем диапазон
        ScrollView {
            //  Задаем количество строк
            ForEach(0..<rows, id: \.self) { rowIndex in
                HStack {
                    //  Задаем количество столбцов
                    ForEach(0..<columns) { columnIndex in
                        //  Инициализируем текст 
                        Text(items[rowIndex * columns + columnIndex].formatted())
                    }
                }
            }
        }
    }
}
#Preview {
    CustomGridView(items: [0,1,2,3,4,5], columns: 3)
}
