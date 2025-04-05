import SwiftUI

struct ContentView: View {
    @State private var showCardDetails = false

    var body: some View {
        NavigationStack {
            VStack {
                cardDetailButton()
            }
            .navigationDestination(isPresented: $showCardDetails) {
                CardDetailsView()
            }
            .navigationTitle("Home")
        }
    }

    @ViewBuilder
    private func cardDetailButton() -> some View {
        Button {
            showCardDetails = true
        } label: {
            Text("Card Details")
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

struct CardDetailsView: View {
    var body: some View {
        VStack {
            Text("Card Details Screen")
                .font(.title)
        }
        .navigationTitle("Card Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

