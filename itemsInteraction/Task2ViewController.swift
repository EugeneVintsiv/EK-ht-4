//
//  Task2ViewController.swift
//  itemsInteraction
//
//  Created by Eugene on 15.11.18.
//  Copyright © 2018 Eugene. All rights reserved.
//

import Foundation
import UIKit

class Task2ViewController: ViewController {
    @IBOutlet var rootView: UIView!
    @IBOutlet weak var container: UIView!

    private let sliderCreator: SliderCreator = SliderCreator()
    private let frameCreator: FrameCreator = FrameCreator()
//    need class member, cuz had crashes when tried to call: #selector with 2 params, like:
//    #selector(interactWithView(slider:frame:)
    var frame: UIImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()

        let slider = sliderCreator.buildSliderOnPlace(viewContainer: container)
        container.addSubview(slider)

        frame = frameCreator.buildFrameOnPlace(viewContainer: container)
        container.addSubview(frame)

        addSliderAction(slider, frame: frame)
    }

    private func addSliderAction(_ slider: UISlider, frame: UIImageView) {
        slider.addTarget(self, action: #selector(interactWithView(slider:)), for: .valueChanged)
    }

    @objc func interactWithView(slider: UISlider) {
//      cuz need to be black on left and white on right
//      0 - no transparency
//      1 - full transparency
        frame.alpha = 1 - CGFloat(slider.value)
    }
}
