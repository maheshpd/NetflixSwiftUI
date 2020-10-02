//
//  ContentView.swift
//  NetflixSwiftUI
//
//  Created by Mahesh Prasad on 30/09/20.
//  Copyright © 2020 CreatesApp. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            Home().navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
        }.preferredColorScheme(.dark)
//
//        Detail(show: .constant(false))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var txt = ""
    @State var show = false
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack(spacing: 10) {
                Button(action: {
                    
                }) {
                    
                    Image("menu").renderingMode(.original)
                }
                
                Image("logo")
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    
                    Image("Notifications").renderingMode(.original)
                }
                
            }
            
            HStack(spacing: 15) {
                Image(systemName: "magnifyingglass").font(.body)
                TextField("Search For Movies, Shows", text: $txt)
            }.padding()
                .background(Color("Color"))
            
            
            
            ScrollView(.vertical, showsIndicators: false) {
                
                
                VStack(alignment: .leading, spacing: 15) {
                    Text("Netflix Originals").font(.title)
                    
                    ZStack {
                        
                        NavigationLink(destination: Detail(show: $show), isActive: $show)  {
                            Text("")
                        }
                        
                        Image("top").resizable().onTapGesture {
                            self.show.toggle()
                        }
                        
                        VStack {
                            Spacer()
                            HStack {
                                VStack(alignment: .leading, spacing: 10) {
                                    Text("Marvel's The Defenders").font(.body)
                                    Text("Season 1").font(.caption)
                                }
                                
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    
                                    Image("play").renderingMode(.original)
                                }
                            }
                        }.padding(.bottom)
                        
                    }.frame(height: 190)
                    
                    HStack{
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            
                            Text("View All")
                        }.foregroundColor(Color("Color1"))
                    }
                    
                    Text("Continue Watching")
                    midleView()
                    
                    BottomView()
                }
                
                
            }.padding(.bottom, 25)
            
            
        }.padding(.horizontal)
            .edgesIgnoringSafeArea(.bottom)
            .preferredColorScheme(.dark)
    }
}

struct midleView: View {
    var body: some View {
        VStack(spacing: 15) {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    
                    ForEach(datas) { i in
                        VStack(alignment: .leading,spacing: 0){
                            
                            Image(i.image)
                            
                            HStack {
                                Spacer()
                                
                                Button(action: {
                                    
                                }) {
                                    Image("play").renderingMode(.original)
                                        .resizable().frame(width: 25, height: 25)
                                }.padding(.top, -12)
                            }
                            
                            VStack(alignment: .leading) {
                                Text(i.name)
                                Text(i.epname).foregroundColor(.gray)
                                
                                ZStack{
                                    
                                    Capsule().fill(Color.gray)
                                    HStack {
                                        Capsule().fill(Color("Color1")).frame(width: i.percentage)
                                        
                                        Spacer()
                                    }
                                    
                                    
                                }.frame(height: 5)
                            }.padding(.horizontal, 10)
                                .padding(.bottom, 10)
                            
                        }.background(Color("Color")).padding(.bottom)
                    }
                    
                    
                    
                }
            }
        }
    }
}

struct BottomView : View {
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text("Explore By Genres")
            
            HStack(spacing: 15) {
                Button(action: {
                    
                }) {
                    Text("Action").padding()
                }.foregroundColor(.white)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Action").padding()
                }.foregroundColor(.white)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Action").padding()
                }.foregroundColor(.white)
                    .background(Color("Color1"))
                    .cornerRadius(10)
            }.padding(.horizontal, 20)
            
            Text("Trending")
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    ForEach(bottom, id: \.self) { i in
                        Image(i)
                    }
                }
            }
        }
    }
}

struct Detail: View {
    
    @Binding var show: Bool
    
    var body: some View {
        VStack (spacing: 15) {
            HStack(spacing: 10) {
                Button(action: {
                    self.show.toggle()
                }) {
                    Image("back").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image("share").renderingMode(.original)
                }
                
                Button(action: {
                    
                }) {
                    Image("info").renderingMode(.original)
                }
            }.padding()
            
            ZStack{
                Image("detail").resizable()
                VStack(alignment: .leading, spacing: 12) {
                    
                    Spacer()
                    
                    Text("TV SERIES . ACTION").foregroundColor(.white)
                    Text("Marvel's The Defenders").foregroundColor(.white).font(.title)
                    
                    HStack(spacing: 10) {
                        Text("98% Match").foregroundColor(.green)
                        Text("2019")
                        Image("hd")
                        
                        Spacer()
                    }.foregroundColor(.white)
                }.padding()
                
            }.frame(height: 490)
                .navigationBarTitle("")
                .navigationBarHidden(true)
                .navigationBarBackButtonHidden(true)
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading, spacing: 15) {
                    HStack{
                        Button(action: {
                            
                        }) {
                            
                            HStack(spacing: 10) {
                                Image(systemName: "play.fill")
                                Text("Play")
                            }.padding()
                            
                        }.foregroundColor(.white)
                        .background(Color("Color1"))
                        .cornerRadius(10)
                        
                        Button(action: {
                            
                        }) {
                            
                            HStack(spacing: 10) {
                                Image(systemName: "plus")
                                Text("ADD TO LIST")
                            }.padding()
                            
                        }.foregroundColor(.white)
                        .background(Color("Color"))
                        .cornerRadius(10)
                        Spacer()
                    }
                    HStack {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Episodes")
                            Text("Here are the episodes season 1").foregroundColor(.gray)
                            
                            Spacer()
                            
                            Button(action: {
                                
                            }) {
                                
                                HStack(spacing: 10) {
                                    Image(systemName: "chevron.down")
                                    Text("Season 1")
                                }.padding()
                                
                            }.foregroundColor(.white)
                            .background(Color("Color"))
                            .cornerRadius(10)
                            
                        }
                    }
                    
                    Divider()
                    
                    ForEach(episodes) { i in
                        VStack{
                            HStack {
                                VStack {
                                    Image(i.image)
                                    VStack(alignment: .leading, spacing: 10) {
                                        Text(i.name)
                                        Text(i.time)
                                    }
                                    
                                    Spacer()
                                    
                                    Button(action: {
                                        
                                    }) {
                                        
                                        Image("download").renderingMode(.original)
                                    }
                                    
                                }
                            }
                        }
                        
                    }
                    
                    
                }
            }.padding(.top, 15)
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}



struct type: Identifiable  {
    var id: Int
    var name: String
    var epname: String
    var image: String
    var percentage: CGFloat
}

var datas = [type(id: 0, name: "Ghoul", epname: "Ep - S1", image: "m1", percentage: 45),
             type(id: 1, name: " 13 Reasons Why", epname: "Ep - S2", image: "m2", percentage: 90)]

var bottom = ["b1", "b2"]

struct episodetype: Identifiable {
    var id: Int
    var name: String
    var time: String
    var image: String
    var desc: String
}

var episodes = [episodetype(id: 0, name: "The 'H' Word", time: "51 min", image: "d1", desc: "Matt Murdock, Jessica Jones, Luke Cage and Danny Rand investigate criminals and fight injustice, unaware their paths are about to cross."),
                episodetype(id: 1, name: "Mean RIght Hook", time: "44 min", image: "d2", desc: "As a new conspiracy takes shape, Matt finds old habits are hard to break, Jessica gets in over her head, Luke tracks a lead, and Danny meets his match.")]
