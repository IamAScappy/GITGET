//
//  OpenTodayViewController.swift
//  GITGET
//
//  Created by Bo-Young PARK on 30/11/2017.
//  Copyright © 2017 Bo-Young PARK. All rights reserved.
//

import UIKit

class OpenTodayViewController: UIViewController {

    /********************************************/
    //MARK:-      Variation | IBOutlet          //
    /********************************************/
    
    
    
    /********************************************/
    //MARK:-            LifeCycle               //
    /********************************************/
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }

    
    /********************************************/
    //MARK:-       Methods | IBAction           //
    /********************************************/

    
    @IBAction func skipTutorialButtonAction(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    
}