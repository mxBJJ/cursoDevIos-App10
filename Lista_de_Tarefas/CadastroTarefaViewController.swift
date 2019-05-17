//
//  CadastroTarefaViewController.swift
//  Lista_de_Tarefas
//
//  Created by Max Mendes on 16/05/19.
//  Copyright © 2019 Curso iOS. All rights reserved.
//

import UIKit

class CadastroTarefaViewController: UIViewController {
    @IBOutlet weak var campoTexto: UITextField!
    @IBAction func btnAdicionar(_ sender: Any) {
        if let tarefaDigitada = campoTexto.text{
            let tarefa = TarefasUserDefault()
            tarefa.save(tarefa: tarefaDigitada)
            view.endEditing(true)
//            let dados  = tarefa.listTasks()
//            print(dados)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
}
