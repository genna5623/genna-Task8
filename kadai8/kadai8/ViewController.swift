//
//  ViewController.swift
//  kadai8
//
//  Created by 永野玄 on 2021/05/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var slider: UISlider!

    //切り替わるときに呼ばれるメソッド
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        //遷移元のライフサイクルメソッドを呼ぶ
        presentingViewController?.beginAppearanceTransition(false, animated: animated)
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        //切り替え時にスライダーが動かない挙動
        slider.setValue(delegate.sliderValue, animated: false)
        self.label.text = "\(self.slider.value)"
    }
    @IBAction func changesSlider(_ sender: Any) {
        guard let delegate = UIApplication.shared.delegate as? AppDelegate else {
           return
        }
        delegate.sliderValue = slider.value
        self.label.text = "\(self.slider.value)"
            }
}


