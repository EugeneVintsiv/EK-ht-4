//
//  Task1ViewController.swift
//  itemsInteraction
//
//  Created by Eugene on 15.11.18.
//  Copyright © 2018 Eugene. All rights reserved.
//

import Foundation
import UIKit

class Task1ViewController: UIViewController {
    override func viewDidLoad() {
//        set default values programarly
        setSegmentLabel()
        setSwitchLabel()
        setSliderLabel()
        setZoomLabel()
    }
    
    @IBOutlet weak var segmentedView: UISegmentedControl!
    @IBOutlet weak var segmentedViewLabel: UILabel!
    @IBAction func segmentedViewValueChanged(_ sender: Any) {
        setSegmentLabel()
    }
    
    @IBOutlet weak var editTextControl: UITextField!
    @IBOutlet weak var editTextLabel: UILabel!
    @IBAction func textChanged(_ sender: Any) {
        editTextLabel.text = editTextControl.text
    }
    
    @IBOutlet weak var sliderControl: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBAction func onSliderChanged(_ sender: Any) {
        setSliderLabel()
    }

    @IBOutlet weak var switchControl: UISwitch!
    @IBOutlet weak var switchLabel: UILabel!
    @IBAction func onSwitchChanged(_ sender: UISwitch) {
        setSwitchLabel()
    }
    
    @IBOutlet weak var spinnerSwitchControl: UISwitch!
    @IBOutlet weak var spinnerIndicatorControl: UIActivityIndicatorView!

    @IBAction func onSpinnerSwitchChanged(_ sender: Any) {
        animSpinner()
    }
    
    @IBOutlet weak var zoomStepperControl: UIStepper!
    @IBOutlet weak var zoomStepperLabel: UILabel!
    @IBAction func onZoomChanged(_ sender: Any) {
        setZoomLabel()
    }
    
    @IBOutlet weak var showImageButton: UIButton!
    @IBOutlet weak var imageControl: UIImageView!
    @IBAction func onImageButtonClick(_ sender: UIButton) {
        if showImageButton.currentTitle == "Show Image" {
            showImageButton.setTitle("Hide Image", for: .normal)
            imageControl.isHidden = false
        } else {
            showImageButton.setTitle("Show Image", for: .normal)
            imageControl.isHidden = true
        }
    }
    
    private func setSliderLabel() {
        let value = Int(sliderControl.value)
        sliderLabel.text = "\(value)"
    }
    
    private func animSpinner() {
        spinnerSwitchControl.isOn ? spinnerIndicatorControl.startAnimating() : spinnerIndicatorControl.stopAnimating()
    }
    
    private func setSwitchLabel() {
        switchLabel.text = switchControl.isOn ? "ON" : "OFF"
    }
    private func setSegmentLabel() {
        segmentedViewLabel.text = segmentedView.titleForSegment(at: segmentedView.selectedSegmentIndex)
    }
    
    private func setZoomLabel() {
        zoomStepperLabel.text = "\(zoomStepperControl.value)"
    }
    
    
}


