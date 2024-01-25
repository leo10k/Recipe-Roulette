//
//  RecipeCollectionViewCell.swift
//  Recipe Roulette
//
//  Created by Leonardo Macedo on 25/01/24.
//

import UIKit
import SDWebImage

class RecipeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "RecipeCollectionViewCell"
    
    private let recipeImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        return imageView
    } ()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        contentView.addSubview(recipeImageView)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        recipeImageView.frame = contentView.bounds
    }
    
    public func configure(with model: String) {
        guard let url = URL(string: "https://image.tmdb.org/t/p/w500/\(model)") else {return}
        recipeImageView.sd_setImage(with: url, completed: nil)
    }
    
}
