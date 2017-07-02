
import Foundation

func tr(_ key: String, _ args: [CVarArg] = []) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.current, arguments: args)
}

struct Localizations {
	/// Closet
	static var Closet: String = tr("Closet")
	/// Collect
	static var Collect: String = tr("collect")
	/// Comment
	static var Comment: String = tr("comment")
	/// 关注
	static var Focus: String = tr("focus")
	/// Follow
	static var Follow: String = tr("follow")
	/// Inspiration
	static var Inspiration: String = tr("Inspiration")
	/// Like
	static var Like: String = tr("like")
	/// Looks
	static var Looks: String = tr("Looks")
	/// Message
	static var Message: String = tr("Message")
	/// 推荐
	static var Recommand: String = tr("recommand")
	/// Unfollow
	static var Unfollow: String = tr("unfollow")
}
