//
//  Menu.swift
//  Task Manager
//
//  Created by Devin Cook on 2/28/18.
//  Copyright © 2018 Devin Cook. All rights reserved.
//

import Foundation

func Menu(){
    print("********\n* Menu *\n********\n1. Add Task\n2. Remove Task\n3. View Tasks\n4. View Imccomplete Tasks\n5. View Complete Tasks\n6. Complete Task\n7. Exit")
    var userInput = Int(readLine()!)
    while userInput != 1 && userInput != 2 && userInput != 3 && userInput != 4 && userInput != 5 && userInput != 6 && userInput != 7{
        print("********\n* Menu *\n********\n1. Add Task\n2. Remove Task\n3. View Tasks\n4. View Imccomplete Tasks\n5. View Complete Tasks\n6. Complete Task")
        userInput = Int(readLine()!)
    }
    if userInput == 1{
        addTask()
        Menu()
    }
    if userInput == 2{
        removeTask()
        Menu()
    }
    if userInput == 3{
        viewTasks()
        Menu()
    }
    if userInput == 4{
        viewImcompltetedTasks()
        Menu()
    }
    if userInput == 5{
        viewCompletedTasks()
        Menu()
    }
    if userInput == 6{
        completeTask()
        Menu()
    }
    if userInput == 7{
    }

}
