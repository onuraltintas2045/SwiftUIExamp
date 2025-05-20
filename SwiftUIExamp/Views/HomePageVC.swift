//
//  HomePageVC.swift
//  SwiftUIExamp
//
//  Created by Onur Altintas on 20.05.2025.
//

import UIKit
import SnapKit
import SwiftUI

class HomePageVC: UIViewController {
    private let settings = AppSettings()
    
    private lazy var sendButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Go To SwiftUI", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 17, weight: .medium)
        button.titleLabel?.textAlignment = .center
        //button.titleLabel?.textColor = .label
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector(goToSwiftUI), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupLayout()
    }
    
    private func setupLayout() {
        view.backgroundColor = .systemBackground
        view.addSubview(sendButton)
        sendButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(44)
            make.width.equalTo(150)
        }
    }
    
    @objc private func goToSwiftUI() {
        let userView = UserListView()
            .environmentObject(settings)
        let hostController = UIHostingController(rootView: userView)
        navigationController?.pushViewController(hostController, animated: true)
    }

}
