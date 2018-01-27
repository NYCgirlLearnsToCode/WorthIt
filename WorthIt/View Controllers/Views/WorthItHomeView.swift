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
    
//    lazy var textFieldInsideSearchBar: UITextField = {
//        let tf = UITextField()
//        tf.textColor = .white
//        tf.textAlignment = .center
//        return tf
//    }()
//
//    lazy var placeholderTextInsideSearchBar: UILabel = {
//        let pt = UILabel()
//        pt.textColor = .black
//        pt.backgroundColor = .blue
//        //pt.textAlignment = .center
//        pt.text = "hello"
//        return pt
//    }()
    
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
        setupTextFieldInsideSearchBar()
        setupPlaceholderTextInsideSearchBar()
    }
    
    func setupSearchBar() {
        addSubview(searchBar)
        searchBar.snp.makeConstraints{(make) in
            make.top.equalTo(safeAreaLayoutGuide.snp.top)
            make.centerX.equalTo(snp.centerX)
            make.width.equalTo(snp.width)
        }
    }
    
//    func setupTextFieldInsideSearchBar() {
//        addSubview(textFieldInsideSearchBar)
//        textFieldInsideSearchBar.snp.makeConstraints{(make) in
//            make.top.equalTo(searchBar.snp.bottom)
//            make.centerX.equalTo(searchBar.snp.centerX)
//            make.width.equalTo(searchBar.snp.width)
//        }
//    }
//
//    func setupPlaceholderTextInsideSearchBar() {
//
//    }

}
