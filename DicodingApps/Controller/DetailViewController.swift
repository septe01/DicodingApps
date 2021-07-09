//
//  DetailViewController.swift
//  DicodingApps
//
//  Created by septehabudin on 09/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    // IBOutlets menghubungkan view dengan controller
    @IBOutlet weak var titleDetail: UILabel!
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var descDetail: UILabel!
    
    // Digunakan untuk menampung data sementara
    var detail: (title:String?, desc:String?,image:UIImage?)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        titleDetail.text = detail.title
        descDetail.text = detail.desc
        imageDetail.image = detail.image
        
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
