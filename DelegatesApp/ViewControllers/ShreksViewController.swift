//
//  FirstViewController.swift
//  DelegatesApp
//
//  Created by Eugeni Lazakovich on 21.07.21.
//

import Foundation
import UIKit

protocol ShreksViewControllerDelegate: NSObject {
    func viewControllerDidReceivedMessageFromView()
}

final class ShreksViewController: UIViewController {
    private let shreksView = ShreksView()
    
    weak var delegate: ShreksViewControllerDelegate?
                                            
    override func viewDidLoad() {
        super.viewDidLoad()
        view = shreksView
        shreksView.delegate = self
    }
    
    @objc private func dismissButtonTapped() {
        dismiss(animated: true, completion: nil)
    }
}

// MARK: - SecondViewDelegate

extension ShreksViewController: ShreksViewDelegate {
    func shreksViewDidTapped() {
        delegate?.viewControllerDidReceivedMessageFromView()
    }
}
