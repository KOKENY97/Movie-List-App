//
//  ViewController.swift
//  MovieListApp
//
//  Created by user209843 on 1/5/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var loginTxt: UITextField!
    @IBOutlet weak var passTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func createMovies() {
        let movie1 = Movies(name: "Lord of the Rings", imageName: "senhoraneis", isFavorite: true)
        DataMovies.movies.append(movie1)
        
        let movie2 = Movies(name: "The Matrix", imageName: "matrix1", isFavorite: true)
        DataMovies.movies.append(movie2)
        
        let movie3 = Movies(name: "Harry Potter", imageName: "harryPotter", isFavorite: false)
        DataMovies.movies.append(movie3)
        
        let movie4 = Movies(name: "Avengers", imageName: "vingadores", isFavorite: true)
        DataMovies.movies.append(movie4)
        
        let movie5 = Movies(name: "Braveheart", imageName: "coracaoValente", isFavorite: false)
        DataMovies.movies.append(movie5)
        
        let movie6 = Movies(name: "Back to the Future", imageName: "deVoltaFuturo1", isFavorite: false)
        DataMovies.movies.append(movie6)
        
        let movie7 = Movies(name: "Back to the Future 2", imageName: "deVoltaFuturo2", isFavorite: true)
        DataMovies.movies.append(movie7)
        
        let movie8 = Movies(name: "Empire Strikes Back", imageName: "starWars5", isFavorite: true)
        DataMovies.movies.append(movie8)
        
        let movie9 = Movies(name: "Return of the Jedi", imageName: "starWars6", isFavorite: false)
        DataMovies.movies.append(movie9)
        
        let movie10 = Movies(name: "Joker", imageName: "joker", isFavorite: false)
        DataMovies.movies.append(movie10)
        
        let movie11 = Movies(name: "Shrek", imageName: "shrek", isFavorite: true)
        DataMovies.movies.append(movie11)
        
    }

    @IBAction func loginBtn(_ sender: Any) {
        
        if loginTxt.text == "cahue" && passTxt.text == "cahue1234" {
            
            DataMovies.movies.removeAll()
            createMovies()
            performSegue(withIdentifier: "screen2", sender: self)
            
        } else {
            
            let alert = UIAlertController(title: "Error", message: "cLogin or Password incorrect", preferredStyle: UIAlertController.Style.alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
            
            self.present(alert,animated: true, completion: nil)
        }
        
            
    }
    
    
    
}

