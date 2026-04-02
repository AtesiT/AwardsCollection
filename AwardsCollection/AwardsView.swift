import SwiftUI

struct AwardsView: View {
    private let awards = Award.awards.filter{ $0.awarded }
    
    var body: some View {
        NavigationStack {
            CustomGridView(items: awards, columns: 2) { award in
                VStack {
                    award.awardView
                    Text(award.title)
                }
            }
            .navigationBarTitle("Your awards: \(awards.count)")
        }
    }
}

#Preview {
    AwardsView()
}
