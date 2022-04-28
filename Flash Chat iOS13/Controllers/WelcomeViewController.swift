//
//  WelcomeViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: CLTypingLabel!
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = "⚡️FlashChat"
        
            
            
        
       
    }
    
    @IBAction func registerPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "welcomeViewToRegisterView", sender: self)
    }
    
    @IBAction func loginPressed(_ sender: UIButton) {
        self.performSegue(withIdentifier: "welcomeViewToLoginView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "welcomeViewToRegisterView"{
            let destinationVC = segue.destination as! RegisterViewController
        }
        else{
            let destinationVC = segue.destination as! LoginViewController
        }
    }
    
}
