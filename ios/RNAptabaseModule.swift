import Foundation
import UIKit

@objc(RNAptabaseModule)
class RNAptabaseModule: NSObject {
  @objc
  func constantsToExport() -> [AnyHashable : Any]! {
    return [
      "appVersion": Bundle.main.infoDictionary?["CFBundleShortVersionString"] as Any,
      "appBuildNumber": Bundle.main.infoDictionary?["CFBundleVersion"] as Any,
      "deviceModel": UIDevice.current.model
    ]
  }

  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
}
