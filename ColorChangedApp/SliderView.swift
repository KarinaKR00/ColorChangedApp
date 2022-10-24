//
//  SliderView.swift
//  ColorChangedApp
//
//  Created by Карина on 23.10.2022.
//

import SwiftUI

struct SliderView: View {
    
    @State private var sliderValue = Double.random(in: 1...255)
    @State private var sliderColor = Color.red
    @State private var textField = ""
    
    var body: some View {
        
        HStack(spacing: 20) {
            Text(lround(sliderValue).formatted())
                .font(.largeTitle)
            Slider(value: $sliderValue)
                .accentColor(sliderColor)
            TextField("", text: $textField)
                .bordered()
            
        }
        
    }
}

struct BorderedViewModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(EdgeInsets(top: 15, leading: 20, bottom: 15, trailing: 20))
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
        SliderView()
    }
}
