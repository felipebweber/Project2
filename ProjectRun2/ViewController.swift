//
//  ViewController.swift
//  ProjectRun2
//
//  Created by Felipe Bayer Weber on 22/04/21.
//

import UIKit
import Project2

class ViewController: UIViewController {
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.alignment = .center
        stackView.distribution = .fill
        return stackView
    }()
    
    let button: UIButton = {
        let button = UIButton()
       
        button.backgroundColor = .systemGray2
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Button Clicked", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        button.center = .zero
        button.layer.borderWidth = 2

        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        navigationItem.title = "Menu de navegação"
        setUp()
    }

    func setUp() {
        view.addSubview(stackView)
        stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
        stackView.addSubview(button)

        button.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -20).isActive = true
        button.topAnchor.constraint(equalTo: stackView.safeAreaLayoutGuide.centerYAnchor, constant: -20).isActive = true
        button.leadingAnchor.constraint(equalTo: stackView.safeAreaLayoutGuide.centerXAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 68).isActive = true
        button.addTarget(self, action: #selector(buttonAction(_:)), for: .touchUpInside)
    }
    
    @objc func buttonAction(_ sender: UIButton!) {
        let vc = ExampleProject1ViewController()
        //let vc = Example2()
//        let vc = TestViewController()
//        self.present(vc, animated: true, completion: nil)
        //self.present(vc, animated: true, completion: nil)
        self.show(vc, sender: nil)
    }

}

