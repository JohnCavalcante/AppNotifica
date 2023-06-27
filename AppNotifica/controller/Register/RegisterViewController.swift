//
//  RegisterViewController.swift
//  AppNotifica
//
//  Created by IFBIOTIC08 on 27/06/23.
//

import Foundation
import UIKit

class RegisterViewController: UIViewController {
    //MARK: -  Clouseres
    var onLoginTap: (() -> Void)?
    
    //cria uma variável que é do tipo LoginView
    lazy var registerView: RegisterView = {
        let registerView = RegisterView()
         registerView.onLoginTap = {
           self.onLoginTap?()
       }
       return registerView
       
    } ()
    
    
       override func loadView(){
           self.view = registerView
       }
       
    // é executado quando está carregando
       override func viewDidLoad() {
           super.viewDidLoad()
        self.title = "Registrar"
           
           self.navigationController?.navigationBar.prefersLargeTitles=true

       }

}
