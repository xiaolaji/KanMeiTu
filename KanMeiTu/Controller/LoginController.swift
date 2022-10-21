//
//  LoginController.swift
//  KanMeiTu
//
//  Created by yi on 2022/10/21.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var usernameView: UITextField!
    @IBOutlet weak var passwordView: UITextField!
    @IBOutlet weak var hintView: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func loginClick(_ sender: Any) {
        let phone = usernameView.text!
        if phone.isEmpty{
            hintView.text = "请输入手机号"
            return
        }
        
    }
    


}
