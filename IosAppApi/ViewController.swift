import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var callCoinBase: UIButton!
    @IBOutlet weak var callOpenBreweryApi: UIButton!
    @IBOutlet weak var callJokesApi: UIButton!
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func CoinBaseApi(_ sender: Any) {
        Task {
            do {
                await print(try CoinBaseAPI_Helper.fetch())
            } catch CoinBaseApi_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("CoinBase: Please insert connect URL")
            } catch let err {
                print("CoinBase Error: \(err)")
            }
        }
    }

    @IBAction func OpenBreweryApi(_ sender: Any) {
        Task {
            do {
                await print(try OpenBrewery_Helper.fetch())
            } catch OpenBrewery_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("OpenBrewery: Please insert connect URL")
            } catch let err {
                print("OpenBrewery Error: \(err)")
            }
        }
    }

    @IBAction func JokesApi(_ sender: Any) {
        Task {
            do {
                await print(try JokesAPI_Helper.fetch())
            } catch JokesApi_Errors.CANNOT_CONVERT_STRING_TO_URL {
                print("Jokes API: Please insert connect URL")
            } catch let err {
                print("Jokes API Error: \(err)")
            }
        }
    }
}
