//
//  ViewController.swift
//  Messenger
//
//  Created by Robert on 08.11.23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var messageTableView: UITableView!
    @IBOutlet weak var searchTextField: UITextField!
    var dataObject = Data()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDelegates()
        setupDatasources()
        registerCells()
        dataObject.getData()
    }
    
    private func setupDelegates() {
        messageTableView.delegate = self
        collectionView.delegate = self
        searchTextField.delegate = self
    }
    
    private func setupDatasources() {
        messageTableView.dataSource = self
        collectionView.dataSource = self
    }
    
    private func registerCells() {
        messageTableView.register(UINib(nibName: "MessageTableViewCell", bundle: nil), forCellReuseIdentifier: "MessageTableViewCell")
        collectionView.register(UINib(nibName: "StoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "StoryCollectionViewCell")
    }
    
    @IBAction func searchAction(_ sender: UIButton) {
        
        searchTextField.isHidden.toggle()
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataObject.users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageTableViewCell", for: indexPath) as! MessageTableViewCell
        cell.getData(model: dataObject.users[indexPath.row])
        return cell
    }
}

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return dataObject.storys.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "StoryCollectionViewCell", for: indexPath) as! StoryCollectionViewCell
        cell.getData(model: dataObject.storys[indexPath.row])
        return cell
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
}
