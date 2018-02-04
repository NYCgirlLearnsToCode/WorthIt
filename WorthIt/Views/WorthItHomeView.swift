//
//  WorthItHomeView.swift
//  WorthIt
//
//  Created by Lisa J on 1/27/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import UIKit
import SnapKit

class WorthItHomeView: UIView {
    
    lazy var searchBar: UISearchBar = {
       let sb = UISearchBar()
        sb.placeholder = "Search"
        sb.searchBarStyle = .minimal
        sb.backgroundColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1)
        return sb
    }()
    
    lazy var headerLabel: UILabel = {
        let headerLabel = UILabel()
        headerLabel.text = "Worth It Locations Near You"
        return headerLabel
    }()
    
    lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "Location Cell")
        return tv
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        backgroundColor = .white
        setupViews()
    }
    
    private func setupViews() {
        setupSearchBar()
        setupHeaderLabel()
        setupTableView()
    }
    
    private func setupSearchBar() {
        addSubview(searchBar)
        searchBar.snp.makeConstraints{(make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(snp.width)
        }
    }
    
    private func setupHeaderLabel() {
        addSubview(headerLabel)
        headerLabel.snp.makeConstraints{(make) in
            make.top.equalTo(searchBar.snp.bottom)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            
        }
    }
    
    private func setupTableView() {
        addSubview(tableView)
        tableView.snp.makeConstraints{(make) in
            make.top.equalTo(headerLabel.snp.bottom)
            make.leading.equalTo(safeAreaLayoutGuide.snp.leading)
            make.trailing.equalTo(safeAreaLayoutGuide.snp.trailing)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom)
            
        }
    }
    
   


}
