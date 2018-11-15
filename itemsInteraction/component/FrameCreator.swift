//
// Created by Eugene on 15.11.18.
// Copyright (c) 2018 Eugene. All rights reserved.
//

import Foundation
import UIKit

class FrameCreator {

    func buildFrameOnPlace(viewContainer container: UIView!) -> UIImageView {
        let view = buildFrame(viewContainer: container)
        obtainView(view)
        return view
    }

    private func obtainView(_ view: UIImageView) {
        view.backgroundColor = .black
    }

    private func buildFrame(viewContainer container: UIView!) -> UIImageView {
        let padding: CGFloat = 20
        let point = CGPoint(x: padding, y: padding * 10)
        let width = container.frame.width - (padding * 2)
        let heigh = container.frame.height / 5
        let view = UIImageView(frame: CGRect(origin: point, size: CGSize(width: width, height: heigh)))

        return view
    }

}
