//
//  LoginRequest.swift
//  BCPlan-iOS
//
//  Created by Jimmy McDermott on 11/28/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import Foundation
import Alamofire

struct LoginRequest: APIRequestRepresentable {
    typealias CodableType = User
    var method: Alamofire.HTTPMethod = .post
    var endpoint: API.Endpoint = .login
    var isAuthedRequest = false
}
