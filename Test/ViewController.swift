//
//  ViewController.swift
//  Test
//
//  Created by Vattanac on 11/26/18.
//  Copyright © 2018 vattanac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var button  = UIButton()
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 50)
        button.setTitle("Click", for: UIControl.State.normal)
        button.backgroundColor = .red
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(click), for: UIControl.Event.touchUpInside)
    }
    @objc func click (){
        let alert = UIAlertController(title: "Hey", message: "Hello", preferredStyle: .alert					)
        alert.addTextField { (username) in
            username.placeholder = "Enter Name"
        }
        alert.addTextField { (password) in
        password.placeholder = "Enter password"
        password.isSecureTextEntry = true
        }
        alert.addAction(UIAlertAction(title: "Login", style: UIAlertAction.Style.default, handler: { (alertAction) in
            if let username = alert.textFields?[0].text, let password = alert.textFields?[1].text {
            print(username)
            print(password)
            }
        }))
        self.present(alert, animated: true) {
             print("Done")
        }
    }


}

