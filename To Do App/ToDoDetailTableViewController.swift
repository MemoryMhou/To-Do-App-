//
//  ToDoDetailTableViewController.swift
//  To Do App
//
//  Created by Memory Mhou on 20/03/2024.
//

import UIKit

class ToDoDetailTableViewController: UITableViewController {

    @IBOutlet weak var saveBarButtton: UIBarButtonItem!
    
    @IBOutlet weak var noteView: UITextView!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var nameField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()


    }


    @IBAction func CancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
            
        
        } else{
            navigationController?.popViewController(animated: true)
        }
        
        }
    
}
