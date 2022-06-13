//
//  StaticArticleTableViewCell.swift
//  UITableViewDemo
//
//  Created by Саидов Тимур on 09.06.2022.
//

import UIKit

class StaticArticleTableViewCell: UITableViewCell {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.backgroundColor = .clear
        label.numberOfLines = 0
        label.font = UIFont(name: "HelveticaNeue-CondensedBlack", size: 22)
        label.textColor = .black
        label.setContentCompressionResistancePriority(UILayoutPriority(1000), for: .vertical)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = UIFont(name: "Georgia", size: 17)
        label.textColor = .black
        label.setContentCompressionResistancePriority(UILayoutPriority(250), for: .vertical)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.titleLabel.text = nil
        self.descriptionLabel.text = nil
    }
    
    private func setupView() {
        self.contentView.backgroundColor = .white

        self.contentView.addSubview(self.titleLabel)
        self.contentView.addSubview(self.descriptionLabel)
        
        let titleLabelConstraints = self.titleLabelConstraints()
        let descriptionLabelConstraints = self.descriptionLabelConstraints()
        
        NSLayoutConstraint.activate(
            titleLabelConstraints +
            descriptionLabelConstraints
        )
    }
    
    private func titleLabelConstraints() -> [NSLayoutConstraint] {
        let topConstraint = self.titleLabel.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 10)
        let leadingConstraint = self.titleLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10)
        let trailingConstraint = self.titleLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10)

        return [
            topConstraint, leadingConstraint, trailingConstraint
        ]
    }
    
    private func descriptionLabelConstraints() -> [NSLayoutConstraint] {
        let topConstraint = self.descriptionLabel.topAnchor.constraint(greaterThanOrEqualTo: self.titleLabel.bottomAnchor, constant: 10)
        let leadingConstraint = self.descriptionLabel.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 10)
        let trailingConstraint = self.descriptionLabel.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -10)
        let bottomConstraint = self.descriptionLabel.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -10)

        return [
            topConstraint, leadingConstraint, trailingConstraint, bottomConstraint
        ]
    }
    
    func setup(with article: Article) {
        self.titleLabel.text = article.title
        self.descriptionLabel.text = article.description
    }
}
