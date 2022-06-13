//
//  SecondViewController.swift
//  UITableViewDemo
//
//  Created by Саидов Тимур on 09.06.2022.
//

import UIKit

class SecondViewController: UIViewController {

    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .insetGrouped)
        /// При статическом отображении ячеек, параметр estimatedRowHeight не используется, а rowHeight задается нужной величиной.
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 44
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "DefaultCell")
        tableView.register(DynamicArticleTableViewCell.self, forCellReuseIdentifier: "DynamicCell")
//        tableView.register(StaticArticleTableViewCell.self, forCellReuseIdentifier: "StaticCell")
        tableView.dataSource = self
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    private let articles: [Article] = Mock.shared.data

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        
        self.view.addSubview(self.tableView)
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor)
        ])
    }
}

extension SecondViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.articles.count
    }
    
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "DynamicCell", for: indexPath) as? DynamicArticleTableViewCell else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
            return cell
        }
//        guard let cell = tableView.dequeueReusableCell(withIdentifier: "StaticCell", for: indexPath) as? StaticArticleTableViewCell else {
//            let cell = tableView.dequeueReusableCell(withIdentifier: "DefaultCell", for: indexPath)
//            return cell
//        }
        
        let article = self.articles[indexPath.row]
        cell.setup(with: article)
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        200
//    }
}
