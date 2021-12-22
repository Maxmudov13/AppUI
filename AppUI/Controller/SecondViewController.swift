import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        initView()
    }



    // MARK: - Methods

    func initView() {
        addNavigationBar()
        
    }
    func addNavigationBar(){

        let scroll = UIImage(systemName: "arrowshape.turn.up.left.2.fill")
        navigationItem.leftBarButtonItem =
        UIBarButtonItem(image: scroll, style: .plain,target: self, action: #selector(scrollTapped))
        
        title = "Scroll View"
    }
    
    // MARK: - Actions
    
    @objc func scrollTapped(){
        navigationController?.popViewController(animated: true)
    }
    
}
