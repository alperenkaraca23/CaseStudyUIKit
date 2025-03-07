//
//  ViewModel.swift
//  CaseStudyUIKit
//
//  Created by Alperen KARACA on 7.03.2025.
//

import Foundation

//- ViewModel
class UsersViewModel {
    private let url = URL(string: "https://jsonplaceholder.typicode.com/users")!
    var users: [User] = []
    var onDataUpdated: (() -> Void)?
    
    func fetchUsers() {
        URLSession.shared.dataTask(with: url) { data, _, error in
            if let data = data {
                let decoder = JSONDecoder()
                if let users = try? decoder.decode([User].self, from: data) {
                    DispatchQueue.main.async {
                        self.users = users
                        self.onDataUpdated?()
                    }
                }
            }
        }.resume()
    }
}
