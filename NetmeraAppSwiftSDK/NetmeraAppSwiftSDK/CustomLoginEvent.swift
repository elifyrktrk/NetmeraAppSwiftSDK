//
//  CustomLoginEvent.swift
//  NetmeraAppSwiftSDK
//
//  Created by Elif Yürektürk on 14.12.2023.
//

import Foundation
import NetmeraAnalytic

class CustomLoginEvent: NetmeraLoginEvent {

  open class override var key: String {
    "fiwhn"
  }

  public var userName: String?

  public init(userId: String? = nil,
              userName: String? = nil) {
    self.userName = userName
    super.init(userId: userId)
  }

  required init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.userName = try container.decodeIfPresent(String.self, forKey: .userName)
    try super.init(from: decoder)
  }

  override func encode(to encoder: Encoder) throws {
    try super.encode(to: encoder)
    var container = encoder.container(keyedBy: CodingKeys.self)
    try container.encode(userName, forKey: .userName)
  }

  enum CodingKeys: String, CodingKey {
    case userName = "ea"
  }
}
