import UIKit
import ConnectIQ

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func connectBtnPressed(_ sender: Any) {
        let urlTypes = (Bundle.main.infoDictionary!["CFBundleURLTypes"] as! [[String : Any]]).first!
        let urlScheme = (urlTypes["CFBundleURLSchemes"] as! [String]).first!
        print("URL Schema is " + urlScheme)
        
        let connectIq = ConnectIQ.sharedInstance()!
        connectIq.initialize(withUrlScheme: urlScheme, uiOverrideDelegate: nil)
        connectIq.showDeviceSelection()
    }
    
}

