import SwiftUI

//struct AwardsView: View {
//    private let awards = Award.awards.filter{ $0.awarded }
//    
//    var body: some View {
//        NavigationStack {
//            CustomGridView(items: awards, columns: 2) { award in
//                VStack {
//                    award.awardView
//                    Text(award.title)
//                }
//            }
//            .navigationBarTitle("Your awards: \(awards.count)")
//        }
//    }
//}

struct AwardsView: View {
    private let awards = Award.awards.filter{ $0.awarded }
    private let columns = [GridItem(.adaptive(minimum: 160, maximum: 200))]
    
    var body: some View {
        NavigationStack {
            LazyVGrid(columns: columns) {
                ForEach(awards, id: \.title) { award in
                    VStack {
                        award.awardView
                        Text(award.title)
                    }
                }
            }
            .navigationBarTitle("Your awards: \(awards.count)")
        }
    }
}


#Preview {
    AwardsView()
}
