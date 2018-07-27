//
//  ListTestNibSupplementaryView.swift
//  ListKitTests
//
//  Created by Bofei Zhu on 7/27/18.
//  Copyright © 2018 Bofei Zhu. All rights reserved.
//

import XCTest
@testable import ListKit

class ListTestNibSupplementaryView: UICollectionReusableView {
    @IBOutlet weak var label: UILabel?
    weak var delegate: UICollectionViewDelegate?
}
