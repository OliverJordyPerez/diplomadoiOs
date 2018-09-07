//
//  ToDoCell.swift
//  toDoList
//
//  Created by OliverPérez on 9/7/18.
//  Copyright © 2018 Oliver Jordy Pérez Escamilla. All rights reserved.
//

import UIKit

class ToDoCell: UITableViewCell {
    
    var delegate: ToDoCellDelegate?
    
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBAction func completeButtonTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
}

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}
