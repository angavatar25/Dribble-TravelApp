//
//  InboxView.swift
//  TravelApp
//
//  Created by Ananda Afryan Gemilang on 29/10/20.
//  Copyright © 2020 Ananda Afryan Gemilang. All rights reserved.
//

import SwiftUI

struct InboxView: View {
    @State var searchInbox: String = ""
    let searchIconColor = Color("searchIconColor")
    var body: some View {
        ScrollView {
            ZStack {
                VStack(alignment: .leading) {
                    HStack {
                        Button(action: {}) {
                            Image(systemName: "arrow.left")
                                .renderingMode(.original)
                            .resizable()
                                .frame(width: 25, height: 20)
                            
                        }
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "ellipsis")
                            .resizable()
                                .foregroundColor(.gray)
                                .aspectRatio(contentMode: .fit)
                        }.frame(width: 30, height: 20)
                    }.padding(.bottom)
                    Text("Inbox")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    HStack {
                        TextField("Search Inbox", text: $searchInbox)
                            .padding(.leading, 20)
                        Image(systemName: "magnifyingglass")
                        .padding()
                    }.background(Color.white)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 2)
                    )
                    InboxComponent()
                    Spacer()
                    ArchivedMessage()
                }.padding([.leading, .trailing],20)
                .padding(.top, 60)
            }
        }.background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct InboxView_Previews: PreviewProvider {
    static var previews: some View {
        InboxView()
    }
}

struct InboxComponent: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack(alignment: .top) {
                ZStack {
                    Image("girlPhoto")
                    .resizable()
                    .frame(width: 40, height: 60)
                    .clipShape(Circle())
                    
                    Circle()
                        .fill(Color.green)
                        .frame(width: 10, height: 10)
                        .offset(x:16, y:-13)
                }
                VStack {
                    HStack {
                        Text("Ari Lennox")
                            .fontWeight(.bold)
                            .padding(.bottom, 5)
                        Spacer()
                        Text("10min").font(.callout).foregroundColor(Color.gray)
                    }.padding(.leading, 10)
                    Text("Hi! We can meet at 11am. Are you free for that meeting this week?").foregroundColor(Color.gray)
                    .lineLimit(2)
                }
                Spacer()
            }
            HStack(alignment: .top) {
                ZStack {
                    Image("girlPhoto")
                    .resizable()
                    .frame(width: 40, height: 60)
                    .clipShape(Circle())
                    
                    Circle()
                        .fill(Color.green)
                        .frame(width: 10, height: 10)
                        .offset(x:16, y:-13)
                }
                VStack {
                    HStack {
                        Text("Ari Lennox")
                            .fontWeight(.bold)
                            .padding(.bottom, 5)
                        Spacer()
                        Text("10min").font(.callout).foregroundColor(Color.gray)
                    }.padding(.leading, 10)
                    Text("Hi! We can meet at 11am. Are you free for that meeting this week?").foregroundColor(Color.gray)
                    .lineLimit(2)
                }
                Spacer()
            }
        }.padding(.top, 20)
    }
}

struct ArchivedMessage: View {
    let searchBarColor = Color("SearchIconColor")
    let orangeColor = Color("ButtonColour")
    var body: some View {
        VStack {
            HStack {
                Text("Archived Message").fontWeight(.bold).foregroundColor(orangeColor).padding([.top, .bottom], 30)
                Spacer()
            }
            HStack(alignment: .top) {
                ZStack {
                    Image("girlPhoto")
                    .resizable()
                    .frame(width: 40, height: 60)
                    .clipShape(Circle())
                    
                    Circle()
                        .fill(Color.red)
                        .frame(width: 10, height: 10)
                        .offset(x:16, y:-13)
                }
                VStack {
                    HStack {
                        Text("Ari Lennox")
                            .fontWeight(.bold)
                            .padding(.bottom, 5)
                        Spacer()
                        Text("10min").font(.callout).foregroundColor(Color.gray)
                    }.padding(.leading, 10)
                    Text("Hi! We can meet at 11am. Are you free for that meeting this week?").foregroundColor(Color.gray)
                    .lineLimit(2)
                }
                Spacer()
            }
            
        }.overlay(Rectangle().frame(width: nil, height: 1, alignment: .top).foregroundColor(searchBarColor), alignment: .top)
    }
}
