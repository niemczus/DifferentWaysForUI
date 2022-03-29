//
//  ViewController.swift
//  DifferentWaysForUI
//
//  Created by Kamil Niemczyk on 29/03/2022.
//

import UIKit

class ViewController: UIViewController {
    
    var mainView: MyCustomView? {
        return view as? MyCustomView
    }
    
    override func loadView() {
        view = MyCustomView()
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainView?.singInButton.addTarget(self, action: #selector(didTapSingInButton), for: .touchUpInside)
        mainView?.emailTextField.backgroundColor = .cyan
        
        
    }
    @objc
    func didTapSingInButton() {
        print(mainView?.emailTextField.text ?? "nothings here")
    }

}

