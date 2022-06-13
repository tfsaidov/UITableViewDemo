//
//  MyCustomView.swift
//  UITableViewDemo
//
//  Created by Саидов Тимур on 09.06.2022.
//

import UIKit

class MyCustomView: UITableViewHeaderFooterView {
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
        self.addSubview(self.label)
        NSLayoutConstraint.activate([
            self.label.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            self.label.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            self.label.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            self.label.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)
        ])
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup(with text: String) {
        self.label.text = text
    }
}
