//
//  SliderView.swift
//  ColorChangedApp
//
//  Created by Карина on 23.10.2022.
//

import SwiftUI

struct SliderView: View {
    
    let sliderColor: Color
    
    let sliderValue: Double
    let textField: String
    
    var body: some View {
        
        HStack(spacing: 20) {
            Text(lround(sliderValue).formatted()).foregroundColor(.black)
                .font(.largeTitle)
            Slider(value: sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
                .font(.largeTitle)
            TextField("", text: textField)
                .bordered()
            
        }
        .padding(30)
        
    }
}



struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 30))
            .frame(width: 70, height: 40)
            .overlay(
                RoundedRectangle(cornerRadius: 4)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray.opacity(0.4), radius: 4)
    }
}

extension TextField {
    func bordered() -> some View {
        ModifiedContent(content: self, modifier: BorderedViewModifier())
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(sliderColor: .red, sliderValue: 1...255, textField: "")
}
