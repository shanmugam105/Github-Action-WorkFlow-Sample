//
//  HomeViewController.swift
//  Github-Action-WorkFlow-Sample
//
//  Created by Sparkout on 11/12/22.
//

import UIKit
import SkyFloatingLabelTextField

class HomeViewControlle: UIViewController {
    let viewModel: HomeViewModel = .init()
    var myTextField: SkyFloatingLabelTextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    private func configureView() {
        title = "Home"
        myTextField = SkyFloatingLabelTextField()
    }
}

