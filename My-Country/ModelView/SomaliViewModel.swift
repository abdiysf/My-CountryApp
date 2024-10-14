//
//  SomaliViewModel.swift
//  Photo-Library
//
//  Created by Abdirahman Standard on 13/10/24.
//

import SwiftUI


class SomaliaViewModel: ObservableObject {
        @Published var somaliaData: Somalia?

        private var service = Services()

        init() {
            loadData()
        }

        func loadData() {
            if let data = service.getFileData() {
                self.somaliaData = data.somalia
            }
        }
    }
