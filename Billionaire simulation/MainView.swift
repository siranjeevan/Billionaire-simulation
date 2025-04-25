//
//  MainView.swift
//  Billionaire simulation
//
//  Created by IOSTEAM   on 4/20/25.
//

import SwiftUI
let width = UIScreen.main.bounds.width
let height = UIScreen.main.bounds.height

struct MainView: View {
    
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                VStack {
                    Text("Billionaire Simulation")
                        .font(.system(size: geometry.size.width < 600 ? 22 : 40 , weight: .black))
                        .padding(.top,geometry.size.width < 600 ? -370 : -450)
                    HStack {
                        Text("₿     |  ")
                            .font(.system(size: geometry.size.width < 600 ? 20 : 30 , weight: .black))
                        Image("coin")
                            .resizable()
                            .frame(width: geometry.size.width < 600 ? 35 : 60 , height: geometry.size.width < 600 ? 30 : 50)
                        Text("2000    |  ")
                            .font(.system(size: geometry.size.width < 600 ? 15 : 30 , weight: .black))
                        
                        Button {
                            
                        } label: {
                            Image("settings")
                                .resizable()
                                .frame(width: geometry.size.width < 600 ? 25 : 40 , height: geometry.size.width < 600 ? 25 : 40)
                        }
                    }
                    .padding()
                    .frame(width: geometry.size.width < 600 ? 230 : 450, height: geometry.size.width < 600 ? 45 : 80)
                    .background(Color.gray.opacity(0.3))
                    .cornerRadius(35)
                    .shadow(radius: 10)
                    .padding(.horizontal)
                    .offset(x : geometry.size.width < 600 ? 80 : 180 , y : geometry.size.width < 600 ? -330 : -390)
                }
                HStack {
                    Image("c1")
                        .resizable()
                        .frame(width:  geometry.size.width < 600 ? 80 : 130 , height:   geometry.size.width < 600 ? 60 : 100)
                    Text("2000")
                        .font(.system(size:  geometry.size.width < 600 ? 20 : 40 , weight: .black))
                        .foregroundColor(.white)
                        .offset(x : -20)
                }
                .offset(x :  geometry.size.width < 600 ? -10 : -20 , y :  geometry.size.width < 600 ? -100 : -130)
                
                VStack(alignment: .leading) {
                    
                    HStack{
                        
                        Button {
                            
                        } label: {
                            Image("cal")
                                .resizable()
                                .frame(width: geometry.size.width < 600 ? 65 : 100 , height: geometry.size.width < 600 ? 65 : 100)
                        }
                        .padding()
                        .frame(width: geometry.size.width < 600 ? 70 : 120, height: geometry.size.width < 600 ? 70 : 110)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(50)
                        .shadow(radius: 10)
                        .padding(.top , 20)
                        .overlay(content: {
                            Text("Daily")
                                .font(.headline)
                                .fontWeight(.black)
                                .offset(y : 80)
                        })
                        .padding(.horizontal , geometry.size.width < 600 ? -40 : -140)
                        .offset(y : geometry.size.width < 600 ? -200 : -90)
                        
                        Button {
                            
                        } label: {
                            Image("shop")
                                .resizable()
                                .frame(width: geometry.size.width < 600 ? 65 : 100 , height: geometry.size.width < 600 ? 65 : 100)
                        }
                        .padding()
                        .frame(width: geometry.size.width < 600 ? 70 : 120, height: geometry.size.width < 600 ? 70 : 110)
                        .background(Color.gray.opacity(0.5))
                        .cornerRadius(50)
                        .shadow(radius: 10)
                        .padding(.top , 20)
                        .overlay(content: {
                            Text("Shop")
                                .font(.headline)
                                .fontWeight(.black)
                                .offset(y : 80)
                        })
                        .padding(.horizontal , geometry.size.width < 600 ? -40 : -140)
                        .offset(x : geometry.size.width < 600 ? 300 : 600 , y : geometry.size.width < 600 ? -200 : -90)
                        
                        Button {
                            
                        } label: {
                            Image("rocket")
                                .resizable()
                                .frame(width: geometry.size.width < 600 ? 55 : 100 , height: geometry.size.width < 600 ? 55 : 100)
                        }
                        .padding()
                        .padding(.horizontal , geometry.size.width < 600 ? -40 : -140)
                        .offset(x : geometry.size.width < 600 ? 270 : 530 , y : geometry.size.width < 600 ? 230 : 490)
                        
                        
                        Button {
                            
                        } label: {
                            Image("thunder")
                                .resizable()
                                .frame(width: geometry.size.width < 600 ? 55 : 80 , height: geometry.size.width < 600 ? 55 : 80)
                        }
                        .padding()
                        .padding(.horizontal , geometry.size.width < 600 ? -40 : -140)
                        .offset(x : geometry.size.width < 600 ? -40 : 20 , y : geometry.size.width < 600 ? 230 : 490)
                        
                    }
                    Button {
                        
                    } label: {
                        Circle()
                            .fill(LinearGradient(colors: [Color.black , Color.white , Color.black], startPoint: .bottom, endPoint: .topLeading))
                            .frame(width: geometry.size.width < 600 ? 300 : 450, height: geometry.size.width < 600 ? 300 : 550, alignment: .center)
                            .overlay{
                                Circle()
                                    .fill(LinearGradient(colors: [Color.black , Color.white , Color.black], startPoint: .bottom, endPoint: .topLeading))
                                    .frame(width: geometry.size.width < 600 ? 250 : 400, height: geometry.size.width < 600 ? 250 : 500, alignment: .center)
                                    .overlay {
                                        Image("card1")
                                            .resizable()
                                            .frame(width: geometry.size.width < 600 ? 180 : 250, height: geometry.size.width < 600 ? 230 : 330, alignment: .center)
                                    }
                            }
                    }
                    .offset(y : geometry.size.width < 600 ? -110 : -70)
                        
                }
                .frame(maxWidth: .infinity , maxHeight: 890)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(35)
                .offset(y : 140)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .foregroundColor(.white)
            .background(Color.black)
        }
    }
}

#Preview {
    MainView()
}
