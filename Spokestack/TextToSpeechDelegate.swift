//
//  TextToSpeechDelegate.swift
//  Spokestack
//
//  Created by Noel Weichbrodt on 11/19/19.
//  Copyright © 2019 Pylon AI, Inc. All rights reserved.
//

import Foundation

/// Protocol for receiving the response of a TTS request
@objc public protocol TextToSpeechDelegate: AnyObject {
    
    /// The TTS synthesis request has resulted in a successful response.
    /// - Note: The URL will be invalidated within 60 seconds of generation.
    /// - Parameter url: The url pointing to the TTS media container
    func success(result: TextToSpeechResult) -> Void
    
    /// The TTS synthesis request has resulted in an error response.
    /// - Parameter error: The error representing the TTS response.
    func failure(error: Error) -> Void
    
    /// The TTS synthesis request has begun playback over the default audio system.
    func didBeginSpeaking() -> Void
    
    /// The TTS synthesis request has finished playback.
    func didFinishSpeaking() -> Void
    
    /// A trace event from the TTS system.
    /// - Parameter trace: The debugging trace message.
    func didTrace(_ trace: String) -> Void
}
