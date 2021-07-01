//
//  StorageManager.swift
//  InstagramApp
//
//  Created by apple on 28/06/2021.
//

import FirebaseStorage

public class StorageManager {
    static let shared = StorageManager()
    private let bucket = Storage.storage().reference()
    
    // MARK: - Public
    
    public func uploadUserPost(model: UserPost, completion: (Result<URL, Error>) -> Void) {
        
    }
    
    public enum UserPostType {
        case photo, video
    }
    
    public struct UserPost {
        let postType: UserPostType
    }
    
}
