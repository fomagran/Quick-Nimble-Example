//
//  ViewController.swift
//  Quick-Nimble Example
//
//  Created by Fomagran on 2021/08/30.
//

import UIKit

class MovieViewController: UIViewController {

    //MARK:- IBOutlets
    
    @IBOutlet weak var table: UITableView!
    
    //MARK:- Properties
    
    var movies:[Movie] {
        return MoviesDataHelper.getMovies()
    }
    
    //MARK:- Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
       configure()
    }
    
    //MARK:- Helper Functions
    
    private func configure() {
        table.dataSource = self
    }
}

//MARK:- UITableViewDataSource

extension MovieViewController:UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = table.dequeueReusableCell(withIdentifier: "MovieTableViewCell")
        cell?.textLabel?.text = movies[indexPath.row].title
        cell?.detailTextLabel?.text = movies[indexPath.row].genreString()
        return cell!
    }
}

