//
//  HomeView.swift
//  Demo
//
//  Created by Mallouka on 11/25/23.
//

import SwiftUI

struct HomeView: View {
    let username: String

    var body: some View {
        VStack {
            Text("You are Logged In @\(username)")
                .font(.title)
                .padding()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(username: "TestUser")
    }
}
