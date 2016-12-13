//
//  InfoViewController.swift
//  Fetty App
//
//  Created by Ramana Gandikota on 7/21/15.
//  Copyright (c) 2015 VG. All rights reserved.
//

import UIKit
import iAd

class InfoViewController: UIViewController, ADInterstitialAdDelegate {
    var interstitialAd:ADInterstitialAd!
    var interstitialAdView: UIView = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        var helloWorldTimer = Timer.scheduledTimer(timeInterval: 5, target: self, selector: #selector(InfoViewController.loadInterstitialAd), userInfo: nil, repeats: true)
        loadInterstitialAd()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func linkItunes(_ sender: AnyObject) {
        
        let url  = URL(string: "https://itunes.apple.com/us/artist/fetty-wap/id872900424")
        
        if UIApplication.shared.canOpenURL(url!) {
            UIApplication.shared.openURL(url!)
        }    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    func loadInterstitialAd() {
        interstitialAd = ADInterstitialAd()
        interstitialAd.delegate = self
        print("Ad Is Loading")
    }
    
    func interstitialAdWillLoad(_ interstitialAd: ADInterstitialAd!) {
        
    }
    
    func interstitialAdDidLoad(_ interstitialAd: ADInterstitialAd!) {
        interstitialAdView = UIView()
        interstitialAdView.frame = self.view.bounds
        view.addSubview(interstitialAdView)
        
        interstitialAd.present(in: interstitialAdView)
        UIViewController.prepareInterstitialAds()
    }
    
    func interstitialAdActionDidFinish(_ interstitialAd: ADInterstitialAd!) {
        interstitialAdView.removeFromSuperview()
    }
    
    func interstitialAdActionShouldBegin(_ interstitialAd: ADInterstitialAd!, willLeaveApplication willLeave: Bool) -> Bool {
        return true
    }
    
    func interstitialAd(_ interstitialAd: ADInterstitialAd!, didFailWithError error: Error!) {
        
    }
    
    func interstitialAdDidUnload(_ interstitialAd: ADInterstitialAd!) {
        interstitialAdView.removeFromSuperview()
    }
    

}
