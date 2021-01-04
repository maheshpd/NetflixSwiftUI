//
//  Detail.swift
//  NetflixSwiftUI
//
//  Created by Mahesh Prasad on 04/01/21.
//  Copyright © 2021 CreatesApp. All rights reserved.
//

import SwiftUI

struct Detail: View {
    
    @Binding var show: Bool
    
    var body: some View {
        
        VStack (spacing: 15) {
            
            HStack(spacing: 15) {
                
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
                
            }.frame(height: UIScreen.main.bounds.height / 2)
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
                        }
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
                        
                    }.padding(.top, 15)
                    
                    Divider().padding(.vertical, 12)
                    
                    ForEach(episodes) { i in
                        
                        VStack(alignment: .leading, spacing: 15, content: {
                            
                            HStack {
                                
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
                            Text(i.desc)
                        })
                    }.padding(.bottom, 15)
                }
            }.padding([.top,.horizontal], 15)
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}


struct Detail_Previews: PreviewProvider {
    static var previews: some View {
        Detail(show: .constant(true))
    }
}
