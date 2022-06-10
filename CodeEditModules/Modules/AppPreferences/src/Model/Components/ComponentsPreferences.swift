//
//  File.swift
//  
//
//  Created by Debdut Karmakar on 6/10/22.
//

import Foundation

public extension AppPreferences {

    /// The global settings for the components
    struct ComponentsPreferences: Codable {

        /// If command line tools are installed
        public var cliInstalled: Bool = false
        
        /// Default initializer
        public init() {}

        /// Explicit decoder init for setting default values when key is not present in `JSON`
        public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            self.cliInstalled = try container.decodeIfPresent(Bool.self, forKey: .cliInstalled) ?? false
        }
    }
}
