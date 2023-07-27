//
//  QuoteView.swift
//  Disco
//
//  Created by Ethan McRae on 7/26/23.
//

import SwiftUI

struct QuoteView: View {
    @State private var quoteData = QuoteData()
    @State private var currentQuote: Quote = Quote(id: 0, text: "Tap the button to get a quote", categories: [])
    
    init() {
        if let savedQuoteId = UserDefaults.standard.object(forKey: "CurrentQuoteId") as? Int {
            _currentQuote = State(initialValue: quoteData.getQuoteById(savedQuoteId))
        } else {
            _currentQuote = State(initialValue: quoteData.getRandomQuote())
        }
    }
    
    var body: some View {
        VStack {
            Spacer()
            Text(currentQuote.text)
                .font(.title)
                .padding()
            HStack {
                Spacer()
                Button(action: {
                    currentQuote = quoteData.getRandomQuote()
                    UserDefaults.standard.set(currentQuote.id, forKey: "CurrentQuoteId")
                }) {
                    HStack {
                        Image(systemName: "arrow.clockwise")
                        Text("New Quote")
                    }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(40)
                }
                
                Button(action: {
                    shareQuote()
                }) {
                    HStack {
                        Image(systemName: "arrowshape.turn.up.right.fill")
                        Text("Share")
                            .padding(.horizontal, 5)
                    }
                    .padding()
                    .padding(.horizontal, 10)
                    .foregroundColor(.white)
                    .background(Color.green)
                    .cornerRadius(40)
                }
                .padding()
                Spacer()
            }
            Spacer()
        }
    }
    
    func shareQuote() {
        let activityController = UIActivityViewController(activityItems: [currentQuote.text], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityController, animated: true, completion: nil)
    }
}

struct QuoteView_Previews: PreviewProvider {
    static var previews: some View {
        QuoteView()
    }
}
