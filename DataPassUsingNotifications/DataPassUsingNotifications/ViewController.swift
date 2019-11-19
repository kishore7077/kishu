//
//  ViewController.swift
//  DataPassUsingNotifications
//
//  Created by trainee on 19/11/19.
//  Copyright © 2019 trainee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var txtFldName: UITextField!
    @IBOutlet weak var txtFldMobile: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func actNext(_ sender: Any) {
        
      let nextVC = self.storyboard?.instantiateViewController(withIdentifier: "VC2") as! VC2
        
      //  nextVC.nameVal = txtFldName.text!
//        nextVC.mobileVal = txtFldMobile.text!
        
        NotificationCenter.default.post(name: NSNotification.Name("nextVC"), object:nil,  userInfo: ["name": txtFldName.text!, "mobile": txtFldMobile.text! ])

        print("userInfoSent")
        
        self.navigationController?.pushViewController(nextVC, animated: true)
        
        
        
    }
   
}

