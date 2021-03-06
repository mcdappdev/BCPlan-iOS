//
//  SuggestTime.swift
//  BCPlan-iOS
//
//  Created by Jimmy McDermott on 12/5/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import Foundation
import Alamofire

struct SuggestTime: APIRequestRepresentable {
    typealias CodableType = EmptyResponseType
    var method: Alamofire.HTTPMethod = .post
    var endpoint: API.Endpoint
    var isAuthedRequest = true
    
    init(projectId: Int) {
        endpoint = .suggestTime(projectId: projectId)
    }
}
