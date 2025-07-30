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
        print("Init with MPPlayer SDK \(self.getVersion()) version.")
        let bundle = Bundle(for: HexaPlayerPlatformSDK.self)
        if let loadingView = bundle.loadNibNamed(String(describing: LoadingView.self), owner: nil, options: nil)?.first as? LoadingView {
            self.loadingView = loadingView
            self.loadingView?.frame = self.view.bounds
            self.loadingView?.activityIndicator.startAnimating()
            self.view.addSubview(self.loadingView!)
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
