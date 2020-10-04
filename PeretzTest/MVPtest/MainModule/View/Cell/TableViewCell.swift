//
//  TableViewCell.swift
//  MVPtest
//
//  Created by Муслим Курбанов on 20.09.2020.
//  Copyright © 2020 Муслим Курбанов. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    //MARK: - IBOutlets
    @IBOutlet weak var productImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var minusButtonOutlet: UIButton!
    @IBOutlet weak var plusButtonOutlet: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    
    //variables
    var countValue = 0
    var presenter: TableViewCellPresetnerProtocol!
    var searchResponce: [Model]? = nil
    var model: Model?

    override func awakeFromNib() {
        super.awakeFromNib()
        
        selectionStyle = .none
        
        minusButtonOutlet.isHidden = true
        countLabel.isHidden = true
    }
    
    func configurate(wtih model: Model) {
        self.model = model
        
        nameLabel.text = model.name
        priceLabel.text = "\(model.price) ₽"
        descriptionLabel.text = model.description
        //loadImage
        let imageString = model.image
        let url = URL(string: imageString)!
        let data = try? Data(contentsOf: url)
        
        if let imageData = data {
            let image = UIImage(data: imageData)
            productImageView.image = image
            productImageView.contentMode = .scaleAspectFit
        }
    }
    
    //MARK: - IBActions
    @IBAction func minusButton(_ sender: Any) {
        if countValue >= 1 {
            countValue -= 1
            countLabel.text = String(countValue)
        } else { return }
        
        if countValue == 0 {
            minusButtonOutlet.isHidden = true
            countLabel.isHidden = true
        }
    }
    
    @IBAction func plusButton(_ sender: Any) {
        if countValue == 0 {
            minusButtonOutlet.isHidden = false
            countLabel.isHidden = false
        }
        
        if countValue <= 98 {
            countValue += 1
            countLabel.text = String(countValue)
        } else { return }
        
    }
}

extension TableViewCell: TableViewCellProtocol {
    func succes() {
        
    }
    
    func failure(error: Error) {
        
    }
    
    
}

