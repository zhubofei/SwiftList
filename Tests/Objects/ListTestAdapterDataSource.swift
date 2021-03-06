//
//  ListTestAdapterDataSource.swift
//  SwiftListTests
//
//  Created by Bofei Zhu on 7/25/18.
//  Copyright © 2018 Bofei Zhu. All rights reserved.
//

import XCTest
@testable import SwiftList

class ListTestAdapterDataSource: ListTestCaseDataSource {
    var objects: [AnyListDiffable] = []
    var backgroundView: UIView = UIView()
    
    func objects(for listAdapter: ListAdapter) -> [AnyListDiffable] {
        return objects
    }
    
    func listAdapter(
        _ listAdapter: ListAdapter,
        sectionControllerFor object: AnyListDiffable
    ) -> ListSectionController? {
        guard let number = object.base as? Int else { return nil }
        if number == 42 {
            return ListTestContainerSizeSection()
        }
        return ListTestSection()
    }
    
    func emptyBackgroundView(for listAdapter: ListAdapter) -> UIView? {
        return backgroundView
    }
}
