//
//  API.swift
//  BCPlan-iOS
//
//  Created by Jimmy McDermott on 11/28/17.
//  Copyright © 2017 162 LLC. All rights reserved.
//

import Foundation
import Alamofire

class API {
    static let apiKey = "6ZysPb/H{HuY>tWeHbN}gN^d=cot*Ce&a78H38R47NpX7xBw^4MVi6hU{chZxYWD"
    static let baseUrl = "https://bcplan.herokuapp.com/api/v1/"
    
    enum Endpoint {
        case login
        case register
        case projects
        case createProject
        case project(projectId: Int)
        case searchUser(projectId: Int, query: String)
        case inviteUser(projectId: Int, userId: Int)
        case acceptInvitation(projectId: Int)
        case denyInvitation(projectId: Int)
        case suggestTime(projectId: Int)
        case pickMeetingDate(projectId: Int, meetingDateId: Int)
        case vote(meetingDateId: Int)
        case attendance(projectId: Int, attendance: SetAttendance.Attendance)
        
        var endpoint: String {
            switch self {
            case .login:
                return "login"
            case .register:
                return "register"
            case .projects:
                return "projects"
            case .createProject:
                return "project"
            case .project(let id):
                return "project/\(id)"
            case .searchUser(let id, let query):
                return "project/\(id)/user?query=\(query)"
            case .inviteUser(let projectId, let userId):
                return "project/\(projectId)/invite/\(userId)"
            case .acceptInvitation(let projectId):
                return "invitation/\(projectId)/accept"
            case .denyInvitation(let projectId):
                return "invitation/\(projectId)/deny"
            case .suggestTime(let projectId):
                return "project/\(projectId)/date"
            case .pickMeetingDate(let projectId, let meetingDateId):
                return "project/\(projectId)/date/\(meetingDateId)"
            case .vote(let meetingDateId):
                return "vote/\(meetingDateId)"
            case .attendance(let projectId, let attendance):
                if attendance == .attending {
                    return "project/\(projectId)/attend"
                } else {
                    return "project/\(projectId)/notAttend"
                }
            }
        }
    }
    
    static func createUrl(endpoint: Endpoint) -> String {
        return "\(API.baseUrl)\(endpoint.endpoint)"
    }
}
