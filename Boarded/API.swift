//
//  API.swift
//  Boarded
//
//  Created by Reid Ellis on 2018-07-31.
//  Copyright © 2018 Tnir Technologies. All rights reserved.
//

import Foundation

public struct Chan: Codable {
	public var trollFlags: [String: String]
	public var boards: [Board]
}

public struct Board: Codable {
	public var board: String
	public var title: String
	public var wsBoard: Int
	public var perPage: Int
	public var pages: Int
	public var maxFilesize: Int
	public var maxCommentChars: Int
	public var maxWebmDuration: Int
	public var bumpLimit: Int
	public var imageLimit: Int
	public var cooldowns: Cooldown
	public var metaDescription: String
	public var isArchived: Bool
	public var spoilers: Bool?
	public var customSpoilers: Bool?
}

public struct Cooldown: Codable {
	public var threads: Int
	public var replies: Int
	public var images: Int
}

public struct Catalog: Codable {
	public var pages: [Page]
}

public struct Page: Codable {
	public var page: Int
	public var threads: [Thread]
}

public protocol Post {
	var no: Int { get }
	var now: Date { get }
	var name: String { get }
	var com: String { get }
	var filename: String { get }
	var ext: String { get }
	var w: Int { get }
	var h: Int { get }
	var tnW: Int { get }
	var tnH: Int { get }
	var tim: Int { get }
	var time: Int { get }
	var md5: String { get }
	var fsize: Int { get }
	var resto: Int { get }
}

public struct Thread: Post, Codable {
	public var no: Int
	public var now: Date
	public var name: String
	public var com: String
	public var filename: String
	public var ext: String
	public var w: Int
	public var h: Int
	public var tnW: Int
	public var tnH: Int
	public var tim: Int
	public var time: Int
	public var md5: String
	public var fsize: Int
	public var resto: Int
	public var bumplimit: Int
	public var imagelimit: Int
	public var semanticUrl: String
	public var replies: Int
	public var image: Int
	public var omittedPosts: Int
	public var omittedImages: Int
	public var lastReplies: [Reply]
	public var lastModified: Int
}

public struct Reply: Post, Codable {
	public var no: Int
	public var now: Date
	public var name: String
	public var com: String
	public var filename: String
	public var ext: String
	public var w: Int
	public var h: Int
	public var tnW: Int
	public var tnH: Int
	public var tim: Int
	public var time: Int
	public var md5: String
	public var fsize: Int
	public var resto: Int
	public var mImg: Bool
}
