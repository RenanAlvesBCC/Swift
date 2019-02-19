//
//  ViewController.swift
//  CoreML
//
//  Created by Renan Alves on 04/02/19.
//  Copyright © 2019 Renan Alves. All rights reserved.
//

import UIKit
import AVKit
import Vision

class ViewController: UIViewController, AVCaptureVideoDataOutputSampleBufferDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        //here we comes to start up the camera
        let captureSection = AVCaptureSession()
        captureSection.sessionPreset = .photo
        guard let captureDevice = AVCaptureDevice.default(for: .video) else { return }
        guard let input = try? AVCaptureDeviceInput(device: captureDevice) else { return }
        captureSection.addInput(input)
        captureSection.startRunning()
        
        //Here we comes configure the previewLayers
        let previewLayer = AVCaptureVideoPreviewLayer(session: captureSection)
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
        
        let dataOutput = AVCaptureVideoDataOutput()
        dataOutput.setSampleBufferDelegate(self, queue: DispatchQueue(label: "VideoQueue"))
        captureSection.addOutput(dataOutput)
        
//        VNImageRequestHandler(cgImage: <#T##CGImage#>, options: [:]).perform(<#T##requests: [VNRequest]##[VNRequest]#>)
        
    }
    
    func captureOutput(_ output: AVCaptureOutput, didOutput sampleBuffer: CMSampleBuffer, from connection: AVCaptureConnection) {
        
        guard let pixelBuffer: CVPixelBuffer  = CMSampleBufferGetImageBuffer(sampleBuffer) else { return }
        
        guard let model = try? VNCoreMLModel(for: SqueezeNet()) else { return }
        
        let request = VNCoreMLRequest(model: model) { (finishedReq, err) in
            
            print(finishedReq.results)
            guard let results = finishedReq.results as? [VNClassificationObservation] else { return }
            
            guard let firstObservation = result.firs else { return }
            
            print(firstObservation.identifier, firstObservation.confidence)
        }
        
        try? VNImageRequestHandler(cvPixelBuffer: pixelBuffer, options: [:]).perform([request])
    }
}

