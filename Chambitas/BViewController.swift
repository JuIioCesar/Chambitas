//
//  BViewController.swift
//  Chambitas
//
//  Created by Julio Villanueva on 02.09.18.
//  Copyright © 2018 Julio Villanueva. All rights reserved.
//

import UIKit
import Eureka

class BViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Chambitas"
        let view = ViewController()
        self.form +++ Section("¿Que quieres hacer?")
            <<< LabelRow() {
                $0.title = "Quiero comprar un servicio"
                }.onCellSelection({ (cell, row) in
                    self.navigationController?.pushViewController(view, animated: true)
                })
            <<< LabelRow() {
                $0.title = "Quiero ofrecer un servicio"
                }.onCellSelection({ (cell, row) in
                    self.navigationController?.pushViewController(view, animated: true)
                })
    }


}
