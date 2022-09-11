//
//  ContentView.swift
//  Habitly
//
//  Created by newbie on 01.09.2022.
//

import SwiftUI

struct ContentView: View {
  
  private var activities = [Activity(title: "Title", description: "Description", timesExecuted: 10, timesInRow: 10)]
  
  var body: some View {
    NavigationView {
      List {
        ForEach(activities) { activity in
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
      .navigationTitle("Habitly")
      .toolbar {
        Button {
          print("add")
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
