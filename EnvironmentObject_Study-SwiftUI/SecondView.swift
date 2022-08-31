//
//  SecondView.swift
//  EnvironmentObject_Study-SwiftUI
//
//  Created by JunHyuk Lim on 1/9/2022.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 30){
            NavigationLink{
                ThirdView()
            } label : {
                Text("Third View")
            }
        }
        .navigationTitle("Second View")
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView().environmentObject(UserProfileSettings())
    }
}
