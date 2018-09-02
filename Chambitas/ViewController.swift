//
//  ViewController.swift
//  Chambitas
//
//  Created by Julio Villanueva on 8/5/18.
//  Copyright © 2018 Julio Villanueva. All rights reserved.
//

import UIKit
import Eureka

class ViewController: FormViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.form +++ Section("Inscribete")
            <<< TextRow(){ row in
                row.title = "Nombre"
                row.placeholder = "Nuria Loi"
            }
            
            <<< TextRow() { row in
                row.title = "Apellidos"
                row.placeholder = "Correa Guerrero"
            }
            <<< PhoneRow(){
                $0.title = "Phone Row"
                $0.placeholder = "5516859129"
            }
            <<< DateRow(){
                $0.title = "Fecha de nacimiento"
                $0.value = Date(timeIntervalSinceReferenceDate: 0)
            }
            <<< TextRow(){ row in
                row.title = "Correo electronico"
                row.placeholder = "nuria.te.amo@me.com"
            }
            <<< ActionSheetRow<String>() {
                $0.title = "Genero"
                $0.selectorTitle = "Escoge tú genero"
                $0.options = ["Hombre", "Mujer"]
            }
            <<< ButtonRow() {
                $0.title = "Conectar con Paypal"
            }
            <<< ButtonRow() {
                $0.title = "Subir carta de antecedentes no penales"
            }
            +++ Section("")
        }


}

