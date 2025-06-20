//
//  MovieListViewController.swift
//  Hello World
//
//  Created by PaingHtet on 19/06/2025.
//

import UIKit

class MovieListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    fileprivate var movies = [String]()

    // MARK: - IBOutlets
    @IBOutlet var movieCollectionView: UICollectionView!
    
    // MARK: - Lifecycles
    override func viewDidLoad() {
        super.viewDidLoad()

        (1...10).forEach { num in movies.append("movie_\(num)") }
        
        movieCollectionView.register(UINib(nibName: "MovieCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: MovieCollectionViewCell.IDENTIFIRE)
        
        movieCollectionView.dataSource = self
        movieCollectionView.delegate = self
    }
    
    // MARK: - UICollectionViewDataSource Methods
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return movies.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MovieCollectionViewCell.IDENTIFIRE, for: indexPath) as? MovieCollectionViewCell else {
            fatalError("ERROR: Give cell cannot be converted into MovieCollectionViewCell")
        }
        cell.movie = movies[indexPath.item]
        cell.layer.cornerRadius = 16
        cell.clipsToBounds = true
        return cell
        
    }
    
    // MARK: - UICollectionViewDelegateFlowLayout Methods
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return .init(top: 12, left: 12, bottom: 0, right: 12)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (view.frame.width / 2) - 18
        return .init(width: width, height: width * 1.5)
    }
    
}
