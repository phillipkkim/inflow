//
//  ProfileView.swift
//  Inflow
//
//  Created by Tracy Cai on 2/1/22.
//

import SwiftUI

struct ProfileView: View {
    @State private var showingBookmarks = false
    
    var body: some View {
        if showingBookmarks {
            BookmarksView()
        } else {
            
            VStack{
                HStack{
                    Spacer().frame(width: 90)
                    Image("textLogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 50,height: 50)
                    Spacer().frame(width: 250)
    //                Image("bookmark")
    //                    .resizable()
    //                    .scaledToFill()
    //                    .frame(width: 30,height: 30)
                    Button {
                        showingBookmarks = !showingBookmarks
                    } label: {
                        Image(systemName: "gearshape")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 35,height: 35)
                            .foregroundColor(lightPink)
                    }
                    Spacer().frame(width: 70)
                }
                Divider().foregroundColor(.gray)
                Spacer().frame(height: 700)
                Divider().foregroundColor(.gray)
                Spacer().frame(height: 12)
                HStack{
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Image(systemName: "house")
                            .foregroundColor(lightGray)
                            .font(.system(size: 32))

                    }
                    Spacer().frame(width: 45)
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(lightGray)
                            .font(.system(size: 32))
                    }
                    Spacer().frame(width: 45)
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Image(systemName: "ellipsis.bubble")
                            .foregroundColor(lightGray)
                            .font(.system(size: 32))
                    }
                    Spacer().frame(width: 45)
                    Button {
                        print("Edit button was tapped")
                    } label: {
                        Image(systemName: "person.circle")
                            .foregroundColor(lightPink)
                            .font(.system(size: 32))
                    }
                }
            }
        }
        
    }
}
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
