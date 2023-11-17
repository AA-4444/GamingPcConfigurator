//
//  ContentView.swift
//  Speedometr
//
//  Created by Алексей Зарицький on 16/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentTab: Tab = .Settings
    
    
    
    //Hiding Tab Bar...
    init(){
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        
        
        VStack(spacing: 0){
            
            //MARK: Tab View
            TabView(selection: $currentTab){
                
                Text("Map")
                    .tag(Tab.Map)
                
                Text("Test")
                    .tag(Tab.Test)
                
                Text("Speedometr")
                    .tag(Tab.Speedometr)
                
                Text("Activity")
                    .tag(Tab.Activity)
                
             Settings()
                    .tag(Tab.Settings)
            }
            
            //Customization...
            HStack(spacing: 0) {
                ForEach(Tab.allCases,id: \.self){tab in
                    Button {
                        currentTab = tab
                    } label: {
                        
                        Image(tab.rawValue)
                            .resizable()
                           .renderingMode(.template)
                            .aspectRatio(contentMode: .fit)
                            .frame(width: tab == .Test ? 24 : 40, height: tab == .Test ? 24 : 40)
                            .frame(maxWidth: .infinity)
                            .padding(.top,20)
                            .foregroundColor(currentTab == tab ? Color(red: 0, green: 0.4, blue: 1)
 : Color(red: 0.51, green: 0.58, blue: 0.68))
                    }
                }
               
            }
            .frame(maxWidth: .infinity, maxHeight: 40)
                        .background(Color.black)
                        .overlay(
                            LinearGradient(gradient: Gradient(colors: [Color.gray.opacity(0.3), Color.clear]), startPoint: .top, endPoint: .bottom)
                                .frame(height: 5)
                                .padding(.top, -15) // Move the gradient upwards to create a shadow effect
                        )
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

enum Tab: String,CaseIterable {
    
    case Map = "1"
    case Test = "2"
    case Speedometr = "3"
    case Activity = "4"
    case Settings = "5"
}
