//
//  ContentView.swift
//  Habitly
//
//  Created by newbie on 01.09.2022.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var userActivities = UserActivities()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(userActivities.activities) { activity in
                    NavigationLink {
                        ActivityView(activity: activity)
                    } label: {
                        HStack {
                            VStack(alignment: .leading) {
                                Text(activity.title)
                                Spacer()
                                Text(activity.description)
                            }
                            Spacer()
                            VStack(alignment: .trailing) {
                                Text("Times executed: \(activity.timesExecuted)")
                                Spacer()
                                Text("Times in a row: \(activity.timesInRow)")
                            }
                        }
                        .padding(.vertical)
                    }
                }
            }
            .navigationTitle("Habitly")
            .toolbar {
                NavigationLink {
                   ActivityFormView(userActivities: userActivities)
                } label: {
                    Text("Add")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
