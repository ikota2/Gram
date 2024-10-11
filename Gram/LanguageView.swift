//
//  LanguageView.swift
//  Gram
//
//  Created by ivan caiman on 29.09.2024.
//

import SwiftUI

struct LanguageView: View {
    var body: some View {
        VStack {
            Spacer()
            Text("Choose your language")
            Spacer()
            
            HStack(spacing: 20) {
                CircleFlagView(flag: "🇬🇧")
                
                CircleFlagView(flag: "🇪🇸")
            }
        }

        .padding()
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
