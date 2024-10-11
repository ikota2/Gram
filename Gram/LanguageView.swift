//
//  LanguageView.swift
//  Gram
//
//  Created by ivan caiman on 29.09.2024.
//

import SwiftUI

struct LanguageView: View {
    @State private var selectedLanguage: String?
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Spacer()
                Text("Choose your language")
                Spacer()
                
                HStack() {
                    Spacer()
                    Button(action: {
                        selectedLanguage = "English"
                        path.append(selectedLanguage!)
                    }) {
                        FlagView(flag: "englishFlag")
                    }
                    Spacer()
                    Button(action: {
                        selectedLanguage = "Spanish"
                        path.append(selectedLanguage!)
                    }) {
                        FlagView(flag: "spanishFlag")
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
            .navigationDestination(for: String.self) { language in
                MainView(selectedLanguage: language)
                    .navigationBarBackButtonHidden(true)
            }
        }
    }
}

struct FlagView: View {
    var flag: String
    
    var body: some View {
            Image(flag)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
        }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
