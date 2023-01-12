//
//  ContentView.swift
//  war-challange
//
//  Created by Seeam Khan on 12/31/22.
//

import SwiftUI

struct ContentView: View {
    @State private var p1Name: String = ""
    @State private var p2Name: String = ""
    var body: some View{
        NavigationView {
            ZStack{
                Image("background").ignoresSafeArea()
                VStack{
                    Spacer()
                    Image("logo")
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    //for usernames
                    HStack{
                        Spacer()
                        Text("Player 1 name:")
                            .font(.title2)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Spacer()
                        Text("Player 2 name:")
                            .font(.title2)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                        Spacer()
                    }
                    .padding(.bottom, 65.0)
                    
                    HStack{
                        Spacer()
                        TextField("Enter Player 1 Name", text: $p1Name)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(
                                Color.orange
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                    .frame(width: 178, height: 50, alignment: .center)
                            )
                        Spacer()
                        TextField("Enter Player 2 Name", text: $p2Name)
                            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                            .background(
                                Color.orange
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                    .frame(width: 178, height: 50, alignment: .center)
                            )
                        Spacer()
                    }
                    .navigationTitle("Enter Information")
                    .offset(y: -60)
                    
                    NavigationLink {
                        gamePage(p1Name: p1Name, p2name: p2Name)
                    } label: {
                        Text("Done")
                            .font(.title3)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .background(
                                Color.orange
                                    .cornerRadius(10)
                                    .shadow(radius: 10)
                                    .frame(width: 178, height: 50, alignment: .center)
                            )
                    }
                    Spacer()
                }
            }
            
            
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
