//
//  DelegatesApp
//
//  Created by Eugeni Lazakovich on 21.07.21.
//

import Foundation
import UIKit

final class BobaViewController: UIViewController {
    private let bobaView = BobaView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = bobaView
        bobaView.delegate = self
    }
}

// MARK: - FirstViewDelegate

extension BobaViewController: BobaViewDelegate {
    func bobaViewDidTapped() {
        let shreksViewController = ShreksViewController()
        shreksViewController.delegate = self
        present(shreksViewController, animated: true, completion: nil)
    }
}

// MARK: - SecondViewControllerDelegate

extension BobaViewController: ShreksViewControllerDelegate {
    func viewControllerDidReceivedMessageFromView() {
        bobaView.backgroundColor = .blue
    }
}
