//
//  BottomView.swift
//  NetflixSwiftUI
//
//  Created by Mahesh Prasad on 04/01/21.
//  Copyright © 2021 CreatesApp. All rights reserved.
//

import SwiftUI

struct BottomView : View {
    var body: some View {
        VStack(alignment: .leading,spacing: 15) {
            Text("Explore By Genres")
            
            HStack{
                Button(action: {
                    
                }) {
                    Text("Action").padding()
                }.foregroundColor(.white)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                
                Spacer(minLength: 10)
                
                Button(action: {
                    
                }) {
                    Text("Adventure").padding()
                }.foregroundColor(.white)
                    .background(Color("Color1"))
                    .cornerRadius(10)
                
                
                Spacer(minLength: 10)
                
                Button(action: {
                    
                }) {
                    Text("Comedy").padding()
                }.foregroundColor(.white)
                    .background(Color("Color1"))
                    .cornerRadius(10)
            }
            
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

struct BottomView_Previews: PreviewProvider {
    static var previews: some View {
        BottomView()
    }
}
