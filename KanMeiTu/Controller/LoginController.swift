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
        if !phone.isPhone(){
            hintView.text = "手机号格式不正确"
            return
        }
        
        let password = passwordView.text!
        
        if password.isEmpty{
            hintView.text = "请输入密码"
            return
        }
        if password.count < 6 || password.count>15{
            hintView.text = "密码格式不正确6-15位"
            return
        }
        
        if Constant.PHONE == phone && Constant.PASSWORD == password {
            
            PreferenceUtile.setLogin(true)
            SceneDelegate.shared.toHome()
        }else{
            hintView.text = "用户名或者密码错误"
        }
        
    }
    


}
