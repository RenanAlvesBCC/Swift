//
//  Som.swift
//  MoveBall
//
//  Created by Marcos Fellipe Costa Silva on 21/02/2018.
//  Copyright © 2018 BEPiD. All rights reserved.
//

import Foundation
import AVFoundation
import AudioKit



class Som: NSObject {
    
    var player = AVAudioPlayer()
    var soundIsOn = true
    
    func playSound(nameSound: String, WithExtension: String) {
        
        
        
        if UserDefaults.standard.object(forKey: "soundIsOn") == nil {
            UserDefaults.standard.set(soundIsOn, forKey: "soundIsOn")
        }
        let soundUrl = Bundle.main.url(forResource: nameSound, withExtension:  WithExtension)!
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryAmbient)
            try AVAudioSession.sharedInstance().setActive(true)
            
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player.numberOfLoops = -1
            player.volume = 0.8
            player.prepareToPlay()
            
            
        } catch _ {
            return print("sound file not found")
        }
        playPause()
    }
    
    func pauseSound() {
        
        if player.isPlaying {
            player.pause()
        }
    }
    
    func stopSoundEffects() {
        if player.isPlaying {
            player.stop()
        }
    }
    
    func stopSound(){
        
        player.stop()
        
    }
    
    func continueSound() {
        if !player.isPlaying {
            player.play()
        }
    }
    
    func isPlaying() -> Bool {
        return player.isPlaying
    }
    
    func playPause(){
        
        if status() {
            self.continueSound()
        } else {
            self.stopSound()
        }
    }
    
    func status () -> Bool{
        if UserDefaults.standard.object(forKey: "soundIsOn") == nil {
            UserDefaults.standard.set(soundIsOn, forKey: "soundIsOn")
        }
        return UserDefaults.standard.bool(forKey: "soundIsOn")
    }
    func changeStatus(){
        if UserDefaults.standard.bool(forKey: "soundIsOn"){
            soundIsOn = false
            UserDefaults.standard.set(soundIsOn, forKey: "soundIsOn")
        }else{
            soundIsOn = true
            UserDefaults.standard.set(soundIsOn, forKey: "soundIsOn")
        }
    }
    
    
}
