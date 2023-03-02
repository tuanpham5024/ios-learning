//
//  ViewController.swift
//  QuizApp
//
//  Created by Pham Anh Tuan on 24/02/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var contributeButton: UIButton!
    var viewModel = QuestionViewModel()
    var quesitions:DataModel?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.apiToGetQuestionData { [weak self] in
            self?.quesitions = self?.viewModel.questionData
            
            DispatchQueue.main.async {
              //  self?.tableView.reloadData()
            }
            
        }
        
    }

    @IBAction func onClickPlay(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "QuizViewController") as? QuizViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func onClickContribute(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ContributeViewController") as? ContributeViewController else {return}
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

