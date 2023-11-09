//
//  Data.swift
//  Messenger
//
//  Created by Robert on 09.11.23.
//

import Foundation
import UIKit

class Data {
    
    var users: [ChatModel] = []
    var storys: [StoryModel] = []
    var messages: [MessageModel] = []
    
    func getData() {
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        users.append(ChatModel(userName: "Robert", lastMessageTime: "22:10", lastMessage: "barewapejan"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
        storys.append(StoryModel(profileImage: UIImageView(image: UIImage(systemName: "search.fill")), userName: "Robert"))
    }
    func getMessageData() {
        messages.append(MessageModel(message: "barev aper", isSended: true))
        messages.append(MessageModel(message: "barev aper", isSended: true))
        messages.append(MessageModel(message: "barev aper", isSended: true))
        messages.append(MessageModel(message: "barev aper", isSended: true))
        messages.append(MessageModel(message: "hajox aper", isSended: false))
        messages.append(MessageModel(message: "hajox aper", isSended: false))
        messages.append(MessageModel(message: "hajox aper", isSended: false))
        messages.append(MessageModel(message: "hajox aper", isSended: false))
        messages.append(MessageModel(message: "hajox aper", isSended: false))
        messages.append(MessageModel(message: "hajox aper", isSended: false))
    }
}
