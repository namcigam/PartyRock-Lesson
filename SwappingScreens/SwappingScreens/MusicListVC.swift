//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Michael Brewer on 3/17/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.red
        
    }
    
    @IBAction func loadThirdScreenPressed(_ sender: Any) {
        let songTitle = "Quit Playing Games"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle )
    }
    
    @IBAction func backBtn(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlaySongVCViewController {
            if let song = sender as? String {
            destination.selectedSong = song
            }
        }
    }
}
