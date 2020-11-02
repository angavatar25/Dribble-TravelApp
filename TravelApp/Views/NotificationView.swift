//
//  NotificationView.swift
//  TravelApp
//
//  Created by Ananda Afryan Gemilang on 29/10/20.
//  Copyright © 2020 Ananda Afryan Gemilang. All rights reserved.
//

import SwiftUI

struct NotificationView: View {
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
                    Text("Notifications")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    ListComponent()
                    Spacer()
                }.padding([.leading, .trailing],20)
                .padding(.top, 60)
            }
        }.background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        NotificationView()
    }
}

struct ListComponent: View {
    var body: some View {
        VStack(spacing: 40) {
            HStack(alignment: .top) {
                ZStack {
                    Circle()
                        .fill(Color.purple)
                        .frame(width: 50, height: 50)
                        .shadow(color: Color.purple, radius: 4, x: 0, y: 4)
                    Image(systemName: "airplane")
                        .foregroundColor(.white)
                }
                VStack(alignment: .leading) {
                    Text("Reminder: You better be ready! Your flight is tomorrow at 9am").padding(.bottom, 5)
                    Text("1h57min ago").font(.callout).foregroundColor(Color.gray)
                }.padding(.leading, 10)
                Spacer()
            }
            HStack(alignment: .top) {
                ZStack {
                    Circle()
                        .fill(Color.orange)
                        .frame(width: 50, height: 50)
                        .shadow(color: Color.orange, radius: 4, x: 0, y: 4)
                    Image(systemName: "tag.fill")
                        .foregroundColor(.white)
                        .rotationEffect(.degrees(90))
                }
                VStack(alignment: .leading) {
                    Text("Offer: Off-Season in Formentera is really what you need! Have a look").padding(.bottom, 5)
                    Text("Yesterday, 5:47pm").font(.callout).foregroundColor(Color.gray)
                }.padding(.leading, 10)
                Spacer()
            }
        }.padding(.top, 20)
    }
}
