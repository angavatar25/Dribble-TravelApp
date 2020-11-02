//
//  DetailView.swift
//  TravelApp
//
//  Created by Ananda Afryan Gemilang on 28/10/20.
//  Copyright © 2020 Ananda Afryan Gemilang. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    @State var isExpanded: Bool = false
    let data: CardModel
    let buttonColour = Color("ButtonColour")
    let searchBarColor = Color("SearchIconColor")
    @Binding var isNavigationBarHidden: Bool
    var body: some View {
        ScrollView{
            VStack {
                ZStack {
                    VStack {
                        VStack {
                            HStack {
                                Image(data.image)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                            }
                            .frame(minWidth: 0,
                                maxWidth: .infinity,
                                minHeight: 400,
                                maxHeight: .infinity,
                                alignment: .topLeading
                            )
                            VStack(alignment: .leading) {
                                VStack{
                                    Text(data.place)
                                        .font(.system(size: 26))
                                        .fontWeight(.bold)
                                }
                                Spacer()
                                HStack {
                                    ForEach(0..<data.starRating) { star in
                                        Image(systemName: "star.fill")
                                            .resizable()
                                            .frame(width: 12, height: 12)
                                            .foregroundColor(.yellow)
                                    }
                                    Text("1.3 KM to the centre")
                                        .foregroundColor(.gray)
                                        .font(.caption)
                                    Spacer()
                                }
                            }.padding([.leading, .trailing, .bottom])
                        }
                        ImageComponent()
                        VStack(alignment: .leading) {
                          Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint ")
                        }.padding([.leading, .trailing])
                    }
                    VStack {
                        HStack {
                            Button(action: {}) {
                                Image("left-arrow")
                                    .renderingMode(.original)
                                .resizable()
                                    .frame(width: 30, height: 30)
                                Spacer()
                            }
                        }
                        Spacer()
                    }.padding(.leading,20)
                    .padding(.top, 60)
                }
            }
            ZStack {
                Spacer()
                HStack {
                    Text("$120.00")
                    Text("per night")
                    Spacer()
                    Button(action:{}, label: {
                        Text("Book Now")
                            .foregroundColor(Color.white)
                        .frame(width: 120, height: 50)
                        
                    }).background(buttonColour)
                    .cornerRadius(10)
                    .padding()
                }.padding([.leading, .trailing])
                    .padding(.bottom, 40)
                    .overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(searchBarColor), alignment: .top)
            }
        }.edgesIgnoringSafeArea(.all)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: CardData[0])
    }
}

struct PageView: View {
    let starCount: Int = 5
    let data: CardModel
    var body: some View {
        VStack {
            HStack {
                Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
            }
            .frame(minWidth: 0,
                maxWidth: .infinity,
                minHeight: 400,
                maxHeight: .infinity,
                alignment: .topLeading
            )
            VStack(alignment: .leading) {
                VStack{
                    Text(data.place)
                        .font(.system(size: 26))
                        .fontWeight(.bold)
                }
                Spacer()
                HStack {
                    ForEach(0..<data.starRating) { star in
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 12, height: 12)
                            .foregroundColor(.yellow)
                    }
                    Text("1.3 KM to the centre")
                        .foregroundColor(.gray)
                        .font(.caption)
                    Spacer()
                }
            }.padding([.leading, .trailing, .bottom])
        }
    }
}

struct ImageComponent: View {
    var body: some View {
        HStack {
            Image("girlPhoto")
            .resizable()
            .frame(width: 40, height: 60)
            .clipShape(Circle())
            
            Image("girlPhoto")
            .resizable()
            .frame(width: 40, height: 60)
            .clipShape(Circle())
            
            Image("girlPhoto")
            .resizable()
            .frame(width: 40, height: 60)
            .clipShape(Circle())
            
            Text("+47 reviewed this")
                .foregroundColor(.gray)
                .font(.caption)
            Spacer()
        }.padding([.leading, .trailing])
    }
}
