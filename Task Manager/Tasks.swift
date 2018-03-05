//
//  Task.swift
//  Task Manager
//
//  Created by Devin Cook on 2/28/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation


class Task {
    var title: String
    var dueDate: Int
    var details: String
    var completed: Bool
    init(title: String, dueDate: Int, details: String, completed: Bool) {
        self.title = title
        self.dueDate = dueDate
        self.details = details
        self.completed = completed
    }
}
let currentDate = Date()
let dateFormatter = DateFormatter()
let calendar = Calendar.current
var listOfTasks = [Task]()
func addTask(){
    print("What is the name of your task?")
    let title = readLine()!
    print("Please describe your task.")
    let details = readLine()!
    print("How many days before the task is due?")
    var dueDate = Int(readLine()!)
    while dueDate == nil {
        print("How many days before the task is due?")
        dueDate = Int(readLine()!)
    }
    let newTask = Task(title: title, dueDate: dueDate!, details: details, completed: false)
    listOfTasks.append(newTask)
}

func removeTask(){
    for i in 0...listOfTasks.count - 1 {
        print("\(i). \(listOfTasks[i].title)")
    }
    print("Please select a task you want to remove.")
    var remove = Int(readLine()!)
    while remove == nil {
        print("Please select a task you want to remove.")
        remove = Int(readLine()!)
    }
    listOfTasks.remove(at: remove!)
}

func viewTasks(){
    dateFormatter.dateFormat = "EEEE, MMM d, yyyy"
    var count = 0
    if listOfTasks.count - 1 >= 0 {
        for j in 0...listOfTasks.count - 1 {
            print("\(j). \(listOfTasks[j].title)")
            count += 1
        }
    }
    if count >= 1 {
        print("Please select a task you want to view.")
        var view = Int(readLine()!)
        while view == nil || view! > count {
            print("Please select a task you want to view.")
            view = Int(readLine()!)
        }
        let duedate = calendar.date(byAdding: .day, value: listOfTasks[view!].dueDate, to: currentDate)
        print("Title: \(listOfTasks[view!].title)\nDescription: \(listOfTasks[view!].details)\nDue Date: \(dateFormatter.string(from: duedate!))")
    }
    if count <= 0 {
        print("There are no tasks.")
    }
}

func viewImcompltetedTasks(){
    var count = 0
    if listOfTasks.count > 0{
        for k in 0...listOfTasks.count - 1 {
            if !listOfTasks[k].completed{
                print("\(k). \(listOfTasks[k].title)")
                count += 1
            }
        }
    }
    if count >= 1 {
        print("Please select a task you want to view.")
        var view = Int(readLine()!)
        while view == nil || view! > count {
            print("Please select a task you want to view.")
            view = Int(readLine()!)
        }
        let duedate = calendar.date(byAdding: .day, value: listOfTasks[view!].dueDate, to: currentDate)
        print("Title: \(listOfTasks[view!].title)\nDescription: \(listOfTasks[view!].details)\nDue Date: \(dateFormatter.string(from: duedate!))")
    }
    if count <= 0 {
        print("There are no imcomplete tasks.")
    }
}

func viewCompletedTasks(){
    dateFormatter.dateFormat = "EEEE, MM dd, yyyy"
    var count = 0
    if listOfTasks.count > 0{
    for l in 0...listOfTasks.count - 1 {
        if listOfTasks[l].completed{
            print("\(l). \(listOfTasks[l].title)")
            count += 1
            }
        }
    }
    if count >= 1 {
        print("Please select a task you want to view.")
        var view = Int(readLine()!)
        while view == nil {
            print("Please select a task you want to view.")
            view = Int(readLine()!)
        }
        let duedate = dateFormatter.calendar.date(byAdding: .day, value: listOfTasks[view!].dueDate, to: currentDate)
        print("Title: \(listOfTasks[view!].title)\nDescription: \(listOfTasks[view!].details)\nDue Date: \(dateFormatter.string(from: duedate!))")
    }
    if count <= 0 {
        print("There are no complete tasks.")
    }
}

func completeTask(){
    dateFormatter.dateFormat = "EEEE, MM dd, yyyy"
    var count = 0
    for o in 0...listOfTasks.count - 1 {
        if !listOfTasks[0].completed{
            print("\(o). \(listOfTasks[o].title)")
            count += 1
        }
    }
    if count >= 1 {
        print("Please select a task to complete.")
        var complete = Int(readLine()!)
        while complete == nil {
            print("Please select a task to complete.")
            complete = Int(readLine()!)
        }
        listOfTasks[complete!].completed = true
        print("Task completed!")
    }
    if count <= 0 {
        print("There are no imcomplete tasks to complete.")
    }
    
}
