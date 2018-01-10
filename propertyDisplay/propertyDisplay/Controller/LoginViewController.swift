//
//  LoginViewController.swift
//  propertyDisplay
//
//  Created by Unsan on 8/1/18.
//  Copyright © 2018 Wawa.Tech. All rights reserved.
//

import UIKit
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var usernameTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = Constants.systemColor
        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        SVProgressHUD.show(withStatus: "App Start.....")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoLogin(_ sender: Any) {
        
        Tools.checkNetwork(context: self)
        self.performSegue(withIdentifier: "showDetail", sender: self)
        Provider.sharedInstance.ifLogin = true
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
