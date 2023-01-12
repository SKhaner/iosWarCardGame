//
//  gamePage.swift
//  war-challange
//
//  Created by Seeam Khan on 1/11/23.
//

import SwiftUI

struct gamePage: View {
    //initialize to back of cards and player scores to 0
    @State private var playerCard = "back"
    @State private var cpuCard = "back"
    @State private var playerScore:Int = 0
    @State private var cpuScore:Int = 0
    @State var p1Name: String
    @State var p2name: String
    
    var body: some View {
        ZStack{
            //background
            Image("background").ignoresSafeArea()
            //vertical stack to hold all elements
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                //horiontal stack that displays two card piles
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                //Image("dealbutton")//change to button element
                Button {
                    //generate a random number between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    //Update cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    //Update score
                    if(playerRand > cpuRand){
                        playerScore += 1
                    }
                    if(cpuRand > playerRand){
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }
                
                Spacer()
                //hstack to hold scores, each a vstack
                HStack{
                    Spacer()
                    VStack{
                        Text(p1Name)
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -3.5)
                        Text(String(playerScore))//make this a String var so it can be chnages
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                    VStack{
                        Text(p2name)
                            .font(.title2)
                            .foregroundColor(Color.white)
                            .padding(.bottom, -3.5)
                        Text(String(cpuScore))//make this a String var so it can be chnages
                            .font(.largeTitle)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Button {
                    playerScore = 0
                    cpuScore = 0
                    playerCard = "back"
                    cpuCard = "back"
                } label: {
                    Text("Reset")
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 5.0/*@END_MENU_TOKEN@*/)
                        .background(
                            Color.red
                                .cornerRadius(10)
                                .shadow(radius: 10)
                        )
                }
                Spacer()
            }
        }
    }
    
}

