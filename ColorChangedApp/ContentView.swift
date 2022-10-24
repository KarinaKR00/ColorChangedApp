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
                .cornerRadius(10)
                
            SliderView(sliderColor: .red)
            SliderView(sliderColor: .blue)
            SliderView(sliderColor: .green)
        }
        
    }
}
   

    





struct Previews_ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
