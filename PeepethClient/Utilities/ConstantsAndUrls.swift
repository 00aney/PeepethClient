//
//  Constants.swift
//  PeepethClient
//
//  Created by Георгий Фесенко on 06/07/2018.
//  Copyright © 2018 BaldyAsh. All rights reserved.
//

import Foundation
import web3swift

let contractAddress = "0xfa28eC7198028438514b49a3CF353BcA5541ce1d"
let ethContractAddress = EthereumAddress(contractAddress)!

let peepEthABI = """
[ { "constant": false, "inputs": [ { "name": "_followee", "type": "address" } ], "name": "unFollow", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_ipfsHash", "type": "string" } ], "name": "updateAccount", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "isActive", "outputs": [ { "name": "", "type": "bool" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_isActive", "type": "bool" } ], "name": "setIsActive", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_followee", "type": "address" } ], "name": "follow", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_name", "type": "bytes16" } ], "name": "changeName", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "address" } ], "name": "names", "outputs": [ { "name": "", "type": "bytes32" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_ipfsHash", "type": "string" } ], "name": "reply", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "bytes32" } ], "name": "addresses", "outputs": [ { "name": "", "type": "address" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_address", "type": "address" } ], "name": "setNewAddress", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [ { "name": "_addr", "type": "address" } ], "name": "accountExists", "outputs": [ { "name": "", "type": "bool" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "bStr", "type": "bytes16" } ], "name": "isValidName", "outputs": [ { "name": "", "type": "bool" } ], "payable": false, "stateMutability": "pure", "type": "function" }, { "constant": false, "inputs": [ { "name": "_ipfsHash", "type": "string" } ], "name": "share", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_ipfsHash", "type": "string" } ], "name": "saveBatch", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [], "name": "cashout", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "owner", "outputs": [ { "name": "", "type": "address" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_ipfsHash", "type": "string" } ], "name": "post", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_name", "type": "bytes16" }, { "name": "_ipfsHash", "type": "string" } ], "name": "createAccount", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "newMinPercentage", "type": "uint256" } ], "name": "setMinSiteTipPercentage", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [ { "name": "_author", "type": "address" }, { "name": "_messageID", "type": "string" }, { "name": "_ownerTip", "type": "uint256" }, { "name": "_ipfsHash", "type": "string" } ], "name": "tip", "outputs": [], "payable": true, "stateMutability": "payable", "type": "function" }, { "constant": true, "inputs": [], "name": "newAddress", "outputs": [ { "name": "", "type": "address" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [ { "name": "", "type": "uint256" } ], "name": "interfaceInstances", "outputs": [ { "name": "interfaceAddress", "type": "address" }, { "name": "startBlock", "type": "uint96" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "_address", "type": "address" } ], "name": "transferAccount", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": false, "inputs": [], "name": "lockMinSiteTipPercentage", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "interfaceInstanceCount", "outputs": [ { "name": "", "type": "uint256" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": true, "inputs": [], "name": "minSiteTipPercentage", "outputs": [ { "name": "", "type": "uint256" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "constant": false, "inputs": [ { "name": "newOwner", "type": "address" } ], "name": "transferOwnership", "outputs": [], "payable": false, "stateMutability": "nonpayable", "type": "function" }, { "constant": true, "inputs": [], "name": "tipPercentageLocked", "outputs": [ { "name": "", "type": "bool" } ], "payable": false, "stateMutability": "view", "type": "function" }, { "inputs": [], "payable": false, "stateMutability": "nonpayable", "type": "constructor" }, { "payable": true, "stateMutability": "payable", "type": "fallback" }, { "anonymous": false, "inputs": [], "name": "PeepethEvent", "type": "event" } ]
"""

enum controllerTypes: String {
    case user = "https://peepeth.com/account_peeps?&oldest="
    case global = "https://peepeth.com/get_peeps?you="
}

func urlForGetPeeps(type: controllerTypes, walletAddress: String?, lastPeep: ServerPeep? = nil) -> URL? {
    
    let url: String?
    
    if type == .user {
        let basicUrl: String = type.rawValue
        let olderUrl: String = (lastPeep != nil) ? (lastPeep?.info["ipfs"] as! String) : "0"
        url = basicUrl + olderUrl + "&address=" + walletAddress!.lowercased()
    } else {
        let basicUrl: String = type.rawValue + walletAddress!.lowercased()
        let olderUrl: String = (lastPeep != nil) ? "&oldest=" + (lastPeep?.info["ipfs"] as! String) : "&oldest=0"
        url = basicUrl + olderUrl
    }
    
    return URL(string: url!)
}

func urlForSearchPeeps(searchingString: String, page: Int = 1) -> URL? {
    let basicUrl: String = "https://peepeth.com/search_peeps?search="+searchingString
    let olderUrl: String = "&page=\(page)"
    let url = basicUrl + olderUrl
    return URL(string: url)
}

func parseImageServerString(peep: ServerPeep) -> URL? {
    
    guard let peepAvatarUrlString = peep.info["avatarUrl"] as? String else { return nil }
    
    let parsedString = (peepAvatarUrlString).components(separatedBy: ":")
    guard parsedString.count > 2 else { return nil }
    let serverString =  parsedString[0]
    let nameString = parsedString[1]
    let extString = parsedString[2]
    return URL(string: "https://\(serverString).s3-us-west-1.amazonaws.com/images/avatars/\(nameString)/small.\(extString)")
}

func parseAttachedImageServerString(peep: ServerPeep) -> URL? {
    
    guard let peepAttachedImageUrlString = peep.info["image_url"] as? String else { return nil }
//    
//    let parsedString = (peepAvatarUrlString).components(separatedBy: ":")
//    guard parsedString.count > 2 else { return nil }
//    let serverString =  parsedString[0]
//    let nameString = parsedString[1]
//    let extString = parsedString[2]
    return URL(string: peepAttachedImageUrlString)
}

func requestForPostingToServer(data: CreateServerPeep, ipfs: String) -> URLRequest? {
    let url = URL(string: "https://peepeth.com/create_peep")!
    var request = URLRequest(url: url)
    request.httpShouldHandleCookies = true
    request.httpMethod = "POST"
    request.setValue("application/x-www-form-urlencoded; charset=UTF-8", forHTTPHeaderField: "Content-Type")
    request.httpBody = "peep%5Bipfs%5D=\(ipfs)&peep%5Bauthor%5D=\(data.author.lowercased())&peep%5Bcontent%5D=\(data.content)&peep%5BparentID%5D=\(data.parentID)&peep%5BshareID%5D=\(data.shareID)&peep%5Btwitter_share%5D=\(data.twitterShare)&peep%5BpicIpfs%5D=\(data.picIpfs)&peep%5BorigContents%5D=%7B%22type%22%3A%22\(data.origContents.type)%22%2C%22content%22%3A%22\(data.origContents.content)%22%2C%22pic%22%3A%22\(data.origContents.pic)%22%2C%22untrustedAddress%22%3A%22\(data.origContents.untrustedAddress.lowercased())%22%2C%22untrustedTimestamp%22%3A\(data.origContents.untrustedTimestamp)%2C%22shareID%22%3A%22\(data.origContents.shareID)%22%2C%22parentID%22%3A%22\(data.origContents.parentID)%22%7D&share_now=true".data(using:String.Encoding.utf8, allowLossyConversion: false)
    return request
}
