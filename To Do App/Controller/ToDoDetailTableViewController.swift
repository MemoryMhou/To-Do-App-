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
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var reminderSwitch: UISwitch!
   
    var toDoItem: ToDoItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if toDoItem == nil {
            toDoItem = ToDoItem(name: "", date: Date(), notes: "", reminderSet: false)
            
        }
        updateUserInterface()
    }
    
    func updateUserInterface() {
        nameField.text = toDoItem.name
        datePicker.date = toDoItem.date
        noteView.text = toDoItem.notes
        reminderSwitch.isOn = toDoItem.reminderSet
        dateLabel.textColor = (reminderSwitch.isOn ? .black : .gray )
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        toDoItem = ToDoItem(name: nameField.text!, date: datePicker.date, notes: noteView.text, reminderSet: reminderSwitch
            .isOn)
    }


    @IBAction func CancelButtonPressed(_ sender: UIBarButtonItem) {
        let isPresentingInAddMode = presentingViewController is UINavigationController
        if isPresentingInAddMode {
            dismiss(animated: true, completion: nil)
            
        
        } else{
            navigationController?.popViewController(animated: true)
        }
        
        }
    
    @IBAction func remainderSwitchChanged(_ sender: UISwitch) {
        dateLabel.textColor = (reminderSwitch.isOn ? .black : .gray )
    }
}
