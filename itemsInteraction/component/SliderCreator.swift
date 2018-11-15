//
// Created by Eugene on 15.11.18.
// Copyright (c) 2018 Eugene. All rights reserved.
//

import Foundation
import UIKit

class SliderCreator {

    func buildSliderOnPlace(viewContainer container: UIView!) -> UISlider {
        let slider = buildSlider(viewContainer: container)
        obtainSlider(slider)
        return slider
    }

    private func obtainSlider(_ slider: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 1
        slider.isEnabled = true
    }

    private func buildSlider(viewContainer container: UIView!) -> UISlider {
        let padding: CGFloat = 20
        let sliderPoint = CGPoint(x: padding, y: padding * 2)
        let sliderWidth = container.frame.width - (padding * 2)
        let slider = UISlider(frame: CGRect(origin: sliderPoint, size: CGSize(width: sliderWidth, height: 30)))

        return slider
    }

}
