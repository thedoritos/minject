//
//  TodoViewController.swift
//  Minject
//
//  Created by thedoritos on 06/21/2020.
//  Copyright (c) 2020 thedoritos. All rights reserved.
//

import UIKit
import Minject

class TodoViewController: UITableViewController, TodoViewContract {
    private lazy var container: DIContainer = AppContainer.shared.diContainer
    private lazy var presenter: TodoPresenter = self.container.resolve()

    private var items: [Todo] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Minject Todo"
        self.tableView.register(UITableViewCell.self, forCellReuseIdentifier: "todoCell")

        self.presenter.viewDidLoad(self)
    }

    func showItems(todo: [Todo]) {
        self.items = todo
        self.tableView.reloadData()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.items.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "todoCell", for: indexPath)
        let item = self.items[indexPath.row]
        cell.textLabel?.text = item.title
        return cell
    }
}
