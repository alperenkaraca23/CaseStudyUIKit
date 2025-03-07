//
//  ViewController.swift
//  CaseStudyUIKit
//
//  Created by Alperen KARACA on 7.03.2025.
//

import UIKit

//- User List Screen
class UsersViewController: UITableViewController {
    private let viewModel = UsersViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Users"
          
        viewModel.onDataUpdated = { self.tableView.reloadData() }
        viewModel.fetchUsers()
        
      }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.users.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserTableViewCell
        let user = viewModel.users[indexPath.row]
        
        //Cell Settings
        cell.nameLabel.text = user.name
        cell.nameLabel.textColor = .blue
        cell.nameLabel.font = UIFont.boldSystemFont(ofSize: 20)
        cell.emailLabel.text = user.email
        cell.emailLabel.textColor = .gray
        cell.accessoryType = .disclosureIndicator
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let user = viewModel.users[indexPath.row]
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let detailVC = storyboard.instantiateViewController(withIdentifier: "UserDetailViewController") as? UserDetailViewController {
            detailVC.user = user
            navigationController?.pushViewController(detailVC, animated: true)
        }
    }
    
}
