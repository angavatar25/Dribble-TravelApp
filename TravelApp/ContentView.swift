//
//  ContentView.swift
//  TravelApp
//
//  Created by Ananda Afryan Gemilang on 28/10/20.
//  Copyright © 2020 Ananda Afryan Gemilang. All rights reserved.
//

import Foundation
import SwiftUI

struct ContentView: View {
    let name: String = "Jane"
    let searchBarColor = Color("SearchIconColor")
    
    @State var isNavigationBarHidden: Bool = true
    var body: some View {
        NavigationView{
            ScrollView {
    //            NavigationBar
                VStack {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Welcome back,").font(.system(size: 24)).fontWeight(.bold)
                            Text(name).font(.system(size: 24)).fontWeight(.bold)
                        }
                        Spacer()
                        Image(systemName: "magnifyingglass.circle.fill")
                        .resizable()
                        .frame(width: 40, height: 40)
                            .foregroundColor(searchBarColor)
                    }.padding()
                    HStack {
                        Text("Places").fontWeight(.bold)
                        Spacer()
                        Button(action: {}) {
                            Text("See all")
                            .foregroundColor(.gray)
                        }
                    }
                    .padding([.bottom, .leading, .trailing])
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 10) {
                            ForEach(CardData) { cardData in
                                NavigationLink(destination: DetailView(isNavigationBarHidden: self.$isNavigationBarHidden)) {
                                    CardComponent(data: cardData)
                                }
                            }
                        }.padding([.leading, .trailing, .bottom])
                    })
                    HStack {
                        Text("Stories").fontWeight(.bold)
                        Spacer()
                    }.padding([.top, .leading])
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 10) {
                            ForEach(StoryData) { cardData in
                                StoriesComponent(data: cardData)
                            }
                        }.padding([.leading, .top, .bottom])
                    })
                    VStack {
                        ForEach(0..<2) { _ in
                            HStack(alignment: .center) {
                                ForEach(0..<2) { _ in
                                    Image("Kos")
                                    .resizable()
                                    .scaledToFit()
                                    .cornerRadius(20)
                                }
                            }
                        }
                    }.padding()
                }
            }.background(Color.white)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(self.isNavigationBarHidden)
            .onAppear{
                self.isNavigationBarHidden = true
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct StoriesComponent: View {
    let data: StoryModel
    var body: some View {
        HStack {
            ZStack {
                Image(self.data.image)
                .resizable()
                .frame(width: 65, height: 65)
                .aspectRatio(contentMode: .fit)
                .clipShape(Circle())
                
                Circle()
                .trim(from: 0, to: 1)
                    .stroke(AngularGradient(gradient: .init(colors: [.blue, .purple, .blue]), center: .center), style: StrokeStyle(lineWidth: 3))
                    .frame(width: 75, height: 75)
            }
            Spacer()
        }
    }
}

struct CardComponent: View {
    let starCount: Int = 4
    let searchBarColor = Color("SearchIconColor")
    let data: CardModel
    var body: some View {
        VStack(alignment: .leading) {
            Image(self.data.image)
            .renderingMode(.original)
            .resizable()
            .aspectRatio(contentMode: .fit)
            VStack(alignment: .leading) {
                Text(self.data.place)
                    .font(.system(size: 12))
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                Text(self.data.category)
                    .font(.system(size: 12))
                    .foregroundColor(.gray)
                HStack(spacing: 1) {
                    ForEach(0..<self.data.starRating) {
                        items in
                        Image(systemName: "star.fill")
                        .resizable()
                        .frame(width: 10, height: 10)
                        .foregroundColor(Color.yellow)
                    }
                }
            }.padding([.leading, .trailing, .bottom], 10)
        }
        .background(Rectangle().fill(Color.white).shadow(radius: 10))
        .frame(width: 200)
    }
}
