
import UIKit

class VC2: UIViewController {

    @IBOutlet weak var txtFldName: UITextField!
    
    @IBOutlet weak var txtFldMobile: UITextField!
    
    
    var nameVal = String()
    var mobileVal = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        txtFldName.text! = nameVal
//        txtFldMobile.text! = mobileVal

        
        NSNotificationCenter.default.addObserver(self, Selector: #selector(postNotification))
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
