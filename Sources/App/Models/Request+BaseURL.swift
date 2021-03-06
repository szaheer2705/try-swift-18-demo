//
//  Request+BaseURL.swift
//  App
//
//  Created by Shabna Zaheer on 03/09/2018.
//

import Vapor

extension Request {
    var baseURL: String {
        var host = http.headers.firstValue(name: .host)!
        if host.hasSuffix("/") {
            host = String(host.dropLast())
        }
        let scheme = http.remotePeer.scheme ?? "http"
        return "\(scheme)://\(host)/todos".finished(with: "/")
    }
}
