//
//  PomoList+Extension.swift
//  PomoAPP
//
//  Created by Vinicius Mangueira Correia on 30/05/19.
//  Copyright © 2019 Vinicius Mangueira Correia. All rights reserved.
//

import UIKit

extension PomoListController: UICollectionViewDelegateFlowLayout {
    
    public func setupCollection() {
        self.collectionView.backgroundColor = .backgroundColor
        collectionView.register(cellType: PomoListCell.self)
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let pomoVC = PomoController()
        pomoVC.pomo = pomos[indexPath.row]
        let navigation = UINavigationController(rootViewController: pomoVC)
        self.present(navigation, animated: true, completion: nil)
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(for: indexPath, cellType: PomoListCell.self)
        cell.namePomo.text = pomos[indexPath.row].name
        cell.descriptionPomo.text = pomos[indexPath.row].about
        cell.pomoTV.percentageLabel.text = "\(String(pomos[indexPath.row].pomoTime)):00"
        if let layout = collectionViewLayout as? UICollectionViewFlowLayout {
            layout.scrollDirection = .horizontal
        }
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pomos.count
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: self.view.frame.width - 48, height: (self.view.frame.height/1.4))
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 10, left: 10, bottom: 10, right: 10)
    }
}
