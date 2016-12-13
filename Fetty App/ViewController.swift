//
//  ViewController.swift
//  Fetty App
//
//  Created by Ramana Gandikota on 7/20/15.
//  Copyright (c) 2015 VG. All rights reserved.
//
import UIKit
import iAd
import AVFoundation

class ViewController: UIViewController,  ADInterstitialAdDelegate {
    var interstitialAd:ADInterstitialAd!
    var interstitialAdView: UIView = UIView()

    var audioPlayerTwo = AVAudioPlayer()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Create a Timer fr the loading of an ad...
        var helloWorldTimer = Timer.scheduledTimer(timeInterval: 45, target: self, selector: #selector(ViewController.loadInterstitialAd), userInfo: nil, repeats: true)
        loadInterstitialAd()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    /*
    Begin creating functions that play the sounds based on when each button is pressed
    */
    
    @IBAction func seventeen38(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "1738",ofType: "mp3")!)
        //var error:NSError?

        //try this in order to handle the error if present...(Happens in every function)...
        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch {
            print(NSError())}
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    
    @IBAction func sackforustoroll(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "trapQueen",ofType: "mp3")!)
        //var error:NSError?

        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch {
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    @IBAction func heywasuphello(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "im like hey wasup hello",ofType: "mp3")!)
        //var error:NSError?

        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch {
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    @IBAction func myway(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "myway",ofType: "mp3")!)
        
        //var error:NSError?
        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch {
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    @IBAction func remmybozzz(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "remyBoyzz",ofType: "mp3")!)
        
        //var error:NSError?
        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch{
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    @IBAction func skaaaaa(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "skaaaaaa",ofType: "mp3")!)
        
        //var error:NSError?
        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch{
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    @IBAction func Yeahbaby(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Yeah baby",ofType: "mp3")!)
        
        //var error:NSError?
        do{
            audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch{
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    @IBAction func Zoomzoom(_ sender: UIButton) {
        let alertSound = URL(fileURLWithPath: Bundle.main.path(forResource: "Zoomzoom",ofType: "mp3")!)
        
        //var error:NSError?
        do{
        audioPlayerTwo = try AVAudioPlayer(contentsOf: alertSound)
        } catch{
            print(NSError())
        }
        audioPlayerTwo.prepareToPlay()
        audioPlayerTwo.volume = 0.3
        audioPlayerTwo.play()
        audioPlayerTwo.numberOfLoops = 0
        
        
        
    }
    
    

    
    override var prefersStatusBarHidden : Bool {
        return true
    }

    func loadInterstitialAd() {
        interstitialAd = ADInterstitialAd()
        interstitialAd.delegate = self
        print("happs")
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
