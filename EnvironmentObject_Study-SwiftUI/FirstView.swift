//
//  ContentView.swift
//  EnvironmentObject_Study-SwiftUI
//
//  Created by JunHyuk Lim on 1/9/2022.
//

import SwiftUI

struct FirstView: View {
    @EnvironmentObject var userProfile : UserProfileSettings
    
    var body: some View {
        NavigationView{
            VStack(spacing: 30){
                Text("Current Age : \(userProfile.age)")
                
                NavigationLink{
                    SecondView()
                } label : {
                    Text("Second View")
                }
                
                Button {
                    userProfile.haveBirthdayParty()
                } label: {
                    Text("Happy Birthday")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environmentObject(UserProfileSettings())
    }
}
