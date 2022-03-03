//
//  ViewController.swift
//  Autolayout_code
//
//  Created by Coditas on 03/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    private let myView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .blue
        return myView
        
    }()
    
    private let yourView: UIView = {
        let myView = UIView()
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.backgroundColor = .yellow
        return myView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(myView)
        myView.addSubview(yourView)
        addConstraints()
    }
    
    private func addConstraints(){
        var constraints = [NSLayoutConstraint]()
        
        constraints.append(myView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor))
        constraints.append(myView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor))
        constraints.append(myView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor))
        constraints.append(myView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor))
        
        constraints.append(yourView.widthAnchor.constraint(equalTo: myView.widthAnchor, multiplier: 0.5))
        constraints.append(yourView.heightAnchor.constraint(equalTo: myView.heightAnchor, multiplier: 0.5))
        
        constraints.append(yourView.centerYAnchor.constraint(equalTo: myView.centerYAnchor))
        constraints.append(yourView.centerXAnchor.constraint(equalTo: myView.centerXAnchor))


          

        
        NSLayoutConstraint.activate(constraints)
        
    }


}

