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
        self.title = "Perfil"
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
                $0.title = "Télefono celular"
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
            <<< TextRow(){ row in
                row.title = "CURP"
                row.placeholder = "JUBG901215ZLLH04"
            }
            <<< LabelRow() {
                $0.title = "Dirección"
            }
            <<< TextAreaRow() { row in
                row.placeholder = "Av Calle de la Casa de la hija de su mami no. 123 CP: 0999"
            }
            <<< SegmentedRow<String>() {
                $0.title = "Genero"
                $0.selectorTitle = "Escoge tú genero"
                $0.options = ["Hombre", "Mujer"]
            }
            <<< PushRow<String>() {
                $0.tag = "work"
                $0.title = "Trabajo a desempeñar"
                $0.selectorTitle = "Trabajo"
                $0.options = [
                    "Carpintero",
                    "Lechero",
                    "Cerrajero",
                    "Cocinero",
                    "Mecánico",
                    "Lavandero",
                    "Pescador",
                    "Escultor",
                    "Albañil",
                    "Editor",
                    "Fontanero o plomero",
                    "Obrero",
                    "Locutor",
                    "Soldador",
                    "Escritor",
                    "Pintor de brocha gorda",
                    "Vendedor",
                    "Sastre",
                    "Repartidor",
                    "Pastor ganadero",
                    "Cajero",
                    "Agricultor",
                    "Vigilante",
                    "Carnicero",
                    "Animador",
                    "Chofer o conductor",
                    "Peluquero",
                    "Frutero",
                    "Barbero",
                    "Deshollinador",
                    "Leñador",
                    "Artesano",
                    "Peletero",
                    "Tornero",
                    "Impresor",
                    "Barrendero",
                    "Policía",
                    "Panadero",
                    "Exterminador",
                    "Tintorero",
                    "Servicios de limpieza"
                ].sorted()
                }.onPresent({ (firme, selector) in
                    selector.dismissOnChange = true
                    selector.dismissOnSelection = true
                })
            +++ Section("Documentación")
            <<< ButtonRow() {
                $0.title = "Subir carta de antecedentes no penales"
            }
            <<< TextRow(){ row in
                row.title = "Número de identifiación de INE (Es el número al reverso de la credencial)"
                row.placeholder = "123456789090"
            }
            <<< ButtonRow() {
                $0.title = "Subir INE"
            }
            +++ Section("Método de pago")
            <<< ButtonRow() {
                $0.title = "Conectar con Paypal"
            }
        }


}

