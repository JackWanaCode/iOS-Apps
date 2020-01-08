//
//  HomeVC.swift
//  Quizzler-iOS13
//
//  Created by Aries Lam on 1/5/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {

    @IBOutlet weak var mathButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func mathButtonPressed(_ sender: Any) {
        
        self.performSegue(withIdentifier: "goToQuiz", sender: self)
    }
    
}
