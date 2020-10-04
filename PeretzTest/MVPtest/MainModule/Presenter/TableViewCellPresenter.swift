//
//  TableViewCellPresenter.swift
//  MVP-PeretzTest
//
//  Created by Муслим Курбанов on 01.10.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import Foundation

protocol TableViewCellProtocol: class {
    func succes()
    func failure(error: Error)
}

protocol TableViewCellPresetnerProtocol: class {
    init(view: TableViewCellProtocol, networkService: NetworkServiceProtocol)
    var searchResponce: [Model]? { get set }
}

class TableViewCellPresenter: TableViewCellPresetnerProtocol {
    var searchResponce: [Model]? = nil

    var main = TableViewController()
    weak var view: TableViewCellProtocol?
    
    let networkService: NetworkServiceProtocol!

    required init(view: TableViewCellProtocol, networkService: NetworkServiceProtocol) {
        self.view = view
        self.networkService = networkService

    }
}
