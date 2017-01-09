//
//  SVCalendarHeaderView.swift
//  SVCalendarView
//
//  Created by Semyon Vyatkin on 04/11/2016.
//  Copyright © 2016 Semyon Vyatkin. All rights reserved.
//

import UIKit

class SVCalendarHeaderView: UICollectionReusableView {
    @IBOutlet weak var titleLabel: UILabel!
    
    static var identifier: String {        
        return NSStringFromClass(SVCalendarHeaderView.self).replacingOccurrences(of: SVCalendarManager.bundleIdentifier, with: "")
    }
    
    var style: SVStyleProtocol? {
        didSet {
            self.backgroundColor = self.style?.background.normalColor
            
            if self.titleLabel != nil {
                self.titleLabel.font = self.style?.text.font
                self.titleLabel.textColor = self.style?.text.normalColor
            }                        
        }
    }
    var title: String? {
        didSet {
            if self.titleLabel != nil {
                self.titleLabel.text = title
            }
        }
    }
    
    // MARK: - View LifeCycle
    override func awakeFromNib() {
        super.awakeFromNib()
        self.configAppearance()
    }
    
    // MARK: - View Appearance
    fileprivate func configAppearance() {
        self.backgroundColor = self.style?.background.normalColor
    }
}
