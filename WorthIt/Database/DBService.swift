//
//  DBService.swift
//  WorthIt
//
//  Created by Lisa J on 2/3/18.
//  Copyright © 2018 Lisa J. All rights reserved.
//

import Foundation
import FirebaseDatabase

class DBService {
    
    private var dbRef: DatabaseReference!
    private var businessesRef: DatabaseReference!
    
    private init(){
        dbRef = Database.database().reference().child("businesses")
        //businessesRef = dbRef.child("businesses")
    }
    static let manager = DBService()
    
    public func getDB()-> DatabaseReference { return dbRef }
   // public func getBusinesses() -> DatabaseReference { return businessesRef }
}
