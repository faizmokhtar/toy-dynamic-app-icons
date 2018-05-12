//
//  ViewController.swift
//  toy-dynamic-app-icons
//
//  Created by Faiz Mokhtar on 12/05/2018.
//  Copyright © 2018 Faiz Mokhtar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    private func changeAppIcon(to name: String?) {
        guard UIApplication.shared.supportsAlternateIcons else { return }

        UIApplication.shared.setAlternateIconName(name) { error in
            if let error = error {
                print("Failed to change app icon: \(error.localizedDescription)")
            } else {
                print("Successfully changed app icon!")
            }
        }
    }

    @IBAction func changeToAlternateIcon1(_ sender: Any) {
        changeAppIcon(to: "AlternateIcon1")
    }

    @IBAction func changeToAlternateIcon2(_ sender: Any) {
        changeAppIcon(to: "AlternateIcon2")
    }
    @IBAction func resetAppIcon(_ sender: Any) {
        changeAppIcon(to: nil)
    }
}

