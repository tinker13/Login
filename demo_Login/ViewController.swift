//
//  ViewController.swift
//  demo_Login
//
//  Created by hungtran on 6/6/17.
//  Copyright © 2017 hungtran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tf_user: UITextField!
    
    
    @IBOutlet weak var tf_password: UITextField!
    var users = ["tran" : "1", "duc" : "2", "hung" : "3"]
    
    
    @IBOutlet weak var lbl_ketqua: UILabel!
    var count = 0
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBAction func action_DangNhap(_ sender: Any) {
        if let password = users[tf_user.text!] {
            if password == tf_password.text! {
                print("Dang Nhap Thanh Cong")
                lbl_ketqua.text = "Dang nhap Thanh Cong"
            }
            else {
                print("Mat khau khong dung")
                lbl_ketqua.text = "Mat khau khong dung"
            }
        }
        else {
            print("Tai khoan khong ton tai")
            lbl_ketqua.text = "Tai khoan khong ton tai"
            
        }
    }
    //In ra danh sach nguoi dung
    @IBAction func action_danhsach(_ sender: Any) {
        var fullList = ""
        for (key,value) in users {
            fullList += "\(key): \(value)\n"
            lbl_ketqua.text = "\(fullList)"
            print(fullList)
        }
        
    }
    
    
    
    
    
}

