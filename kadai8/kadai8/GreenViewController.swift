//
//  GreenViewController.swift
//  kadai8
//
//  Created by 永野玄 on 2021/05/05.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    @IBOutlet private weak var slider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        slider.setValue(delegate.sliderValue, animated: false)
        label.text = "\(slider.value)"
    }

    @IBAction func changeSlider(_ sender: Any) {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else{
           return
        }
        delegate.sliderValue = slider.value
        label.text = "\(slider.value)"
    }
}
