//
//  ExampleProject1ViewController.swift
//  Project2
//
//  Created by Felipe Bayer Weber on 22/04/21.
//

import UIKit

public final class ExampleProject2ViewController: UIViewController {


    let labelTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Second team project"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30)
        label.textColor = UIColor(cgColor: CGColor(red: 1, green: 0, blue: 0, alpha: 1))
        return label
    }()
    
    let labelSubTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "This is a module of the project ..."
        label.textAlignment = .center
        return label
    }()

    
    let image: UIImageView = {
        
        let image = UIImageView()

        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.image = UIImage(named: "logo", in: Bundle(for: ExampleProject2ViewController.self), compatibleWith: nil)
        image.backgroundColor = .clear
        image.contentMode = .scaleAspectFit
        
        return image
    }()

    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        navigationItem.title = "Second example"
        setUp()
    }

    func setUp() {
        
        view.addSubview(labelTitle)

        labelTitle.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60).isActive = true
        labelTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        labelTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        view.addSubview(labelSubTitle)

        labelSubTitle.topAnchor.constraint(equalTo: labelTitle.bottomAnchor, constant: 30).isActive = true
        labelSubTitle.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        labelSubTitle.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true

        view.addSubview(image)
        
        image.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        image.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        image.widthAnchor.constraint(equalToConstant: view.frame.width - 120).isActive = true
        image.heightAnchor.constraint(equalToConstant: view.frame.width - 120).isActive = true
    }
}

