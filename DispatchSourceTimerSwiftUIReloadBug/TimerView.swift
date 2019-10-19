//
//  TimerView.swift
//  DispatchSourceTimerSwiftUIReloadBug
//
//  Created by Dominik Butz on 19/10/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    

    @EnvironmentObject  var watchTimer: WatchTimer

    var body: some View {
        VStack {
                 
              HStack {
                VStack {
                    Text("Timer View").font(.headline).padding()
                     Text(self.watchTimer.timeDisplayString).onTapGesture {
                        if self.watchTimer.paused == false {
                            self.watchTimer.pause()
                        } else {
                            self.watchTimer.start()
                        }
                        
                    }
                    
                }

            }
        }.onAppear(perform: {
           
            if self.self.watchTimer.isActive == false {
                self.watchTimer.start()
            }
            
        })
    }
}
