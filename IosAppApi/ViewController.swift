//
//  ViewController.swift
//  concurrentcy
//
//  Created by Cambrian on 2023-09-11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var callCoinBase: UIButton!
    
    @IBAction func CoinBaseApi(_ sender: Any) {
        Task {
            do{
                await print( try CoinBaseAPI_Helper.fetch())
            } catch CoinBaseApi_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Please insert connect url")
            } catch let err {
                print(err)
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

    }


}
