//
//  FirstView.swift
//  DelegatesApp
//
//  Created by Eugeni Lazakovich on 21.07.21.
//

import Foundation
import UIKit

protocol BobaViewDelegate: NSObject {
    func bobaViewDidTapped()
}

final class BobaView: UIView {
    // MARK: - Public Properties
    
    weak var delegate: BobaViewDelegate?
    
    // MARK: - UIView
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        registerGesture()
        backgroundColor = .gray
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    
    private func registerGesture() {
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(viewDidTapped))
        addGestureRecognizer(gestureRecognizer)
    }
    
    @objc private func viewDidTapped() {
        delegate?.bobaViewDidTapped()
    }
}
