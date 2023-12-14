//
//  MyNetmeraUser.swift
//  NetmeraAppSwiftSDK
//
//  Created by Elif Yürektürk on 14.12.2023.
//

import Foundation
import NetmeraCore

class MyNetmeraUser: NetmeraUser {

  var favoriteTeam: String?
  var length: Int?

  override init() {
    super.init()
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.favoriteTeam = try container.decodeIfPresent(String.self, forKey: .favoriteTeam)
    self.length = try container.decodeIfPresent(Int.self, forKey: .length)
    try super.init(from: decoder)
  }

  override func encode(to encoder: Encoder) throws {
    try super.encode(to: encoder)
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(favoriteTeam, forKey: .favoriteTeam)
    try container.encode(length, forKey: .length)
  }

  enum CodingKeys: String, CodingKey {
    case favoriteTeam = "wu"
    case length = "le"
  }
}
