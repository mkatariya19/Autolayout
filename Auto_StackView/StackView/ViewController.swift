//
//  ViewController.swift
//  StackView
//
//  Created by Coditas on 02/03/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        firstStackview()
    }
    func firstStackview() {
        let imageView = UIImageView()
        imageView.backgroundColor = .blue
        imageView.image = UIImage(systemName: "Autumn")
        imageView.contentMode = .scaleAspectFit
        imageView.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: view.frame.size.height/4).isActive = true
        
        let label = UILabel()
        label.text = "Autumn is here!"
        label.textAlignment = .natural
        label.font = .systemFont(ofSize: 21, weight: .bold)
        label.widthAnchor.constraint(equalToConstant: view.frame.size.width).isActive = true
        label.widthAnchor.constraint(equalToConstant: 100).isActive = true


        let stackView = UIStackView(arrangedSubviews: [label, imageView])
        stackView.frame = view.bounds
        stackView.backgroundColor = .brown
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        stackView.spacing = 20
        
        view.addSubview(stackView)
        
    }

}

