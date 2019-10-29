//
//  ContentView.swift
//  DispatchSourceTimerSwiftUIReloadBug
//
//  Created by Dominik Butz on 19/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    

    @EnvironmentObject  var watchTimer: TimerManager
    
  
    @State private var timerViewPresenting = false
    
    @State private var selectedMenuIndex = 0

    
    var body: some View {

        TabView(selection: $selectedMenuIndex) {

            LaunchTimerView(timerViewPresenting: $timerViewPresenting).tabItem {
                     Image(systemName: "1.square.fill")
                     Text("Launch Timer")
            }.tag(0)


            Text("Some view").tabItem {
                    Image(systemName: "2.square.fill")
                    Text("Bla")
            }.tag(1)


            Text("Another view").tabItem {
                     Image(systemName: "3.square.fill")
                     Text("Profile")
            }.tag(2)

        }.sheet(isPresented: self.$timerViewPresenting) {
            // the timer is passed to this view in which a Text label is updated every second to show the time
            TimerView().environmentObject(self.watchTimer)
        }

    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
