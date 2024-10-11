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
                
                HStack(spacing: 20) {
                    Button(action: {
                        selectedLanguage = "English"
                        path.append(selectedLanguage!)
                    }) {
                        CircleFlagView(flag: "🇬🇧")
                    }
                    
                    Button(action: {
                        selectedLanguage = "Spanish"
                        path.append(selectedLanguage!)
                    }) {
                        CircleFlagView(flag: "🇪🇸")
                    }
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

struct CircleFlagView: View {
    var flag: String
    
    var body: some View {
        Text(flag)
            .font(.system(size: 50))
            .frame(width: 100, height: 100)
            .background(Circle().fill(.white))
            .overlay(Circle().stroke(Color.black, lineWidth: 1))
    }
}

struct LanguageView_Previews: PreviewProvider {
    static var previews: some View {
        LanguageView()
    }
}
