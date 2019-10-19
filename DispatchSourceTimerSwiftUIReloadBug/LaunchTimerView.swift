//
//  WorkoutSelectionView.swift
//  Progressive
//
//  Created by Dominik Butz on 18/9/2019.
//  Copyright © 2019 Duoyun. All rights reserved.
//

import SwiftUI

struct LaunchTimerView: View {

    @Binding var timerViewPresenting: Bool

    
    var body: some View {

        NavigationView {
            VStack {
                Button(action: {
                  //  if self.workoutModel.workoutInProgress == false {
                        self.timerViewPresenting = true
                       
                  //  }
                }) {
                    Text("Launch Timer").font(.headline).background(Color.accentColor.opacity(0.4)).foregroundColor(.accentColor).clipShape(Capsule()).padding()
                }

                
            }.navigationBarTitle("LaunchTimerView")
            
        }
        
        
    }
}
