//
//  Settings.swift
//  Speedometr
//
//  Created by Алексей Зарицький on 16/11/2023.
//

import SwiftUI

struct Settings: View {
    @State private var isDetailUnitPresented = false
    @State private var isSpeachDetailPresented = false
    @State private var isSpeedScDetailPresented = false
    var body: some View {
        ZStack {
            Color.black // Set the background color to black
            .edgesIgnoringSafeArea(.all) // Ignore safe area for full coverage
            
            Text("Activity")
            .font(
            Font.custom("DM Sans", size: 22)
            .weight(.medium)
            )
            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
            .padding(.bottom,700)
            
            VStack {
                HStack {
                    Image("Privacy")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24,height: 24)
                    Text("Privacy Policy")
                    .font(
                    Font.custom("DM Sans", size: 20)
                    .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .padding(.leading,8)
                    
                    Spacer()
                    
                    Button {
                        
                    }label: {
                        Image(systemName: "chevron.forward")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                Rectangle()
                .foregroundColor(.clear)
                .frame(width: 326, height: 0.33)
                .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                .padding(.top,5)
                
                
                HStack {
                    Image("Term of Use")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 24,height: 24)
                    Text("Terms Of Use")
                    .font(
                    Font.custom("DM Sans", size: 20)
                    .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    .padding(.leading,8)
                    
                    Spacer()
                    
                    Button {
                        
                    }label: {
                        Image(systemName: "chevron.forward")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                .padding(.bottom,5)
            }
            .padding(12)
            .frame(width: 350, alignment: .topLeading)
            .background(Color(red: 0.15, green: 0.15, blue: 0.15))
            .cornerRadius(12)
           // .padding(.top,10)

            VStack{
                
                
                VStack(alignment: .leading) {
                    //Units
                    HStack {
                        Image("Units")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24,height: 24)
                        Text("Units")
                        .font(
                        Font.custom("DM Sans", size: 20)
                        .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.leading,8)
                        
                        Spacer()
                        
                        Text("Mi/hr")
                        .font(Font.custom("DM Sans", size: 16))
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.trailing,5)
                        
                        
                        Button {
                            isDetailUnitPresented.toggle()
                        }label: {
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.33)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                    .padding(.top,5)
                    
                    //Speach
                    HStack {
                        Image("Speach")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24,height: 24)
                        Text("Speach interval")
                        .font(
                        Font.custom("DM Sans", size: 20)
                        .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.leading,8)
                        
                        Spacer()
                        
                        Text("10 S")
                        .font(Font.custom("DM Sans", size: 16))
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.trailing,5)
                        
                        Button {
                            isSpeachDetailPresented.toggle()
                        }label: {
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.33)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                    .padding(.top,5)
                    
                    //Speed Scale
                    HStack {
                        Image("Spscale")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24,height: 24)
                        Text("Speed scale")
                        .font(
                        Font.custom("DM Sans", size: 20)
                        .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.leading,8)
                        
                        Spacer()
                        
                        Text("0 - 180")
                        .font(Font.custom("DM Sans", size: 16))
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.trailing,5)
                        Button {
                            isSpeedScDetailPresented.toggle()
                        }label: {
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.33)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                    .padding(.top,5)
                    
                    //Speed limit
                    HStack {
                        Image("Splimit")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24,height: 24)
                        Text("Speed limit")
                        .font(
                        Font.custom("DM Sans", size: 20)
                        .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.leading,8)
                        
                        Spacer()
                        
                        Text("90")
                        .font(Font.custom("DM Sans", size: 16))
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        .padding(.trailing,5)
                        Button {
                            
                        }label: {
                            Image(systemName: "chevron.forward")
                                .font(.system(size: 16))
                                .foregroundColor(.white)
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    .padding(.bottom,5)
                }
                .padding(12)
                .frame(width: 350, alignment: .topLeading)
                .background(Color(red: 0.15, green: 0.15, blue: 0.15))
                .cornerRadius(12)
                
                .fullScreenCover(isPresented: $isDetailUnitPresented) {
                    DetailUnit()
                           }
                .fullScreenCover(isPresented: $isSpeachDetailPresented) {
                    SpeachDetail()
                           }
                .fullScreenCover(isPresented: $isSpeedScDetailPresented) {
                        SpeedScDetail()
                               }
                
                .navigationBarTitle("") // Hide the navigation bar title
                .navigationBarHidden(true)
            }
            .padding(.bottom,380)
            
        }
        
    }
}


struct DetailUnit: View {
    @State private var isSettingsVisable = false
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isChecked") private var isChecked = false
    @AppStorage("isChecked1") private var isChecked1 = false
    @AppStorage("isChecked2") private var isChecked2 = false
    @AppStorage("isChecked3") private var isChecked3 = false
    var body: some View {
        NavigationView{
            ZStack {
                Color.black // Set the background color to black
                    .edgesIgnoringSafeArea(.all)
                
                HStack(alignment: .center) {
                    Button {
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Image(systemName: "arrow.backward")
                            .font(.system(size: 24))
                            .frame(width: 24,height: 24)
                            .foregroundColor(.white)
                            .padding(8)
                            .background(Color(red: 0, green: 0.4, blue: 1))
                            .cornerRadius(12)
                    }
                    Spacer().frame(width: 100)
                    
                    Text("Units")
                        .font(
                            Font.custom("DM Sans", size: 22)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    
                    
                }
                .padding(.trailing,140)
                .padding(.bottom,700)
                VStack() {
                    
                    HStack {
                        Text("Mi/Hr")
                            .font(
                                Font.custom("DM Sans", size: 20)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        
                        Spacer()
                        
                        Button(action: {
                            isChecked.toggle()
                        }) {
                            Image(isChecked ? "check1" : "square")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.blue) // Customize checkbox color
                                .frame(width: 24, height: 24)
                                .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                            
                                .cornerRadius(4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 4)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                    
                                )
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    .padding(.top,5)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 326, height: 0.4)
                        .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                    
                    HStack {
                        Text("Km/Hr")
                            .font(
                                Font.custom("DM Sans", size: 20)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        
                        Spacer()
                        
                        Button(action: {
                            isChecked1.toggle()
                        }) {
                            Image(isChecked1 ? "check1" : "square")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.blue) // Customize checkbox color
                                .frame(width: 24, height: 24)
                                .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                            
                                .cornerRadius(4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 4)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                    
                                )
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    .padding(.top,5)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 326, height: 0.3)
                        .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                    
                    HStack {
                        Text("M/S")
                            .font(
                                Font.custom("DM Sans", size: 20)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        
                        Spacer()
                        
                        Button(action: {
                            isChecked2.toggle()
                        }) {
                            Image(isChecked2 ? "check1" : "square")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.blue) // Customize checkbox color
                                .frame(width: 24, height: 24)
                                .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                            
                                .cornerRadius(4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 4)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                    
                                )
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    .padding(.top,5)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 326, height: 0.34)
                        .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                    
                    HStack {
                        Text("Knots")
                            .font(
                                Font.custom("DM Sans", size: 20)
                                    .weight(.medium)
                            )
                            .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                        
                        Spacer()
                        
                        Button(action: {
                            isChecked3.toggle()
                        }) {
                            Image(isChecked3 ? "check1" : "square")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color.blue) // Customize checkbox color
                                .frame(width: 24, height: 24)
                                .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                            
                                .cornerRadius(4)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 4)
                                        .inset(by: 0.5)
                                        .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                    
                                )
                        }
                        
                    }
                    .padding(.top,5)
                    .padding(.horizontal,8)
                    .padding(.bottom,5)
                    
                    
                }
                .padding(12)
                .frame(width: 350, alignment: .topLeading)
                .background(Color(red: 0.15, green: 0.15, blue: 0.15))
                .cornerRadius(12)
                
                .padding(.bottom,380)
            }
        }
        .navigationBarHidden(true) // Hide the navigation bar
    }
}

struct SpeachDetail: View {
    @State private var isSettingsVisable = false
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isCheckedSp1") private var isCheckedSp1 = false
    @AppStorage("isCheckedSp2") private var isCheckedSp2 = false
    @AppStorage("isCheckedSp3") private var isCheckedSp3 = false
    @AppStorage("isCheckedSp4") private var isCheckedSp4 = false
    @AppStorage("isCheckedSp5") private var isCheckedSp5 = false

    var body: some View {
        ZStack {
            Color.black // Set the background color to black
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment: .center) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    Image(systemName: "arrow.backward")
                        .font(.system(size: 24))
                        .frame(width: 24,height: 24)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color(red: 0, green: 0.4, blue: 1))
                        .cornerRadius(12)
                }
                Spacer().frame(width: 100)
                
                Text("Units")
                    .font(
                        Font.custom("DM Sans", size: 22)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                
                
            }
            .padding(.trailing,140)
            .padding(.bottom,700)
            
            VStack() {
                
                HStack {
                    Text("Never")
                        .font(
                            Font.custom("DM Sans", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    
                    Spacer()
                    
                    Button(action: {
                        isCheckedSp1.toggle()
                    }) {
                        Image(isCheckedSp1 ? "check1" : "square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.blue) // Customize checkbox color
                            .frame(width: 24, height: 24)
                            .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                        
                            .cornerRadius(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                
                            )
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                .padding(.top,5)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.4)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                
                HStack {
                    Text("Every 5s")
                        .font(
                            Font.custom("DM Sans", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    
                    Spacer()
                    
                    Button(action: {
                        isCheckedSp2.toggle()
                    }) {
                        Image(isCheckedSp2 ? "check1" : "square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.blue) // Customize checkbox color
                            .frame(width: 24, height: 24)
                            .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                        
                            .cornerRadius(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                
                            )
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                .padding(.top,5)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.3)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                
                HStack {
                    Text("Every 10s")
                        .font(
                            Font.custom("DM Sans", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    
                    Spacer()
                    
                    Button(action: {
                        isCheckedSp3.toggle()
                    }) {
                        Image(isCheckedSp3 ? "check1" : "square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.blue) // Customize checkbox color
                            .frame(width: 24, height: 24)
                            .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                        
                            .cornerRadius(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                
                            )
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                .padding(.top,5)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.34)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                
                HStack {
                    Text("Every 30s")
                        .font(
                            Font.custom("DM Sans", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    
                    Spacer()
                    
                    Button(action: {
                        isCheckedSp5.toggle()
                    }) {
                        Image(isCheckedSp5 ? "check1" : "square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.blue) // Customize checkbox color
                            .frame(width: 24, height: 24)
                            .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                        
                            .cornerRadius(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                
                            )
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                .padding(.top,5)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 326, height: 0.34)
                    .background(Color(red: 0.35, green: 0.35, blue: 0.35))
                
                HStack {
                    Text("Every 60s")
                        .font(
                            Font.custom("DM Sans", size: 20)
                                .weight(.medium)
                        )
                        .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                    
                    Spacer()
                    
                    Button(action: {
                        isCheckedSp4.toggle()
                    }) {
                        Image(isCheckedSp4 ? "check1" : "square")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 24, height: 24)
                            .foregroundColor(Color.blue) // Customize checkbox color
                            .frame(width: 24, height: 24)
                            .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                        
                            .cornerRadius(4)
                            .overlay(
                                RoundedRectangle(cornerRadius: 4)
                                    .inset(by: 0.5)
                                    .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                                
                            )
                    }
                    
                }
                .padding(.top,5)
                .padding(.horizontal,8)
                .padding(.bottom,5)
                
                
            }
            .padding(12)
            .frame(width: 350, alignment: .topLeading)
            .background(Color(red: 0.15, green: 0.15, blue: 0.15))
            .cornerRadius(12)
            
            .padding(.bottom,340)
        }
        .navigationBarHidden(true) // Hide the navigation bar
    }
}


struct SpeedScDetail: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isCheckedSpSc1") private var isCheckedSpSc1 = false
    @AppStorage("isCheckedSpSc2") private var isCheckedSpSc2 = false
    @AppStorage("isCheckedSpSc3") private var isCheckedSpSc3 = false
    @AppStorage("isCheckedSpSc4") private var isCheckedSpSc4 = false
    @AppStorage("isCheckedSpSc5") private var isCheckedSpSc5 = false
    @AppStorage("isCheckedSpSc6") private var isCheckedSpSc6 = false
    @AppStorage("isCheckedSpSc7") private var isCheckedSpSc7 = false
    @AppStorage("isCheckedSpSc8") private var isCheckedSpSc8 = false
    @AppStorage("isCheckedSpSc9") private var isCheckedSpSc9 = false
    var body: some View {
        ZStack{
            Color.black // Set the background color to black
                .edgesIgnoringSafeArea(.all)
            
            HStack(alignment: .center) {
                Button {
                    presentationMode.wrappedValue.dismiss()
                }label: {
                    Image(systemName: "arrow.backward")
                        .font(.system(size: 24))
                        .frame(width: 24,height: 24)
                        .foregroundColor(.white)
                        .padding(8)
                        .background(Color(red: 0, green: 0.4, blue: 1))
                        .cornerRadius(12)
                }
                Spacer().frame(width: 100)
                
                Text("Units")
                    .font(
                        Font.custom("DM Sans", size: 22)
                            .weight(.medium)
                    )
                    .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))
                
                
            }
            .padding(.trailing,140)
            .padding(.bottom,700)
            
            VStack() {
                RangeCheckboxView(text: "0 - 12", isCheckedSpSc: $isCheckedSpSc1)
                RangeCheckboxView(text: "0 - 24", isCheckedSpSc: $isCheckedSpSc2)
                RangeCheckboxView(text: "0 - 60", isCheckedSpSc: $isCheckedSpSc3)
                RangeCheckboxView(text: "0 - 120", isCheckedSpSc: $isCheckedSpSc4)
                RangeCheckboxView(text: "0 - 180", isCheckedSpSc: $isCheckedSpSc5)
                RangeCheckboxView(text: "0 - 240", isCheckedSpSc: $isCheckedSpSc6)
                RangeCheckboxView(text: "0 - 300", isCheckedSpSc: $isCheckedSpSc7)
                RangeCheckboxView(text: "0 - 420", isCheckedSpSc: $isCheckedSpSc8)
                // Last checkbox without overlay
                 HStack {
                     Text("0 - 600")
                         .font(Font.custom("DM Sans", size: 20).weight(.medium))
                         .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))

                     Spacer()

                     Image(isCheckedSpSc9 ? "check1" : "square")
                         .resizable()
                         .aspectRatio(contentMode: .fit)
                         .frame(width: 24, height: 24)
                         .foregroundColor(Color.blue)
                         .frame(width: 24, height: 24)
                         .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                         .cornerRadius(4)
                         .overlay(
                             RoundedRectangle(cornerRadius: 4)
                                 .inset(by: 0.5)
                                 .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                         )
                 }
                 .padding(.top, 5)
                 .padding(.horizontal, 8)
                 .padding(.top, 5)
                 
            }
            .padding(12)
            .frame(width: 350, alignment: .topLeading)
            .background(Color(red: 0.15, green: 0.15, blue: 0.15))
            .cornerRadius(12)
            
            .padding(.bottom,100)
        }
        .navigationBarHidden(true) // Hide the navigation bar
    }
}

struct RangeCheckboxView: View {
    let text: String
    @Binding var isCheckedSpSc: Bool

    var body: some View {
        HStack {
            Text(text)
                .font(Font.custom("DM Sans", size: 20).weight(.medium))
                .foregroundColor(Color(red: 0.98, green: 0.98, blue: 0.98))

            Spacer()

            Button(action: {
                isCheckedSpSc.toggle()
            }) {
                Image(isCheckedSpSc ? "check1" : "square")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .foregroundColor(Color.blue)
                    .frame(width: 24, height: 24)
                    .background(Color(red: 0.05, green: 0.05, blue: 0.05))
                    .cornerRadius(4)
                    .overlay(
                        RoundedRectangle(cornerRadius: 4)
                            .inset(by: 0.5)
                            .stroke(Color(red: 0.51, green: 0.58, blue: 0.68), lineWidth: 1)
                    )
            }
        }
        .padding(.top, 5)
        .padding(.horizontal, 8)
        .padding(.top, 5)
        Rectangle()
            .foregroundColor(.clear)
            .frame(width: 326, height: 0.4)
            .background(Color(red: 0.35, green: 0.35, blue: 0.35))
    }
}




struct Settings_Previews: PreviewProvider {
    static var previews: some View {
               return Settings()
    }
}
