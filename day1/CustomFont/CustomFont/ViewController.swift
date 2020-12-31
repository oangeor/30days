//
//  ViewController.swift
//  CustomFont
//
//  Created by headmaster on 2020/12/29.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let label = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = "I am king of the world"
        label.textAlignment = .center
        self.view.addSubview(label)
        label.snp.makeConstraints({(make) in
            make.top.equalTo(100)
            make.centerX.equalTo(self.view)
        })
        label.font = .systemFont(ofSize: 30)
        
        let changeBtn = UIButton(type: .custom)
        changeBtn.setTitle("Change Font Family", for: .normal)
        changeBtn.addTarget(self, action: #selector(changeFontFamily), for: .touchUpInside)
        changeBtn.setTitleColor(.blue, for: .normal)
        self.view.addSubview(changeBtn)
        changeBtn.layer.borderColor = UIColor.blue.cgColor
        changeBtn.layer.borderWidth = 1
        changeBtn.layer.cornerRadius = 5
        
        changeBtn.snp.makeConstraints({(make) in
            make.top.equalTo(500)
            make.centerX.equalTo(self.view)
            make.width.equalTo(200)
        })
        printAllSupportFontNames()
        
        

        // Do any additional setup after loading the view.
    }
    
    @objc func changeFontFamily(){
        label.font = UIFont(name: "Savoye LET", size: 30)
    }

    func printAllSupportFontNames(){
        let familyNames = UIFont.familyNames
        for familyName in familyNames{
            print("+++++\(familyName)")
            let fontNames = UIFont.fontNames(forFamilyName: familyName)
            for fontName in fontNames{
                print("-----\(fontName)")
            }
        }
    }
}

