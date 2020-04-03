//
//  NewSwiftUIView.swift
//  TA
//
//  Created by Larry Mcdowell on 4/3/20.
//  Copyright © 2020 Larry Mcdowell. All rights reserved.
//

import SwiftUI

struct NewSwiftUIView: View {
    
    @State private var isToggle : Bool = false
    @State private var myToggle : Bool = false
    var body: some View {
        VStack {
             Text(/*@START_MENU_TOKEN@*/"Hello SwiftUI"/*@END_MENU_TOKEN@*/)
            HStack {
                Toggle(isOn: $isToggle) {
                    Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                        .font(.title)
                    .padding()
                }.background(isToggle ? Color.orange : Color.purple)
                .cornerRadius(20.0)
                .padding()
            }
           
            Toggle("Colored", isOn: $myToggle)
                .toggleStyle(ColoredToggleStyle(onColor: .blue, offColor: .red, thumbColor: .black))
        }.padding()
        
        
        
        
    }
}

struct NewSwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        NewSwiftUIView()
    }
}


struct ColoredToggleStyle: ToggleStyle {
    var onColor = Color(UIColor.green)
    var offColor = Color(UIColor.systemGray5)
    var thumbColor = Color.white
    
    func makeBody(configuration: Self.Configuration) -> some View {
        HStack {
            configuration.label // The text (or view) portion of the Toggle
            Spacer()
            RoundedRectangle(cornerRadius: 16, style: .circular)
                .fill(configuration.isOn ? onColor : offColor)
                .frame(width: 50, height: 29)
                .overlay(
                    Circle()
                        .fill(thumbColor)
                        .shadow(radius: 1, x: 0, y: 1)
                        .padding(1.5)
                        .offset(x: configuration.isOn ? 10 : -10))
                .animation(Animation.easeInOut(duration: 0.2))
                .onTapGesture { configuration.isOn.toggle() }
        }
        .font(.title)
        .padding(.horizontal)
    }
}
