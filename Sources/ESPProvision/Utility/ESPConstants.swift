// Copyright 2020 Espressif Systems
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//  ESPConstants.swift
//  ESPProvision
//

import Foundation

// Type that stores pre defined constant strings used in framework.
struct ESPConstants {

    // MARK: Wi-Fi
    
    /// Wi-Fi base url is configurable by setting value of this key in Info.plist.
    static let wifiBaseUrl = "WifiBaseUrl"
    /// Default Wi-Fi base url.
    static let wifiBaseUrlDefault = "192.168.4.1:80"

    // MARK: Path parameters
    
    /// Path for sending config data.
    static let configPath = "prov-config"
    /// Path for fetching version information.
    static let versionPath = "proto-ver"
    /// Path for giving scan command to device.
    static let scanPath = "prov-scan"
    /// Path for establishing session with device.
    static let sessionPath = "prov-session"

    // MARK: JSON Keys
    
    /// Key for getting device information.
    static let provKey = "prov"
    /// Key for getting capabilities json.
    static let capabilitiesKey = "cap"
    /// Key for getting wifi scan capability value.
    static let wifiScanCapability = "wifi_scan"
    /// Key for determining proof of possession capability.
    static let noProofCapability = "no_pop"
    /// Key for getting security capability of device.
    static let noSecCapability = "no_sec"
    
}




