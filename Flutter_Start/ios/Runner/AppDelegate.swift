import UIKit
import Flutter

@main
@objc class AppDelegate: FlutterAppDelegate {
    override func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

      let controller : FlutterViewController = window?.rootViewController as! FlutterViewController
      let batteryChannel = FlutterMethodChannel(name: "com.example.startFlutter/battery",
                                                binaryMessenger: controller.binaryMessenger)
      
      batteryChannel.setMethodCallHandler{ [weak self] (call: FlutterMethodCall, result: FlutterResult) -> Void in
          // This method is invoked on the UI thread.
          guard call.method == "getBatteryLevel" else {
            result(FlutterMethodNotImplemented)
            return
          }
          
          if let args = call.arguments as? [String: Any],
             let developerName = args["developerName"] as? String {
              // developerName을 안전하게 사용할 수 있음
              result(developerName)
          } else {
              result(FlutterError(code: "INVALID_ARGUMENT", message: "developerName not provided", details: nil))
          }
        
      }

      GeneratedPluginRegistrant.register(with: self)
      return super.application(application, didFinishLaunchingWithOptions: launchOptions)
    }
    
    
    private func receiveBatteryLevel(result: FlutterResult) {
      let device = UIDevice.current
      device.isBatteryMonitoringEnabled = true
      if device.batteryState == UIDevice.BatteryState.unknown {
        result(FlutterError(code: "UNAVAILABLE",
                            message: "Battery level not available.",
                            details: nil))
      } else {
        result(Int(device.batteryLevel * 100))
      }
    }
}
