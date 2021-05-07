//
//  QuizMainView.swift
//  Moodi-iOS
//
//  Created by Santiago del Castillo Gonzaga on 05/05/21.
//

import SwiftUI

struct QuizMainView: View {
    @State private var selectedFeelings: Set<Feeling> = []
    @State private var selectedMood: Mood = .neutral
    @State private var answers: [String] = ["", "", ""]
    
    private let screenSize: CGSize = UIScreen.main.bounds.size
    
    var body: some View {
        VStack(spacing: 80) {
            MoodPickerView(screenSize: self.screenSize, selectedMood: $selectedMood)
            
            FeelingSelectView(screenSize: self.screenSize, selectedFeelings: $selectedFeelings)
        }
        .navigationBarTitle(LocalizedStringKey("AddingNewDayMainLabel"), displayMode: .inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                NavigationLink(destination: DailyQuestionsView(selectedFeelings: selectedFeelings,selectedMood: selectedMood, screenSize: screenSize, answers: $answers)) {
                    Text(LocalizedStringKey("Next"))
                }
            }
        }
    }
}

struct QuizMainView_Previews: PreviewProvider {
    @State static var mockBinding: Bool = true
    static var previews: some View {
        QuizMainView()
    }
}
