//
//  Activity.swift
//  Habitly
//
//  Created by newbie on 11.09.2022.
//

import Foundation

struct Activity: Codable, Identifiable {
  var id = UUID()
  let title: String
  let description: String
  let timesExecuted: Int
  let timesInRow: Int
}

class UserActivities: ObservableObject, Codable {
  @Published var activities = [Activity]()
  
  enum CodingKeys: CodingKey {
    case activities
  }
  
  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    activities = try container.decode([Activity].self, forKey: .activities)
  }

  func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(activities, forKey: .activities)
  }
}
