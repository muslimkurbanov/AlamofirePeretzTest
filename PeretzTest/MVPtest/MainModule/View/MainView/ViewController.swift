//
//  ViewController.swift
//  MVPtest
//
//  Created by Муслим Курбанов on 20.09.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var presenter: ViewPresetnerProtocol!
    //MARK: - ViewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: - IBActions
    @IBAction func goToSecondScreenButton(_ sender: Any) {
        let tableViewController = ModuleBuilder.createTableViewModule()
        navigationController?.pushViewController(tableViewController, animated: true)
    }
    
    
}
//MARK: - ViewProtocol
extension ViewController: ViewProtocol {
    
}
