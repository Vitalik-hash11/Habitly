//
//  ActivityView.swift
//  Habitly
//
//  Created by newbie on 12.09.2022.
//

import SwiftUI

struct ActivityView: View {
    
    var activity: Activity
    
    var body: some View {
            Text(activity.title)
            Text(activity.description)
            Text("Executed times: \(activity.timesExecuted)")
            Text("Executed times in a row: \(activity.timesInRow)")
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView(activity: Activity(title: "Title", description: "Description", timesExecuted: 10, timesInRow: 8))
    }
}
