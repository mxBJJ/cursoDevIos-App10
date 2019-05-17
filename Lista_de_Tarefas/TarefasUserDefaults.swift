//
//  TarefasUserDefaults.swift
//  Lista_de_Tarefas
//
//  Created by Max Mendes on 16/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit

class TarefasUserDefault{
    
    let keyTarefas = "listaTarefas"
    var tarefas: [String] = []
    
    func save(tarefa:String) {
    
        tarefas = listTasks()
        
        tarefas.append(tarefa)
        UserDefaults.standard.set(tarefas, forKey: keyTarefas)
    }
    
    func listTasks() -> Array<String> {
        let dados = UserDefaults.standard.object(forKey: keyTarefas)
        
        if dados != nil{
            return dados as! [String]
        }else{
            return []
        }
    }
    
   func removerTarefa(index:Int){
        tarefas = listTasks()
        tarefas.remove(at: index)
        UserDefaults.standard.set(tarefas, forKey: keyTarefas)
    }
}
