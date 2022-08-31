//
//  ThirdView.swift
//  EnvironmentObject_Study-SwiftUI
//
//  Created by JunHyuk Lim on 1/9/2022.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var userProfile : UserProfileSettings
    
    var body: some View {
        VStack(spacing: 30){
            Text("Current Age : \(userProfile.age)")
            
            Text("Third View")
            
            Button {
                userProfile.haveBirthdayParty()
            } label: {
                Text("Happy Birthday")
            }
        }
        .navigationTitle("Third View")
    }
}


struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(UserProfileSettings())
    }
}
