//
//  Services.swift
//  Photo-Library
//
//  Created by Abdirahman Standard on 06/10/24.
//

import Foundation

struct Services {
    func getFileData() -> SomaliaData? {
            if let url = Bundle.main.url(forResource: "data", withExtension: "json") {
                do {
                    let data = try Data(contentsOf: url)
                    let decoder = JSONDecoder()
                    
                    do {
                        // Decode an array of SomaliaData
                        let sources = try decoder.decode([SomaliaData].self, from: data)
                        
                        // Since it's an array, you can return the first item if that's what you're expecting
                        return sources.first
                    } catch {
                        print("Couldn't parse the JSON: \(error)")
                    }
                } catch {
                    print("Couldn't read the file: \(error)")
                }
            }
            return nil
        }
}
