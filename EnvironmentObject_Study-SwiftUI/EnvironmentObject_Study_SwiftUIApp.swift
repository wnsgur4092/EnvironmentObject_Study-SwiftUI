//
//  EnvironmentObject_Study_SwiftUIApp.swift
//  EnvironmentObject_Study-SwiftUI
//
//  Created by JunHyuk Lim on 1/9/2022.
//

import SwiftUI

@main
struct EnvironmentObject_Study_SwiftUIApp: App {
    
    @StateObject var userProfile = UserProfileSettings()
    
    var body: some Scene {
        WindowGroup {
            FirstView().environmentObject(userProfile)
        }
    }
}
