//
//  AcademiesViewController.swift
//  DicodingApps
//
//  Created by septehabudin on 09/07/21.
//

import UIKit

class AcademiesViewController: UIViewController {

    @IBOutlet weak var androidAcademy: UIStackView!
    @IBOutlet weak var unityAcademy: UIStackView!
    @IBOutlet weak var cloudAcademy: UIStackView!
    @IBOutlet weak var arvrAcademy: UIStackView!
    
    // Digunakan untuk menampung data item
    var academies = [
        ("Android Developer","lorem ipsum",UIImage(named: "android")),
        ("Unity Game Developer","lorem ipsum",UIImage(named: "unity")),
        ("Ar / Vr DEveloper","lorem ipsum",UIImage(named: "arvr")),
        ("Cloud Developer","lorem ipsum",UIImage(named: "cloud")),
        ("Lorem ipsum dolor sit amet", "Lorem ipsum", UIImage(named: "android"))
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Menambahkan aksi tapped pada stack view
        addTapped(parameter: &androidAcademy)
        addTapped(parameter: &unityAcademy)
        addTapped(parameter: &cloudAcademy)
        addTapped(parameter: &arvrAcademy)
        
    }
    
    func addTapped(parameter: inout UIStackView) {
        // Menambahkan gestur tap
        parameter.isUserInteractionEnabled = true
        parameter.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.objectTapped)))
    }
    
    
    @objc func objectTapped(gesture: UIGestureRecognizer){
        // Digunakan menginisialisasi DetailViewController
        guard let controller = UIStoryboard( // call mainstoryboard
            name: "Main", bundle: nil
        ).instantiateViewController(
        withIdentifier: "DetailViewControllerScene"
        )as? DetailViewController else {return}
        
        // Kode di bawah digunakan untuk menentukan stack view mana yang dipilih
        switch gesture.view as? UIStackView {
        case (androidAcademy):
            controller.detail = academies[0]
        case (unityAcademy):
            controller.detail = academies[1]
        case (arvrAcademy):
            controller.detail = academies[2]
        case (cloudAcademy):
            controller.detail = academies[3]
        default:
            controller.detail = academies[4]
        }
        
        // Kode dibawah digunakan untuk berpindah ke halaman detail dengan membawa informasi yang sesuai
        self.present(controller, animated: true, completion: nil)
        
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
