//
//  UserProfileSetting.swift
//  EnvironmentObject_Study-SwiftUI
//
//  Created by JunHyuk Lim on 1/9/2022.
//

import Foundation

final class UserProfileSettings : ObservableObject {
    @Published var name : String = ""
    @Published var age : Int = 0
    
    func haveBirthdayParty() {
        age += 1
    }
}
