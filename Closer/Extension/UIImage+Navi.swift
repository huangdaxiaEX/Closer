//
//  UIImage+Navi.swift
//  Closer
//
//  Created by huangdaxia on 2017/6/18.
//  Copyright © 2017年 pansy's idea. All rights reserved.
//

import UIKit

// ref http://vocaro.com/trevor/blog/2009/10/12/resize-a-uiimage-the-right-way/
// but with better scale handle

private let screenScale = UIScreen.main.scale

// MARK: - Resize

extension UIImage {
    
    func resizeToSize(_ size: CGSize, withTransform transform: CGAffineTransform, drawTransposed: Bool, interpolationQuality: CGInterpolationQuality) -> UIImage? {
        
        let pixelSize = CGSize(width: size.width * screenScale, height: size.height * screenScale)
        
        let newRect = CGRect(origin: .zero, size: pixelSize).integral
        let transposedRect = CGRect(origin: .zero, size: CGSize(width: pixelSize.height, height: pixelSize.width))
        
        let bitmapContext = CGContext(data: nil, width: Int(newRect.width), height: Int(newRect.height), bitsPerComponent: cgImage!.bitsPerComponent, bytesPerRow: 0, space: cgImage!.colorSpace!, bitmapInfo: cgImage!.bitmapInfo.rawValue)
        
        bitmapContext!.concatenate(transform)
        
        bitmapContext!.interpolationQuality = interpolationQuality
        
        bitmapContext!.draw(cgImage!, in: drawTransposed ? transposedRect : newRect)
        
        if let newCGImage = bitmapContext!.makeImage() {
            return UIImage(cgImage: newCGImage, scale: screenScale, orientation: imageOrientation)
        }
        
        return nil
    }
    
    func transformForOrientationWithSize(_ size: CGSize) -> CGAffineTransform {
        
        var transform = CGAffineTransform.identity
        
        switch imageOrientation {
            
        case .down, .downMirrored:
            transform = transform.translatedBy(x: size.width, y: size.height)
            transform = transform.rotated(by: CGFloat(Double.pi))
            
        case .left, .leftMirrored:
            transform = transform.translatedBy(x: size.width, y: 0)
            transform = transform.rotated(by: CGFloat(Double.pi / 2))
            
        case .right, .rightMirrored:
            transform = transform.translatedBy(x: 0, y: size.height)
            transform = transform.rotated(by: CGFloat(-Double.pi / 2))
            
        default:
            break
        }
        
        switch imageOrientation {
            
        case .upMirrored, .downMirrored:
            transform = transform.translatedBy(x: size.width, y: 0)
            transform = transform.scaledBy(x: -1, y: 1)
            
        case .leftMirrored, .rightMirrored:
            transform = transform.translatedBy(x: size.height, y: 0)
            transform = transform.scaledBy(x: -1, y: 1)
            
        default:
            break
        }
        
        return transform
    }
    
    func resizeToSize(_ size: CGSize, withInterpolationQuality interpolationQuality: CGInterpolationQuality) -> UIImage? {
        
        let drawTransposed: Bool
        
        switch imageOrientation {
        case .left, .leftMirrored, .right, .rightMirrored:
            drawTransposed = true
        default:
            drawTransposed = false
        }
        
        return resizeToSize(size, withTransform: transformForOrientationWithSize(size), drawTransposed: drawTransposed, interpolationQuality: interpolationQuality)
    }
    
    func cropWithBounds(_ bounds: CGRect) -> UIImage? {
        
        if let newCGImage = cgImage!.cropping(to: bounds) {
            
            return UIImage(cgImage: newCGImage, scale: screenScale, orientation: imageOrientation)
        }
        
        return nil
    }
    
    func centerCropWithSize(_ size: CGSize) -> UIImage? {
        
        let pixelSize = CGSize(width: size.width * screenScale, height: size.height * screenScale)
        
        let horizontalRatio = pixelSize.width / self.size.width
        let verticalRatio = pixelSize.height / self.size.height
        
        let ratio: CGFloat
        
        let originalX: CGFloat
        let originalY: CGFloat
        
        if horizontalRatio > verticalRatio {
            ratio = horizontalRatio
            
            originalX = 0
            originalY = (self.size.height - pixelSize.height / ratio) / 2
            
        } else {
            ratio = verticalRatio
            
            originalX = (self.size.width - pixelSize.width / ratio) / 2
            originalY = 0
        }
        
        let bounds = CGRect(x: originalX, y: originalY, width: pixelSize.width / ratio, height: pixelSize.height / ratio)
        
        return cropWithBounds(bounds)?.resizeToSize(size, withInterpolationQuality: .default)
    }
}

// MARK: - Round

extension UIImage {
    
    fileprivate func CGContextAddRoundedRect(_ context: CGContext, rect: CGRect, ovalWidth: CGFloat, ovalHeight: CGFloat) {
        
        if ovalWidth <= 0 || ovalHeight <= 0 {
            context.addRect(rect)
            
        } else {
            context.saveGState()
            
            context.translateBy(x: rect.minX, y: rect.minY)
            
            context.scaleBy(x: ovalWidth, y: ovalHeight)
            
            let fw = rect.width / ovalWidth
            let fh = rect.height / ovalHeight
            
            context.move(to: CGPoint(x: fw, y: fh/2))
            context.addArc(tangent1End: CGPoint(x: fw, y: fh), tangent2End: CGPoint(x: fw/2, y: fh), radius: 1)
            context.addArc(tangent1End: CGPoint(x: 0, y: fh), tangent2End: CGPoint(x: 0, y: fh/2), radius: 1)
            context.addArc(tangent1End: CGPoint(x: 0, y: 0), tangent2End: CGPoint(x: fw/2, y: 0), radius: 1)
            context.addArc(tangent1End: CGPoint(x: fw, y: 0), tangent2End: CGPoint(x: fw, y: fh/2), radius: 1)
            context.closePath()
            
            context.restoreGState()
        }
    }
    
    func roundWithCornerRadius(_ cornerRadius: CGFloat, borderWidth: CGFloat) -> UIImage? {
        
        let image = imageWithAlpha()
        
        let cornerRadius = cornerRadius * screenScale
        let borderWidth = borderWidth * screenScale
        
        let pixelSize = CGSize(width: image.size.width * screenScale, height: image.size.height * screenScale)
        
        guard let bitmapContext = CGContext(data: nil, width: Int(pixelSize.width), height: Int(pixelSize.height), bitsPerComponent: image.cgImage!.bitsPerComponent, bytesPerRow: 0, space: image.cgImage!.colorSpace!, bitmapInfo: image.cgImage!.bitmapInfo.rawValue) else {
            return nil
        }
        
        bitmapContext.beginPath()
        
        let rect = CGRect(x: borderWidth, y: borderWidth, width: pixelSize.width - borderWidth * 2, height: pixelSize.height - borderWidth * 2)
        CGContextAddRoundedRect(bitmapContext, rect: rect, ovalWidth: cornerRadius, ovalHeight: cornerRadius)
        
        bitmapContext.closePath()
        
        bitmapContext.clip()
        
        let imageRect = CGRect(origin: .zero, size: pixelSize)
        bitmapContext.draw(image.cgImage!, in: imageRect)
        
        if let newCGImage = bitmapContext.makeImage() {
            return UIImage(cgImage: newCGImage, scale: screenScale, orientation: imageOrientation)
        }
        
        return nil
    }
}

// MARK: - Alpha

extension UIImage {
    
    func hasAlpha() -> Bool {
        
        let alpha = cgImage!.alphaInfo
        
        switch alpha {
            
        case .first, .last, .premultipliedFirst, .premultipliedLast:
            return true
            
        default:
            return false
        }
    }
    
    func imageWithAlpha() -> UIImage {
        
        if hasAlpha() {
            return self
        }
        
        let pixelSize = CGSize(width: self.size.width * screenScale, height: self.size.height * screenScale)
        
        let offscreenContext = CGContext(data: nil, width: Int(pixelSize.width), height: Int(pixelSize.height), bitsPerComponent: cgImage!.bitsPerComponent, bytesPerRow: 0, space: cgImage!.colorSpace!, bitmapInfo: CGBitmapInfo(rawValue: CGBitmapInfo().rawValue | CGImageAlphaInfo.premultipliedFirst.rawValue).rawValue)
        
        offscreenContext!.draw(cgImage!, in: CGRect(origin: .zero, size: pixelSize))
        
        if let alphaCGImage = offscreenContext!.makeImage() {
            return UIImage(cgImage: alphaCGImage, scale: screenScale, orientation: imageOrientation)
            
        } else {
            return self
        }
    }
}

