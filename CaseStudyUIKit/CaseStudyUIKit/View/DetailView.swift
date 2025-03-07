//
//  DetailView.swift
//  CaseStudyUIKit
//
//  Created by Alperen KARACA on 7.03.2025.
//

import Foundation
import UIKit




//- User Detail Screen
class UserDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var websiteLabel: UILabel!

    var user: User?
    
    override func viewDidLoad() {
        title = "User Details"
            
            nameLabel.text = user?.name
            emailLabel.text = user?.email
            phoneLabel.text = user?.phone
            websiteLabel.text = user?.website
    }
}
