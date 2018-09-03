//
//  IncomingTodo.swift
//  App
//
//  Created by Shabna Zaheer on 03/09/2018.
//

import Vapor

extension Todo {
    struct Incoming: Content {
        var title: String?
        var completed: Bool?
        var order: Int?
        
        func makeTodo() -> Todo {
            return Todo(id: nil,
                        title: title ?? "",
                        completed: completed ?? false,
                        order: order
            )
        }
    }
}
