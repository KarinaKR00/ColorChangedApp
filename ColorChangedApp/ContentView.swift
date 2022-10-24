//
//  ContentView.swift
//  ColorChangedApp
//
//  Created by Карина on 23.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        VStack {
            Rectangle()
                .frame(width: 300, height: 150)
                
            SliderView(sliderColor: .red, sliderValue: 1...255, textField: "")
        }
        
    }
}
   

    





struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
