//
//  ViewController.swift
//  LectionScrollView
//
//  Created by Alexander on 11.11.2019.
//  Copyright © 2019 Leonid Serebryanyy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let elements = [["Сделать экран 'Задачи' как в Trello", " ◦ Можно добавлять столбцы ◦ В столбцы можно добавлять карточки ◦ На карточках отображайте описание задачи ◦ Интерфейс добавления - можно показывать UIAlertController с textField, а можно сделать как в Trello. На экране 'Заметки' отображаются заметки команды."], ["2 задача", "LOL"]]

    fileprivate let collectionViewH: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellH")
        return cv
    }()
    
    fileprivate let collectionViewV: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        let cv = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cv.translatesAutoresizingMaskIntoConstraints = false
        cv.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cellV")
        return cv
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionViewH.delegate = self
        collectionViewH.dataSource = self
        view.addSubview(collectionViewH)
        collectionViewH.backgroundColor = .blue
        collectionViewH.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        collectionViewH.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        collectionViewH.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        collectionViewH.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        collectionViewH.addSubview(collectionViewV)
        
    }
    
    

}



extension ViewController: UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {
    
func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    return CGSize(width: collectionView.frame.width / 3, height: collectionView.frame.height)
}

func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 4
}

func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellH", for: indexPath)
    cell.backgroundColor = .red
    return cell
}

//extension ViewController: UICollectionViewDataSource {
//
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return elements.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.reuseId, for: indexPath) as! MyCollectionViewCell
//
//        let element1 = elements[indexPath.item][0]
//        let element2 = elements[indexPath.item][1]
//        cell.label.text = element1
//        cell.content.text = element2
//
//
//        return cell
//    }


}
