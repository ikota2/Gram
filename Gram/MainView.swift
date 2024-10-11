//
//  MainView.swift
//  GrammaTestOne
//
//  Created by ivan caiman on 11.10.2024.
//

import SwiftUI

struct MainView: View {
    let selectedLanguage: String
    
    var body: some View {
        VStack {
            Text("Selected Language:")
                .font(.title)
            Text(selectedLanguage)
                .font(.largeTitle)
                .padding()
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(selectedLanguage: "English")
    }
}
