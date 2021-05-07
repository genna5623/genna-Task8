//
//  GreenViewController.swift
//  kadai8
//
//  Created by 永野玄 on 2021/05/05.
//

import UIKit

class GreenViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presentingViewController?.beginAppearanceTransition(false, animated: animated)
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        slider.setValue(delegate.sliderValue, animated: false)
        self.label.text = "\(self.slider.value)"
    }

    @IBAction func changeSlider(_ sender: Any) {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else{
           return
        }
        delegate.sliderValue = slider.value
        self.label.text = "\(self.slider.value)"
    }
    
}
