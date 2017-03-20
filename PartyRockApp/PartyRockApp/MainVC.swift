//
//  ViewController.swift
//  PartyRockApp
//
//  Created by Michael Brewer on 3/20/17.
//  Copyright © 2017 Michael Brewer. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var partyRockArray = [PartyRock]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = PartyRock(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Lights Out")
        let p2 = PartyRock(imageURL: "http://www.croshalgroup.com/wp-content/uploads/2015/05/Redfoo-Website.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1w9DiGlZksU\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Let's Get Ridiculous")
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/2wUxw6GH3IM/hqdefault.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/vg_nvEGryA4\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle Lesson")
        let p4 = PartyRock(imageURL: "http://www.billboard.com/files/styles/article_main_image/public/media/lmfao-party-rock-anthem-2011-billboard-650.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/gZIqW92GaTQ\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Party Rock Commercial")
        let p5 = PartyRock(imageURL: "http://direct-ns.rhap.com/imageserver/v2/albums/Alb.219913217/images/600x600.jpg", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/tWyuglGCKgE\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Juicy Wiggle")
        
        
        partyRockArray.append(p1)
        partyRockArray.append(p2)
        partyRockArray.append(p3)
        partyRockArray.append(p4)
        partyRockArray.append(p5)

        
        tableView.delegate = self
        tableView.dataSource = self
        print("hello")

    }


    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        print("I am inside the tableView function now")
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell {
          
            let partyRock = partyRockArray[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            print("This is working")
            return cell
            
        } else {
            print("This is not working")
            return UITableViewCell()
            
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("the number of items in the party rock array is: \(partyRockArray.count)")
        return partyRockArray.count
    }

}

