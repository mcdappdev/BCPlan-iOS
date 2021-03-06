//
//  GetProjectsRequest.swift
//  BCPlan-iOS
//
//  Created by Jimmy McDermott on 11/29/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import Foundation
import Alamofire

struct GetProjects: APIRequestRepresentable {
    typealias CodableType = ProjectResponse
    var method: Alamofire.HTTPMethod = .get
    var endpoint: API.Endpoint = .projects
    var isAuthedRequest = true
}
