//
//  HexaPlayerPlatformSDK.swift
//  HexaPlayer
//
//  Created by Hexabrain on 30/07/25.
//

import Foundation

public class HexaPlayerPlatformSDK: UIViewController {
    
    var config: HexaPlayerConfig?
    var loadingView: LoadingView?
    var imageURL: URL?
    
    public convenience init() {
        self.init(imageURL: nil)
        print("Init with HexaPlayer SDK \(self.getVersion()) version.")
        
        let frameworkBundle = Bundle(for: HexaPlayerPlatformSDK.self)
        if let resourceBundleURL = frameworkBundle.url(forResource: "HexaPlayer", withExtension: "bundle"),
           let resourceBundle = Bundle(url: resourceBundleURL) {
            
            if let loadingView = resourceBundle.loadNibNamed("LoadingView", owner: nil, options: nil)?.first as? LoadingView {
                self.loadingView = loadingView
                self.loadingView?.frame = self.view.bounds
                self.loadingView?.activityIndicator.startAnimating()
                self.view.addSubview(self.loadingView!)
            } else {
                assertionFailure("Could not load LoadingView from resource bundle")
            }
        } else {
            assertionFailure("Could not locate resource bundle")
        }
    }
    
    init(imageURL: URL?) {
        self.imageURL = imageURL
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func getVersion() -> String {
        return "0.1.0"
    }
}
