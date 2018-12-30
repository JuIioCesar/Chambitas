//
//  BViewController.swift
//  Chambitas
//
//  Created by Julio Villanueva on 02.09.18.
//  Copyright © 2018 Julio Villanueva. All rights reserved.
//

import UIKit
import MaterialComponents

extension MDCSemanticColorScheme {
    static var hacker: MDCSemanticColorScheme {
        let colorScheme = MDCSemanticColorScheme()
        colorScheme.primaryColor = .white
        colorScheme.secondaryColor = .gray
        colorScheme.errorColor = .red
        colorScheme.surfaceColor = .blue
        colorScheme.backgroundColor = .yellow
        colorScheme.onPrimaryColor = .white
        colorScheme.onSecondaryColor = .yellow
        colorScheme.onSurfaceColor = .yellow
        colorScheme.onBackgroundColor = .yellow
        return colorScheme
    }
}

class ChooseViewController: UIViewController {
    @IBOutlet weak var card: MDCCard!
    override func viewDidLoad() {
        super.viewDidLoad()
//        let buttonScheme = MDCButtonScheme()
//        buttonScheme.colorScheme = MDCSemanticColorScheme.hacker
//        MDCOutlinedButtonThemer.applyScheme(buttonScheme, to: start)
        
        
        self.title = "Chambitas"
        
        let highlightController = MDCFeatureHighlightViewController(highlightedView: card,
                                                                    completion: nil)
        highlightController.titleText = "Justo como lo quieres"
        highlightController.bodyText = "Selecciona a uno de cientos de trabajadores listos para hacerte una chambita."
        highlightController.outerHighlightColor =
            UIColor.orange.withAlphaComponent(kMDCFeatureHighlightOuterHighlightAlpha)
        highlightController.titleColor = UIColor.white
        highlightController.bodyColor = UIColor.white
        present(highlightController, animated: true, completion:nil)
    }


}
