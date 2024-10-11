//
//  SwiftUIView.swift
//  Gram
//
//  Created by ivan caiman on 29.09.2024.
//

import SwiftUI

struct SplashView: View {
    @State var isActive: Bool = false;
    
    var body: some View {
        ZStack {
            if isActive {
                LanguageView()
            } else {
                Rectangle()
                    .background(.black)
                Image("g")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300, height: 300)
            }

        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

//#Preview {
//    SplashView()
//}
