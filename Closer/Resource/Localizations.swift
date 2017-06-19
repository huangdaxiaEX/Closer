
import Foundation

func tr(_ key: String, _ args: [CVarArg] = []) -> String {
    let format = NSLocalizedString(key, comment: "")
    return String(format: format, locale: NSLocale.current, arguments: args)
}

struct Localizations {
	/// 关于
	static var About: String = tr("about")
	/// 接受
	static var Accept: String = tr("accept")
	/// 如要继续使用 bong，请同意以上服务条款
	static var AcceptToUseBong: String = tr("accept-to-use-bong")
	/// 帐号
	static var Account: String = tr("account")
	/// 活动
	static var Active: String = tr("active")
	/// 活动消耗
	static var ActiveDescription: String = tr("active-description")
	/// 走楼梯，积累活动时间，缓解久坐疲劳
	static var ActiveTips0: String = tr("active-tips-0")
	/// 利用办公间歇拉伸双腿和背部，可以防止双腿浮肿和腰背酸痛
	static var ActiveTips1: String = tr("active-tips-1")
	/// 多喝水 ，既可以充分补水，也可以利用走到饮水机和厕所的路程积累活动时间
	static var ActiveTips2: String = tr("active-tips-2")
	/// 试着走路上班，加油，积累更多的活动时间
	static var ActiveTips3: String = tr("active-tips-3")
	/// 加强核心肌肉训练可以获得更好的脊椎支撑力，减少久坐带来的腰酸背痛
	static var ActiveTips4: String = tr("active-tips-4")
	/// 收拾桌子和衣服也能够积累不少活动时间，缓解久坐疲劳
	static var ActiveTips5: String = tr("active-tips-5")
	/// 无数据
	static var ActivityNil: String = tr("activity-nil")
	/// 添加闹钟
	static var AddAlarm: String = tr("add-alarm")
	/// 闹钟
	static var Alarm: String = tr("alarm")
	/// 通过手表振动唤醒你，开始崭新的一天
	static var AlarmDescription: String = tr("Alarm-description")
	/// 闹钟名称
	static var AlarmName: String = tr("alarm-name")
	/// 闹钟名称过长！
	static var AlarmNameTooLong: String = tr("alarm-name-too-long")
	/// 你已经绑定过了
	static var AlreadyBond: String = tr("already-bond")
	/// 版本已是最新
	static var AlreadyLatestVersion: String = tr("already-latest-version")
	/// 自动定位
	static var AutomatedLocation: String = tr("automated-location")
	/// 头像
	static var Avatar: String = tr("avatar")
	/// 平均心率
	static var AverageHeartrate: String = tr("average-heartrate")
	/// 平均配速
	static var AveragePace: String = tr("average-pace")
	/// 平均速度
	static var AverageSpeed: String = tr("average-speed")
	/// 平衡目标
	static var BalanceTarget: String = tr("balance-target")
	/// 绑定
	static var Bind: String = tr("bind")
	/// 搜索失败
	static var ScanFailed: String = tr("scan-failed")
	/// 绑定失败
	static var BindFailed: String = tr("bind-failed")
	/// 绑定信息获取失败
	static var BindInfoLoss: String = tr("bind-info-loss")
	/// 正在绑定
	static var Binding: String = tr("binding")
	/// 未获取到绑定信息：\n\n• 如果你已将设备配对，请进入 iOS 系统的「设置」-「蓝牙」中，忽略 bong 设备；\n\n• 如果没有配对，请重置一次蓝牙开关，再重新绑定。
	static var BindMacLossShouldUnpair: String = tr("bind-mac-loss-should-unpair")
	/// 手机蓝牙未开启
	static var BluetoothNotPoweredOn: String = tr("bluetooth-not-powered-on")
	/// bongID
	static var BongID: String = tr("bongID")
	/// bongID 已经修改过
	static var BongIDModifyLimiteReached: String = tr("bongID-modify-limite-reached")
	/// bongID 重复！
	static var BongIDOccupied: String = tr("bongID-occupied")
	/// bongID 由 6－18 位的英文字母、数字、下线线或连接符组成！
	static var BongIDValidError: String = tr("bongID-valid-error")
	/// 购买 bong
	static var BuyBong: String = tr("buy-bong")
	/// 日历事件
	static var Calendar: String = tr("Calendar")
	/// 查看日历和当日安排，需要同意授权
	static var CalendarDescription: String = tr("Calendar-description")
	/// 取消
	static var Cancel: String = tr("cancel")
	/// 未发现 bong
	static var CannotFindBong: String = tr("cannot-find-bong")
	/// 定位服务未开启
	static var CanNotStartLocationService: String = tr("can-not-start-location-service")
	/// 设置失败！
	static var CardConfigFailure: String = tr("card-config-failure")
	/// 设置成功！
	static var CardConfigSuccess: String = tr("card-config-success")
	/// 更换手机号
	static var ChangePhoneNumber: String = tr("change-phone-number")
	/// 能量变化
	static var ChartLegendEnergy: String = tr("chart-legend-energy")
	/// 心率变化
	static var ChartLegendHeartrate: String = tr("chart-legend-heartrate")
	/// 步数变化
	static var ChartLegendStep: String = tr("chart-legend-step")
	/// 从相册中选择
	static var ChooseFromCameraRoll: String = tr("choose-from-camera-roll")
	/// 输入城市名称搜索
	static var CitySearchDescription: String = tr("city-search-description")
	/// 选择所在城市,获取当地天气信息
	static var CitySectionFooter: String = tr("city-section-footer")
	/// 自动定位到所在的城市,获取天气信息
	static var CitySectionHeader: String = tr("city-section-header")
	/// 通讯错误
	static var CommunicationError: String = tr("communication-error")
	/// 设置失败
	static var ConfigureFailed: String = tr("configure-failed")
	/// 设置中...
	static var Configuring: String = tr("configuring")
	/// 确认
	static var Confirm: String = tr("confirm")
	/// 注销
	static var ConfirmLogout: String = tr("confirm-logout")
	/// 确定要注销？
	static var ConfirmLogoutTitle: String = tr("confirm-logout-title")
	/// bongID 作为您帐号的唯一标识，仅能设置一次，保存后将无法更改，确认现在修改？
	static var ConfirmModifyID: String = tr("confirm-modify-ID")
	/// 设备连接失败
	static var ConnectFailed: String = tr("connect-failed")
	/// 连接中...
	static var Connecting: String = tr("connecting")
	/// 国家
	static var CountryAndArea: String = tr("country-and-area")
	/// 手表已更新到最新系统
	static var CurrentFrimwareIsNew: String = tr("current-frimware-is-new")
	/// 手环已更新到最新系统
	static var CurrentBandFrimwareIsNew: String = tr("current-band-frimware-is-new")
	/// 秤已更新到最新系统
	static var CurrentFitFrimwareIsNew: String = tr("current-fit-frimware-is-new")
	/// 当前手机号码：
	static var CurrentMobileNumber: String = tr("current-mobile-number")
	/// 当前版本
	static var CurrentVersion: String = tr("current-version")
	/// 爬坡时切忌“埋头苦干”，容易颈部血压不足导致眩晕
	static var CyclingTips0: String = tr("cycling-tips-0")
	/// 腹部力量能够增强骑行者的平衡性，尝试腹肌锻炼吧
	static var CyclingTips1: String = tr("cycling-tips-1")
	/// 用力骑车能够有效刺激大脑相关区域，甚至可以治疗帕金森综合症
	static var CyclingTips2: String = tr("cycling-tips-2")
	/// 骑车时保持收腹，能够防止肩膀和脖子酸痛，还能保护隐私部位哦
	static var CyclingTips3: String = tr("cycling-tips-3")
	/// 调整龙头高度，保持正确的骑车姿势，将体重均匀的分布在手把、坐垫和脚踏金三角上
	static var CyclingTips4: String = tr("cycling-tips-4")
	/// 刹车把手设定在35-45度之间，以骑行时手背与前臂打平为准
	static var CyclingTips5: String = tr("cycling-tips-5")
	/// 为了你的安全，食指与中指的第二节要能放在刹车把手上
	static var CyclingTips6: String = tr("cycling-tips-6")
	/// 车把手要略比肩膀宽或同宽为最佳
	static var CyclingTips7: String = tr("cycling-tips-7")
	/// 深睡眠
	static var DeepSleepDescription: String = tr("deep-sleep-description")
	/// 您可以选择相机拍摄一张照片或者从相册中选择一张照片
	static var DetailAvatarActionsheet: String = tr("detail-avatar-actionsheet")
	/// 该设备已被另一账户绑定
	static var DeviceBondBySomeone: String = tr("device-bond-by-someone")
	/// 数据同步中，请稍后重试
	static var DeviceBusy: String = tr("device-busy")
	/// 设备未连接!
	static var DeviceNotConnected: String = tr("device-not-connected")
	/// 关闭推送提醒
	static var DisableNotification: String = tr("disable-notification")
	/// 正在探索设备服务...
	static var Discovering: String = tr("discovering")
	/// 距离
	static var DistanceDescription: String = tr("distance-description")
	/// 完成
	static var Done: String = tr("done")
	/// 勿扰模式
	static var DoNotDisturb: String = tr("do-not-disturb")
	/// 勿扰时段
	static var DoNotDisturbTimeSet: String = tr("do-not-disturb-time-set")
	/// 手表收到信息后不再振动，避免打扰。
	static var DoNotDisturbTitle: String = tr("do-not-disturb-title")
	/// 下载系统文件中...
	static var DownloadFirmware: String = tr("download-firmware")
	/// 时长 
	static var Duration: String = tr("duration")
	/// 当天气状态发生极端变化时,展示天气信息
	static var EarlyWarning: String = tr("early-warning")
	/// 智能推送
	static var EarlyWarningNotification: String = tr("early-warning-notification")
	/// 编辑闹钟
	static var EditAlarm: String = tr("edit-alarm")
	/// 没有数据
	static var EmptyData: String = tr("empty-data")
	/// 能量
	static var Energy: String = tr("energy")
	/// 授权被拒绝!
	static var EventStoreAuthRefuse: String = tr("event-store-auth-refuse")
	/// 数据报告
	static var DataReport: String = tr("data-report")
	/// 意见反馈
	static var Feedback: String = tr("feedback")
	/// 女
	static var Female: String = tr("Female")
	/// 版本检测中...
	static var FirmwareCheck: String = tr("firmware-check")
	/// 版本检测失败
	static var FirmwareCheckFailed: String = tr("firmware-check-failed")
	/// 下载及安装约需要 30 分钟左右，安装过程中将保留手表的存储数据，不影响手表的正常使用。安装完成后手表自动重启，最新系统即可生效。
	static var FirmwareInstallDescription: String = tr("firmware-install-description")
	/// 下载及安装约需要 2 分钟左右，安装过程中将保留手环的存储数据。安装完成后手环自动重启，最新系统即可生效。
	static var XFirmwareInstallDescription: String = tr("x-firmware-install-description")
	/// 下载及安装约需要 2 分钟左右，安装过程中将保留秤的存储数据。
	static var FitFirmwareInstallDescription: String = tr("fit-firmware-install-description")
	/// 系统升级
	static var FirmwareUpgrade: String = tr("firmware-upgrade")
	/// 找回密码
	static var ForgotPassword: String = tr("forgot-password")
	/// 周五
	static var Friday: String = tr("friday")
	/// 从
	static var From: String = tr("from")
	/// 性别
	static var Gender: String = tr("gender")
	/// 通用设置
	static var General: String = tr("general")
	/// 购买 bong
	static var GetBong: String = tr("get-bong")
	/// 左手
	static var HandLeft: String = tr("hand-left")
	/// 右手
	static var HandRight: String = tr("hand-right")
	/// 绑定健康数据
	static var HealthDataExchange: String = tr("health-data-exchange")
	/// 健康陪伴
	static var HealthMate: String = tr("HealthMate")
	/// 手表会根据你的身体数据给你推荐合适的睡眠、运动和活动建议
	static var HealthMateDescription: String = tr("HealthMate-description")
	/// 心率
	static var HeartRate: String = tr("HeartRate")
	/// 测量心率
	static var HeartRateMeasure: String = tr("HeartRate-measure")
	/// 测量建议：\n1. 将手环佩戴于距腕骨三指宽的位置。\n2. 保持适当贴合，避免手环与手臂发生相对位移。
	static var HeartRateDescription: String = tr("HeartRate-description")
	/// 帮助
	static var Help: String = tr("help")
	/// 注册
	static var Join: String = tr("join")
	/// 懒人模式
	static var LazyMode: String = tr("lazy-mode")
	/// 开启懒人模式，旋转可停止闹钟。如果放置不动，隔 10 分钟会再次振动，最多重复 2 次
	static var LazyModeDescription: String = tr("lazy-mode-description")
	/// 服务条款
	static var LegalPolicy: String = tr("legal-policy")
	/// 期间的第一个浅睡眠中提醒我
	static var LightSleepAlarmDescription: String = tr("light-sleep-alarm-description")
	/// 分钟内的浅睡眠提醒我
	static var LightSleepAlarmSimple: String = tr("light-sleep-alarm-simple")
	/// 浅睡眠
	static var LightSleepDescription: String = tr("light-sleep-description")
	/// 载入中...
	static var Loading: String = tr("loading")
	/// 定位失败
	static var LocateFailed: String = tr("locate-failed")
	/// 未获取到位置信息
	static var LocationEmptyInfo: String = tr("location-empty-info")
	/// 定位发生错误！
	static var LocationError: String = tr("location-error")
	/// 定位服务未授权
	static var LocationPermissionError: String = tr("location-permission-error")
	/// 定位超时
	static var LocationTimeout: String = tr("location-timeout")
	/// 未知错误
	static var LocationUnknownError: String = tr("location-unknown-error")
	/// 登录
	static var Login: String = tr("login")
	/// 登录失败
	static var LoginFailed: String = tr("login-failed")
	/// 退出登录
	static var Logout: String = tr("logout")
	/// 男
	static var Male: String = tr("Male")
	/// 新手教程
	static var Manual: String = tr("manual")
	/// 启动教程失败
	static var ManualFailed: String = tr("manual-failed")
	/// 查看手表学习操作教程
	static var ManualTip: String = tr("manual-tip")
	/// 最高速度
	static var MaxSpeed: String = tr("max-speed")
	/// 我
	static var Me: String = tr("me")
	/// 手机号码
	static var Mobile: String = tr("mobile")
	/// 周一
	static var Monday: String = tr("monday")
	/// 这是我和 bong 一起走过的第 %@ 天
	static func MWithBong (values: CVarArg...) -> String {
		return tr("m-with-bong", values)
	}
	/// 密码
	static var NewPassword: String = tr("new-password")
	/// 下一步
	static var Next: String = tr("next")
	/// 显示当前的时间、日期以及你接下来的待办事项
	static var NextDescription: String = tr("Next-description")
	/// 昵称
	static var Nickname: String = tr("nickname")
	/// 否
	static var No: String = tr("no")
	/// 不设置浅睡眠提醒
	static var NoLightSleepAlarmDescription: String = tr("no-light-sleep-alarm-description")
	/// 消息提醒
	static var Notification: String = tr("Notification")
	/// 在手表上接收来自你手机上的应用消息
	static var NotificationDescription: String = tr("Notification-description")
	/// Now
	static var Now: String = tr("Now")
	/// 显示你当前所处状态的关键数据
	static var NowDescription: String = tr("Now-description")
	/// 旧密码
	static var OldPassword: String = tr("old-password")
	/// 验证码无效！
	static var ParameterError: String = tr("parameter-error")
	/// 密码
	static var Password: String = tr("password")
	/// 密码长度需为 6 ~ 24 位
	static var PasswordConstrain: String = tr("password-constrain")
	/// 两次输入的密码不同!
	static var PasswordNotSame: String = tr("password-not-same")
	/// 密码太短！
	static var PasswordTooShort: String = tr("password-too-short")
	/// 密码太长！
	static var PasswordTooLong: String = tr("password-too-long")
	/// 请输入 15 个字符以内不包含空格的昵称
	static var NicknameLengthLimit: String = tr("nickname-length-limit")
	/// 手机来电
	static var PhoneCall: String = tr("PhoneCall")
	/// 可以在手表上接收来电提醒
	static var PhoneCallDescription: String = tr("PhoneCall-description")
	/// 请先绑定手环
	static var PleaseBind: String = tr("please-bind")
	/// 请先绑定秤
	static var PleaseBindFit: String = tr("please-bind-fit")
	/// 通过设定账号，即表明我接受 bong 的
	static var PolicyDescription: String = tr("policy-description")
	/// 完成
	static var PositioinConfim: String = tr("positioin-confim")
	/// 选择你的佩戴位置
	static var PositionChose: String = tr("position-chose")
	/// 设置
	static var Preference: String = tr("preference")
	/// 隐私条款
	static var PrivacyPolicy: String = tr("privacy-policy")
	/// bong 的服务条款
	static var PrivacyProvision: String = tr("privacy-provision")
	/// 下拉同步数据
	static var PullDownGuideText: String = tr("pull-down-guide-text")
	/// 下拉以刷新
	static var PullToRefresh: String = tr("pull-to-refresh")
	/// 未查询到城市信息
	static var QueryCityError: String = tr("query-city-error")
	/// 开启失败，未获取到凭证
	static var RankEnableFailed: String = tr("rank-enable-failed")
	/// 注册成功，请登录
	static var RegisterSucceed: String = tr("register-succeed")
	/// 更新日志
	static var ReleaseNotes: String = tr("release-notes")
	/// 松开以刷新
	static var ReleaseToRefresh: String = tr("release-to-refresh")
	/// 提醒事项
	static var Reminder: String = tr("Reminder")
	/// 在手表上查看提醒事项，仅同步「Just for bong」列表，需要同意授权
	static var ReminderDescription: String = tr("Reminder-description")
	/// 重复
	static var Repeat: String = tr("repeat")
	/// 请求失败
	static var RequestFailed: String = tr("request-failed")
	/// 请求超时
	static var RequestTimeout: String = tr("request-timeout")
	/// 重置密码成功! 请登录
	static var ResetPasswordSucceed: String = tr("reset-password-succeed")
	/// 响应错误
	static var ResponseError: String = tr("response-error")
	/// 数据解析失败
	static var ResponseParseFailed: String = tr("response-parse-failed")
	/// 重启设备
	static var Restart: String = tr("restart")
	/// 重启失败
	static var RestartFailed: String = tr("restart-failed")
	/// 重启成功
	static var RestartSucceed: String = tr("restart-succeed")
	/// 已达重试上限
	static var RetryLimitReached: String = tr("retry-limit-reached")
	/// 长跑能够有效的释放情绪、让你的心态更为平和
	static var RunTips0: String = tr("run-tips-0")
	/// 跑步后不要立即喝水、蹲下或躺下，请尝试静态拉伸腿部肌肉减缓疲劳
	static var RunTips1: String = tr("run-tips-1")
	/// 跑步步幅不宜过大、小腿前伸过远对骨和关节的损伤很大
	static var RunTips2: String = tr("run-tips-2")
	/// 不用追求速度，以最适合自己的跑步速度跑步时，应该能够轻松地与旁边的人对话
	static var RunTips3: String = tr("run-tips-3")
	/// 跑步5分钟后测量脉搏，跳动次数不应超过120次/分
	static var RunTips4: String = tr("run-tips-4")
	/// 每次跑步20分钟以上能够有效的燃脂
	static var RunTips5: String = tr("run-tips-5")
	/// 保持呼吸节奏，用鼻、嘴同时呼吸能够增大有效的换气量
	static var RunTips6: String = tr("run-tips-6")
	/// 尝试间歇跑，实验证明间歇跑的燃脂效率最佳
	static var RunTips7: String = tr("run-tips-7")
	/// 跑步是一种最简单易行的全身性有氧运动
	static var RunTips8: String = tr("run-tips-8")
	/// 周六
	static var Saturday: String = tr("saturday")
	/// 保存天气数据失败，请重试
	static var SaveWeatherConfigError: String = tr("save-weather-config-error")
	/// 搜索
	static var ScanForBong: String = tr("scan-for-bong")
	/// 搜索中
	static var Scanning: String = tr("scanning")
	/// 扫描二维码下载 bong App
	static var ScanQrcodeDownloadApp: String = tr("scan-qrcode-download-app")
	/// 搜索...
	static var Search: String = tr("search")
	/// 选择城市
	static var SelectCity: String = tr("select-city")
	/// 请选择需要设置的时间
	static var SelectTimeRow: String = tr("select-time-row")
	/// 服务器 500
	static var ServerError: String = tr("server-error")
	/// 时间设置
	static var SetTime: String = tr("set-time")
	/// 设置
	static var Setting: String = tr("Setting")
	/// 设置
	static var SettingDescription: String = tr("Setting-description")
	/// 分享失败
	static var ShareError: String = tr("share-error")
	/// 签名错误
	static var SignatureError: String = tr("signature-error")
	/// 睡眠
	static var Sleep: String = tr("sleep")
	/// 睡眠时长
	static var SleepDescription: String = tr("sleep-description")
	/// 睡一晚大约能分解约300大卡的脂肪
	static var SleepTips0: String = tr("sleep-tips-0")
	/// 睡得太晚，生长激素释放肽，会让你很容易感觉饿
	static var SleepTips1: String = tr("sleep-tips-1")
	/// 熬夜会导致水肿，看起来会变胖
	static var SleepTips2: String = tr("sleep-tips-2")
	/// 11点到2点是肝脏排毒时间，在这时候睡觉能够让皮肤变好
	static var SleepTips3: String = tr("sleep-tips-3")
	/// 牛奶中的色氨酸能够发挥镇定作用，改善睡眠质量
	static var SleepTips4: String = tr("sleep-tips-4")
	/// 燕麦片能够诱使身体产生褪黑素，促进睡眠
	static var SleepTips5: String = tr("sleep-tips-5")
	/// 睡觉时不要开灯，灯光降低褪黑素水平，影响睡眠质量
	static var SleepTips6: String = tr("sleep-tips-6")
	/// 你今天的起床时间，往回推7.5小时就是你今晚的最晚上床时间
	static var SleepTips7: String = tr("sleep-tips-7")
	/// 下午2:30以后不要饮用含咖啡因的饮料
	static var SleepTips8: String = tr("sleep-tips-8")
	/// 酗酒会让你昏睡，但是并不会因此得到深度睡眠
	static var SleepTips9: String = tr("sleep-tips-9")
	/// 智能推送
	static var SmartPush: String = tr("smart-push")
	/// 手表识别状态变化时，自动展现状态信息
	static var SmartPushDescription: String = tr("smart-push-description")
	/// 互动
	static var Social: String = tr("social")
	/// 规律的运动是控制体重最有效的方式，同时可以控制热量的摄取量
	static var SportTips0: String = tr("sport-tips-0")
	/// 运动有助于改善体型，可以调节松弛的肌肤，并减低脂肪含量，使你拥有健康的感觉
	static var SportTips1: String = tr("sport-tips-1")
	/// 适当的运动具有调节人体紧张情绪的作用，能改善生理和心理状态，恢复体力和精力
	static var SportTips2: String = tr("sport-tips-2")
	/// 步数
	static var Steps: String = tr("steps")
	/// 保持眼看前方、颈部肌肉放松、双臂自然摆动
	static var StrideTips0: String = tr("stride-tips-0")
	/// 检查自己的姿势，不要含胸驼背
	static var StrideTips1: String = tr("stride-tips-1")
	/// 健走运动能够有效的维持认知功能，防止老年痴呆
	static var StrideTips10: String = tr("stride-tips-10")
	/// 健走能够提高肢体的平衡性能
	static var StrideTips11: String = tr("stride-tips-11")
	/// 锻炼能够促进体内肾上腺素的分泌，而它能够改善记忆力
	static var StrideTips12: String = tr("stride-tips-12")
	/// 最佳健走步频150步/分钟
	static var StrideTips2: String = tr("stride-tips-2")
	/// 最佳健走时间15点-21点
	static var StrideTips3: String = tr("stride-tips-3")
	/// 最佳发力姿势，脚跟着地，滚动到脚掌，脚趾发力蹬地结束
	static var StrideTips4: String = tr("stride-tips-4")
	/// 保持有节奏的呼吸，两步一呼两步一吸
	static var StrideTips5: String = tr("stride-tips-5")
	/// 保持匀速行走，有助于保持良好心态，运动时间更持久
	static var StrideTips6: String = tr("stride-tips-6")
	/// 初学者可从每天15分钟走起，每周递增5分钟，最终达到每周150分钟
	static var StrideTips7: String = tr("stride-tips-7")
	/// 每天健走30分钟可维持心肺功能的健康状况
	static var StrideTips8: String = tr("stride-tips-8")
	/// 一周健走7小时以上可防止乳腺增生，降低20%的乳腺癌患病率
	static var StrideTips9: String = tr("stride-tips-9")
	/// 今天
	static var Summary: String = tr("Summary")
	/// 总结你一整天的锻炼、活动以及睡眠的情况
	static var SummaryDescription: String = tr("Summary-description")
	/// 周日
	static var Sunday: String = tr("sunday")
	/// 游泳时冷水的刺激通过热量调节作用与新陈代谢能促进血液循环，有效改善心血管系统
	static var SwimTips0: String = tr("swim-tips-0")
	/// 游泳时胸部受到的水压和冷水刺激肌肉紧缩能够有效的增加肺活量
	static var SwimTips1: String = tr("swim-tips-1")
	/// 游泳能够促进皮肤血液循环，长期游泳能够让你的皮肤光滑而富有弹性
	static var SwimTips2: String = tr("swim-tips-2")
	/// 水中运动时，汗液中的盐分对皮肤的刺激会被大大削弱
	static var SwimTips3: String = tr("swim-tips-3")
	/// 游泳能锻炼你的体温调节功能，增加脑垂体功能，提高免疫力
	static var SwimTips4: String = tr("swim-tips-4")
	/// 饭后、空腹、饮酒后不宜游泳哦
	static var SwimTips5: String = tr("swim-tips-5")
	/// 佩戴泳帽能够防止泳池水质对头发的伤害
	static var SwimTips6: String = tr("swim-tips-6")
	/// 佩戴游泳眼镜可以防止细菌感染眼部
	static var SwimTips7: String = tr("swim-tips-7")
	/// 游泳能够促进体内肾上腺素的分泌，而它能够改善记忆力
	static var SwimTips8: String = tr("swim-tips-8")
	/// 同步中
	static var Syncing: String = tr("syncing")
	/// 同步成功！
	static var SyncSuccess: String = tr("sync-success")
	/// 拍照
	static var TakePhoto: String = tr("take-photo")
	/// 点击输入
	static var TapToEnter: String = tr("tap-to-enter")
	/// 请输入有效字符
	static var TextInputInvalid: String = tr("text-input-invalid")
	/// 周四
	static var Thursday: String = tr("thursday")
	/// 优雅的表盘设计，满足你对时间的追求
	static var TimeDescription: String = tr("Time-description")
	/// 时间轴
	static var Timeline: String = tr("timeline")
	/// 动
	static var TimelineActive: String = tr("timeline-active")
	/// 能量消耗 
	static var TimelineActivityCaloriesConsume: String = tr("timeline-activity-calories-consume")
	/// 巡航速度
	static var TimelineActivityCyclingCruise: String = tr("timeline-activity-cycling-cruise")
	/// 前进了 
	static var TimelineActivityTransTravel: String = tr("timeline-activity-trans-travel")
	/// 绑定
	static var TimelineBind: String = tr("timeline-bind")
	/// 充电
	static var TimelineCharge: String = tr("timeline-charge")
	/// 骑车
	static var TimelineCycling: String = tr("timeline-cycling")
	/// 下载失败
	static var TimelineErrorDownloadFailed: String = tr("timeline-error-download-failed")
	/// 什么也没有
	static var TimelineErrorDownloadNothing: String = tr("timeline-error-download-nothing")
	/// 设备未连接
	static var TimelineErrorNotConnected: String = tr("timeline-error-not-connected")
	/// 未获取到新数据
	static var TimelineErrorNothingNew: String = tr("timeline-error-nothing-new")
	/// 保存失败
	static var TimelineErrorSaveFailed: String = tr("timeline-error-save-failed")
	/// 同步失败
	static var TimelineErrorSyncFailed: String = tr("timeline-error-sync-failed")
	/// 哎呦
	static var TimelineOops: String = tr("timeline-oops")
	/// 其它
	static var TimelineOther: String = tr("timeline-other")
	/// 静
	static var TimelineQuiet: String = tr("timeline-quiet")
	/// 跑步
	static var TimelineRun: String = tr("timeline-run")
	/// 睡眠
	static var TimelineSleep: String = tr("timeline-sleep")
	/// 运动
	static var TimelineSport: String = tr("timeline-sport")
	/// 健走
	static var TimelineStride: String = tr("timeline-stride")
	/// 游泳
	static var TimelineSwim: String = tr("timeline-swim")
	/// 摘下
	static var TimelineTakeOff: String = tr("timeline-take-off")
	/// 交通工具
	static var TimelineTrans: String = tr("timeline-trans")
	/// 解绑
	static var TimelineUnbind: String = tr("timeline-unbind")
	/// 散步
	static var TimelineWalk: String = tr("timeline-walk")
	/// 热身
	static var TimelineWarmUp: String = tr("timeline-warm-up")
	/// 设置照片
	static var TitleAvatarActionsheet: String = tr("title-avatar-actionsheet")
	/// 至
	static var To: String = tr("to")
	/// 今天
	static var Today: String = tr("today")
	/// 今日天气
	static var TodayWeather: String = tr("today-weather")
	/// 每天醒来之后自动展示天气信息
	static var TodayWeatherDescription: String = tr("today-weather-description")
	/// 尝试骑自行车和走路上班，保持运动量
	static var TransTips0: String = tr("trans-tips-0")
	/// 路过的风景有多美，还记得吗
	static var TransTips1: String = tr("trans-tips-1")
	/// 周二
	static var Tuesday: String = tr("tuesday")
	/// 新手指引
	static var Tutorial: String = tr("tutorial")
	/// 解除绑定
	static var Unbind: String = tr("unbind")
	/// 解绑失败！
	static var UnbindFailed: String = tr("unbind-failed")
	/// 监测到您已经绑定了不支持的设备，同一账号只能同时绑定一台设备。
	static var UnbindOldDevice: String = tr("unbind-old-device")
	/// 解绑成功！
	static var UnbindSucceed: String = tr("unbind-succeed")
	/// 厘米
	static var UnitCm: String = tr("unit-cm")
	/// 次/分钟
	static var UnitHeartRate: String = tr("unit-heart-rate")
	/// 小时
	static var UnitHour: String = tr("unit-hour")
	/// 大卡
	static var UnitKcal: String = tr("unit-kcal")
	/// kg
	static var UnitKg: String = tr("unit-kg")
	/// 千米
	static var UnitKm: String = tr("unit-km")
	/// 米
	static var UnitMeter: String = tr("unit-meter")
	/// 分钟
	static var UnitMinute: String = tr("unit-minute")
	/// /千米
	static var UnitPace: String = tr("unit-pace")
	/// 秒
	static var UnitSecond: String = tr("unit-second")
	/// 千米/小时
	static var UnitSpeedKmh: String = tr("unit-speed-kmh")
	/// 步
	static var UnitStep: String = tr("unit-step")
	/// 次
	static var UnitOneTime: String = tr("unit-one-time")
	/// 次
	static var UnitTimes: String = tr("unit-times")
	/// 年
	static var UnitYear: String = tr("unit-year")
	/// 未知错误
	static var UnknownError: String = tr("unknown-error")
	/// 未知用户信息
	static var UnknowUser: String = tr("unknow-user")
	/// 你需要进入 iOS 系统的「设置」-「蓝牙」中，忽略 bong 设备，以解除系统的蓝牙配对，断开设备的连接。否则你会继续在此设备上接收到消息提醒，消耗手机和设备的电量。
	static var UnpairText: String = tr("unpair-text")
	/// 请解除 bong 与手机的配对
	static var UnpairTitle: String = tr("unpair-title")
	/// 信息更新失败
	static var UpdateUserInfoFailed: String = tr("update-user-info-failed")
	/// 更新信息成功
	static var UpdateUserInfoSuccess: String = tr("update-user-info-success")
	/// 升级
	static var Upgrade: String = tr("upgrade")
	/// 升级完成
	static var UpgradeDone: String = tr("upgrade-done")
	/// 升级失败
	static var UpgradeFailed: String = tr("upgrade-failed")
	/// 升级失败，请重启蓝牙，并断开其它已连接的蓝牙设备重新升级。\n如果多次升级仍然失败，请联系客服协助解决。
	static var UpgradeFailed2s: String = tr("upgrade-failed-2s")
	/// 准备中
	static var UpgradePrepare: String = tr("upgrade-prepare")
	/// 升级中
	static var Upgrading: String = tr("upgrading")
	/// 个人信息
	static var UserInfo: String = tr("user-info")
	/// 出生年份
	static var UserInfoBirthday: String = tr("user-info-birthday")
	/// 身高
	static var UserInfoHeight: String = tr("user-info-height")
	/// 体重
	static var UserInfoWeight: String = tr("user-info-weight")
	/// 无效账户或密码错误！
	static var UserInvalid: String = tr("user-invalid")
	/// 你的账户可能在另一台设备登录过，如果要继续在这台设备上使用，请重新登录
	static var UserKickOut: String = tr("user-kick-out")
	/// 请输入用户名
	static var UserNameNeeded: String = tr("user-name-needed")
	/// 用户不存在
	static var UserNotExisted: String = tr("user-not-existed")
	/// 保存用户信息失败!
	static var UserSaveError: String = tr("user-save-error")
	/// 锻炼消耗目标
	static var UserTargetCalorie: String = tr("user-target-calorie")
	/// 锻炼时长目标
	static var UserTargetExerciseTime: String = tr("user-target-exercise-time")
	/// 睡眠时长目标
	static var UserTargetSleepTime: String = tr("user-target-sleep-time")
	/// 账户验证失败
	static var UserValidFail: String = tr("user-valid-fail")
	/// 验证
	static var Validate: String = tr("validate")
	/// 验证码
	static var ValidationCode: String = tr("validation-code")
	/// 验证码已发送
	static var ValidationCodeSent: String = tr("validation-code-sent")
	/// 振动反馈
	static var VibrationResponse: String = tr("vibration-response")
	/// 在转动Card及抬腕解锁时开启振动反馈
	static var VibrationResponseDescription: String = tr("vibration-response-description")
	/// 清醒
	static var WakeupDuration: String = tr("wakeup-duration")
	/// 清醒次数
	static var WakeupTimes: String = tr("wakeup-times")
	/// 保持眼看前方、颈部肌肉放松、双臂自然摆动
	static var WalkTips0: String = tr("walk-tips-0")
	/// 检查自己的姿势，不要含胸驼背
	static var WalkTips1: String = tr("walk-tips-1")
	/// 散步要达到锻炼效果路程不应低于2公里
	static var WalkTips2: String = tr("walk-tips-2")
	/// 放松走的最佳步频为50-70步/分钟
	static var WalkTips3: String = tr("walk-tips-3")
	/// 最佳散步时间15点-21点
	static var WalkTips4: String = tr("walk-tips-4")
	/// 最佳发力姿势，脚跟着地，滚动到脚掌，脚趾发力蹬地结束
	static var WalkTips5: String = tr("walk-tips-5")
	/// 保持有节奏的呼吸，两步一呼两步一吸
	static var WalkTips6: String = tr("walk-tips-6")
	/// 保持匀速行走，有助于保持良好心态，运动时间更持久
	static var WalkTips7: String = tr("walk-tips-7")
	/// 运动前的热身能够有效的减少运动伤害的发生
	static var WarmupTips0: String = tr("warmup-tips-0")
	/// 运动后的拉伸能够让你的肌肉线条更优美
	static var WarmupTips1: String = tr("warmup-tips-1")
	/// 每个动作保持3个深呼吸的静态拉伸能够有效的防止运动后的肌肉酸痛
	static var WarmupTips2: String = tr("warmup-tips-2")
	/// 锻炼能够促进体内肾上腺素的分泌，而它能够改善记忆力
	static var WarmupTips3: String = tr("warmup-tips-3")
	/// 佩戴位置
	static var WearPosition: String = tr("wear-position")
	/// 天气
	static var Weather: String = tr("Weather")
	/// 在手表上查看城市天气
	static var WeatherDescription: String = tr("Weather-description")
	/// 同步天气成功
	static var WeatherSyncSuccess: String = tr("weather-sync-success")
	/// 同步天气失败
	static var WeatherSyncFailed: String = tr("weather-sync-failed")
	/// 周三
	static var Wednesday: String = tr("wednesday")
	/// 微信排行
	static var WxRank: String = tr("wx-rank")
	/// iOS 健康
	static var IOSHealth: String = tr("iOS-health")
	/// QQ 运动
	static var QqHealth: String = tr("qq-health")
	/// 是
	static var Yes: String = tr("yes")
	/// 和
	static var And: String = tr("and")
	/// 绑定设备
	static var BindDevice: String = tr("bind-device")
	/// 我的
	static var My: String = tr("my")
	/// 定时器
	static var Timer: String = tr("Timer")
	/// 手表上的定时器
	static var TimerDescription: String = tr("Timer-description")
	/// 更新城市信息成功
	static var UpdateCitySuccess: String = tr("update-city-success")
	/// 正在定位... 点击取消等待
	static var LocatingPressCancelWait: String = tr("locating-press-cancel-wait")
	/// 准备中
	static var Preparing: String = tr("preparing")
	/// 计算中
	static var Computing: String = tr("computing")
	/// 下载中
	static var Downloading: String = tr("downloading")
	/// 昵称过长！最多15个字符！
	static var NicknameTooLong: String = tr("nickname-too-long")
	/// 首屏
	static var FirstCard: String = tr("first-card")
	/// 解绑前请同步数据，否则可能会丢失部分数据，确认解绑？
	static var UnbindWarning: String = tr("unbind-warning")
	/// 验证码无效！
	static var CodeValidateFailed: String = tr("code-validate-failed")
	/// 自动心率监测
	static var HeartRateAutoMeasure: String = tr("heartRate-auto-measure")
	/// 闹钟提醒
	static var AlarmAlert: String = tr("alarm-alert")
	/// 来电提醒
	static var PhoneCallAlert: String = tr("phone-call-alert")
	/// 健身
	static var Fitness: String = tr("fitness")
	/// 通过手环振动唤醒你，开始崭新的一天。
	static var AlarmTipVibration: String = tr("alarm-tip-vibration")
	/// 来电时，以振动形式提醒你。
	static var PhoneCallTipVibration: String = tr("phone-call-tip-vibration")
	/// 全天候自动记录你的心率。
	static var HeartRateAutoMeasureDescription: String = tr("heartRate-auto-measure-description")
	/// 设备绑定成功\n开启你的智能手环之旅吧！
	static var _2sBindSuccessSubtitle: String = tr("2s-bind-success-subtitle")
	/// 版本信息获取失败
	static var FirmwareInfoLoss: String = tr("firmware-info-loss")
	/// 总时长
	static var TotalDuration: String = tr("total-duration")
	/// 总次数
	static var TotalTimes: String = tr("total-times")
	/// 总消耗（大卡）
	static var TotalConsumption: String = tr("total-consumption")
	/// 距离(公里)
	static var CurrentDistance: String = tr("current-distance")
	/// 配速(分钟/公里)
	static var CurrentSpeed: String = tr("current-speed")
	/// 开始健身
	static var StartFitness: String = tr("start-fitness")
	/// 放弃后健身数据将不会被保存，确认放弃本次健身吗？
	static var FitnessGiveUpTip: String = tr("fitness-give-up-tip")
	/// 放弃后跑步数据将不会被保存，确认放弃本次跑步吗？
	static var RunningGiveUpTip: String = tr("running-give-up-tip")
	/// 放弃后骑车数据将不会被保存，确认放弃本次骑车吗？
	static var CyclingGiveUpTip: String = tr("cycling-give-up-tip")
	/// 继续跑步
	static var RunningContinue: String = tr("running-continue")
	/// 继续骑车
	static var CyclingContinue: String = tr("cycling-continue")
	/// 放弃
	static var FitnessGiveUp: String = tr("fitness-give-up")
	/// 长按完成
	static var PressToStop: String = tr("press-to-stop")
	/// 设备未连接，心率与能量将无法准确监测。
	static var FitnessDeviceNotConnected: String = tr("fitness-device-not-connected")
	/// 同步数据失败\n
	static var FitnessDetailSyncFailed: String = tr("fitness-detail-sync-failed")
	/// \n在【时间轴】同步数据后，即可查看详细运动数据。
	static var FitnessDetailSyncTip: String = tr("fitness-detail-sync-tip")
	/// 开始测量
	static var HeartRateMeasureStart: String = tr("heart-rate-measure-start")
	/// 心率曲线
	static var HeartRateMeasureCurve: String = tr("heart-rate-measure-curve")
	/// 上次心率记录
	static var HeartRateMeasureLast: String = tr("heart-rate-measure-last")
	/// 测量中...
	static var HeartRateMeasureIng: String = tr("heart-rate-measure-ing")
	/// 本次心率记录
	static var HeartRateMeasureNow: String = tr("heart-rate-measure-now")
	/// 测量失败
	static var HeartRateMeasureFailed: String = tr("heart-rate-measure-failed")
	/// 心率上传失败
	static var HeartRateUploadFailed: String = tr("heart-rate-upload-failed")
	/// 放弃
	static var GiveUp: String = tr("give-up")
	/// 确定要中止本次心率测量吗？
	static var GiveUpMessage: String = tr("give-up-message")
	/// 继续测量
	static var ConfinueMeasure: String = tr("confinue-measure")
	/// 错误设备
	static var DeviceError: String = tr("device-error")
	/// 连接错误
	static var DeviceLinkError: String = tr("device-link-error")
	/// App 版本
	static var AppVersion: String = tr("app-version")
	/// 设备系统版本
	static var DeviceVersion: String = tr("device-version")
	/// 设备 MAC
	static var DeviceMAC: String = tr("device-MAC")
	/// Oops！现在无法访问
	static var OpenTokenNil: String = tr("open-token-nil")
	/// 初始化中...
	static var DeviceInitializing: String = tr("device-initializing")
	/// 升级成功，现在继续绑定
	static var UpgradeSuccessContinueScan: String = tr("upgrade-success-continue-scan")
	/// 发现一个待升级设备
	static var DiscoverDfuDevice: String = tr("discover-dfu-device")
	/// 此设备在升级之前将无法绑定，是否要升级此设备？
	static var DiscoverDfuDeviceMessage: String = tr("discover-dfu-device-message")
	/// 忽略该设备
	static var IgnoreThisDevice: String = tr("ignore-this-device")
	/// 数据出错！运动类型不匹配！
	static var FitnessTimelineEntryError: String = tr("fitness-timeline-entry-error")
	/// 健身时间小于 5 分钟，数据将不会被记录。
	static var FitnessTimeTooShort: String = tr("fitness-time-too-short")
	/// 骑车时间小于 5 分钟，数据将不会被记录。
	static var CyclingTimeTooShort: String = tr("cycling-time-too-short")
	/// 跑步时间小于 5 分钟，数据将不会被记录。
	static var RunningTimeTooShort: String = tr("running-time-too-short")
	/// 电池电量低(%.0f%%)，请及时充电
	static func BatteryLowWarn (values: CVarArg...) -> String {
		return tr("battery-low-warn", values)
	}
	/// 您的帐户已绑定了不支持的设备: bong 
	static var UserDeviceNotSupport: String = tr("user-device-not-support")
	/// 设备系统版本过低，请升级后再试！
	static var FirmwareVersionTooLow: String = tr("firmware-version-too-low")
	/// 不再显示
	static var NeverShow: String = tr("never-show")
	/// 除闹钟外，手环不再振动，以免打扰。
	static var BandDoNotDisturbTitle: String = tr("band-do-not-disturb-title")
	/// 摇一摇可以停止手环振动。
	static var BandShakeStopVibrationTitle: String = tr("band-shake-stop-vibration-title")
	/// 已到达健身时长上限（3小时），本次健身记录已经保存，您可做适当休息后继续。
	static var FitnessTimeTooLong: String = tr("fitness-time-too-long")
	/// 浅睡眠提醒
	static var LightSleepAlarmTitle: String = tr("light-sleep-alarm-title")
	/// 没有数据\n\n\n你可以在【数据报表】-【心率报告】中查看心率历史数据
	static var EmptyHeartRateData: String = tr("empty-heart-rate-data")
	/// 关闭心率传感器失败！
	static var TurnOffHeartRateMonitorFailed: String = tr("turn-off-heart-rate-monitor-failed")
	/// 获取实时心率失败
	static var FetchRealTimeHeartRateFailed: String = tr("fetch-real-time-heart-rate-failed")
	/// 寻找手环
	static var FindMyBong: String = tr("find-my-bong")
	/// 开始
	static var Start: String = tr("start")
	/// 停止
	static var Stop: String = tr("stop")
	/// 请确保手机蓝牙开启！
	static var KeepBluetoothOn: String = tr("keep-bluetooth-on")
	/// 当手机蓝牙搜索到手环信号时，手环会以振动方式提醒你手环所在位置。
	static var TipForFindMyBong: String = tr("tip-for-find-my-bong")
	/// 已连接手环，并启动手环振动
	static var BandConnectedVibration: String = tr("band-connected-vibration")
	/// 距离接近，请仔细寻找
	static var DeviceVeryClose: String = tr("device-very-close")
	/// 信号弱
	static var SignalWeak: String = tr("signal-weak")
	/// 信号中等
	static var SignalMiddle: String = tr("signal-middle")
	/// 信号强
	static var SignalStrong: String = tr("signal-strong")
	/// 搜索中...
	static var Searching: String = tr("searching")
	/// 正在寻找手环...
	static var SearchingTip: String = tr("searching-tip")
	/// 信号强度范围说明(dBm):\n
	static var SignalStrengthTitle: String = tr("signal-strength-title")
	/// \n-50（最强）至  -100（最弱）, \n信号越强，距离越近
	static var SignalStrengthDesc: String = tr("signal-strength-desc")
	/// 不要空腹进行锻炼，应该在锻炼前半小时补充能量
	static var FitnessTips0: String = tr("fitness-tips-0")
	/// 动作质量必须保证，高质量的动作不光是增长肌肉的根本条件，还能降低受伤的风险
	static var FitnessTips1: String = tr("fitness-tips-1")
	/// 训练后记得进行拉伸，拉伸能缓解健身带来的肌肉紧张，减少酸痛感
	static var FitnessTips2: String = tr("fitness-tips-2")
	/// 未授权
	static var Notauthorized: String = tr("notauthorized")
	/// 你的设备不支持 HealthKit
	static var HealthkitNotAvailable: String = tr("healthkit-not-available")
	/// iOS 健康数据操作出错
	static var HealthkitDeleteFailed: String = tr("healthkit-delete-failed")
	/// iOS 健康数据保存出错
	static var HealthkitSaveFailed: String = tr("healthkit-save-failed")
	/// 未安装 QQ
	static var QqNotInstalled: String = tr("qq-not-installed")
	/// QQ 授权失败
	static var QqAuthorizeFailed: String = tr("qq-authorize-failed")
	/// QQ 授权信息解析失败
	static var QqAuthParseFailed: String = tr("qq-auth-parse-failed")
	/// QQ 授权已经过期，如需同步数据到 QQ 运动，请重新授权
	static var QqAuthExpired: String = tr("qq-auth-expired")
	/// 去授权
	static var GoAuthorize: String = tr("go-authorize")
	/// 活动提醒
	static var StandReminder: String = tr("stand-reminder")
	/// 当前心率低于燃脂心率，可能会影响运动效果，建议提高运动强度。
	static var BeatsLow: String = tr("beats-low")
	/// 当前心率处于燃脂心率，建议保持运动强度。
	static var BeatsNormal: String = tr("beats-normal")
	/// 当前心率高于燃脂心率，可能会造成过渡消耗，建议降低运动强度
	static var BeatsHigh: String = tr("beats-high")
	/// 你的燃脂心率：
	static var YourFatBurrningZoneIs: String = tr("your-fat-burrning-zone-is")
	/// 提交
	static var Submit: String = tr("submit")
	/// 如何才能拿到满分？
	static var HowToBeBest: String = tr("how-to-be-best")
	/// 很抱歉我们的产品让你不够满意，请问在哪方面的改善能够得到你的认可？
	static var HowToBeBestPlaceholder: String = tr("how-to-be-best-placeholder")
	/// 哪些方面让你最满意？
	static var WhereIsBest: String = tr("where-is-best")
	/// 感谢对 bong %@ 的支持，我们会一如既往地继续努力
	static func WhereIsBestPlaceholder (values: CVarArg...) -> String {
		return tr("where-is-best-placeholder", values)
	}
	/// Hi, 感谢选择 %@
	static func NpsTitle (values: CVarArg...) -> String {
		return tr("nps-title", values)
	}
	/// 你有多大可能性将 bong %@ 推荐给身边的亲人和朋友？
	static func NpsScoreQuestion (values: CVarArg...) -> String {
		return tr("nps-score-question", values)
	}
	/// 设备
	static var Device: String = tr("device")
	/// 身体测试
	static var BodyTest: String = tr("body-test")
	/// 快来完成一个简单的身体测试吧！
	static var BodyTestSubtitle: String = tr("body-test-subtitle")
	/// 身体测试不仅能够让你了解自己的身体年龄，还能掌握包括平衡能力、敏捷性、体能等详细身体数据，让你更懂自己！
	static var BodyTestDescription: String = tr("body-test-description")
	/// 平均值
	static var AvgValue: String = tr("avg-value")
	/// 个人值
	static var MyValue: String = tr("my-value")
	/// 体能
	static var BodyEnergy: String = tr("body-energy")
	/// 敏捷
	static var Agility: String = tr("agility")
	/// 平衡
	static var Balance: String = tr("balance")
	/// 开始测试
	static var StartTest: String = tr("start-test")
	/// 冥想
	static var Meditation: String = tr("meditation")
	/// 闭眼单脚站立
	static var OneLegStanding: String = tr("one-leg-standing")
	/// 原地高抬腿
	static var StepUp: String = tr("step-up")
	/// 身体测试结果
	static var BodyTestResult: String = tr("body-test-result")
	/// 下一项
	static var NextItem: String = tr("next-item")
	/// 身体测试失败
	static var BodyTestFailed: String = tr("body-test-failed")
	/// 设备连接异常，测试无法正常进行。请检查设备后，重新测试。
	static var BodyTestFailedMessage: String = tr("body-test-failed-message")
	/// 很遗憾，数据分析出现错误，无法显示本次结果。
	static var BodyTestAnalyzeFailed: String = tr("body-test-analyze-failed")
	/// 首先进行第一项测试：冥想。\n\n冥想也称心性锻炼法，测试过程中请闭眼并在安静的地方保持静坐 30 秒，全身放松，保持缓慢的深呼吸。好了，让我们开始吧~
	static var BodyTestStartDescription: String = tr("body-test-start-description")
	/// 提示：测试过程中请勿锁屏
	static var BodyTestWarning: String = tr("body-test-warning")
	/// 请升级手环以体验久坐提醒！
	static var StandReminderVersionTooLow: String = tr("stand-reminder-version-too-low")
	/// 设备信息出错，请重启应用后再试！
	static var DeviceInfoError: String = tr("device-info-error")
	/// 确定
	static var OK: String = tr("o-k")
	/// 身体年龄（岁）
	static var BodyAge: String = tr("body-age")
	/// 你的身体年龄大于实际生理年龄，平时需要加强身体锻炼，多注意生活方式，否则会引起亚健康并加速衰老。
	static var BodyTestResultHigher: String = tr("body-test-result-higher")
	/// 你的身体年龄等于实际生理年龄，看来平时很注意生活方式嘛，继续保持哦！
	static var BodyTestResultSame: String = tr("body-test-result-same")
	/// 哇哦~你的身体年龄小于实际生理年龄哦，身体状况非常棒！
	static var BodyTestResultLower: String = tr("body-test-result-lower")
	/// 找一个安静的地方闭眼静坐30秒，全身放松，保持深呼吸。吸气时默念“静”字，呼气时默念“松”字，体会联想“独坐小溪任水流”的意境。
	static var MeditationSubs: String = tr("meditation-subs")
	/// 两手水平伸直，紧闭双目，选择您认为站立较为容易的一条腿单腿站立；抬起的那只脚可以抬高或者放低，但不能与支撑脚接触。
	static var OneLegStandingSubs: String = tr("one-leg-standing-subs")
	/// 原地高抬腿30秒：保持上身挺直的情况下，两臂前后摆动，两腿交替抬至水平，频率越快，效果越好。
	static var StepUpSubs: String = tr("step-up-subs")
	/// 连接「健康」
	static var LinkHealthKit: String = tr("link-health-kit")
	/// 连接「健康」以后，bong 会将你的睡眠、步数、能量消耗值等关键身体数据上传至「健康」
	static var LinkHealthKitDescription: String = tr("link-health-kit-description")
	/// 已连接过健康。\n你也可在「设置」-「隐私」-「健康」-「bong」中更改同步设置。
	static var LinkHealthKitHelp: String = tr("link-health-kit-help")
	/// 去连接
	static var GoToLink: String = tr("go-to-link")
	/// 重新测量
	static var HeartRateMeasureRestart: String = tr("heart-rate-measure-restart")
	/// 总距离 (km)
	static var TotalDistance: String = tr("total-distance")
	/// 总能量（大卡）
	static var TotalCalories: String = tr("total-calories")
	/// 跑步机
	static var RunMachine: String = tr("run-machine")
	/// 户外跑步
	static var RunOutside: String = tr("run-outside")
	/// 长时间紧握把手容易造成手掌麻木
	static var GpstrackcyclingTips0: String = tr("gpstrackcycling-tips-0")
	/// 轻易不要用嘴来呼吸，而是坚持用鼻腔呼吸。 并且要保持呼吸均匀，在节奏上和骑行的节奏相配合。
	static var GpstrackcyclingTips1: String = tr("gpstrackcycling-tips-1")
	/// 偶尔在不认识的路上骑骑车，扔掉地图开始去探索吧。
	static var GpstrackcyclingTips2: String = tr("gpstrackcycling-tips-2")
	/// 如果不是一场比赛中关键的爬坡，那就不要拼尽全力。一开始稳住速度，然后换挡，保持大约75-80rpm的踏频。
	static var GpstrackcyclingTips3: String = tr("gpstrackcycling-tips-3")
	/// 在车库里，安心地练习一下如何换胎，上路时就带上你平时用的气筒和工具。
	static var GpstrackcyclingTips4: String = tr("gpstrackcycling-tips-4")
	/// 直接开始
	static var BodyTestJustStart: String = tr("body-test-just-start")
	/// 您需要打开定位服务方可记录您的位置
	static var YouNeedEnableLocalicationService: String = tr("you-need-enable-localication-service")
	/// 你尚未绑定任何设备。
	static var BindMaskMessage: String = tr("bind-mask-message")
	/// 更新固件
	static var UpdateFirmware: String = tr("update-firmware")
	/// 去设置
	static var GoSetting: String = tr("go-setting")
	/// 您需要在「设置」-「隐私」-「定位服务」-「bong」中选择「始终」方可记录你的位置
	static var LocationServicePermissionGuid: String = tr("location-service-permission-guid")
	/// 继续
	static var Continue: String = tr("continue")
	/// 请移至空旷地带，否则可能无法准确记录你的跑步轨迹
	static var GetGpsSignal: String = tr("get-gps-signal")
	/// GPS 信号弱
	static var GpsSignalWeak: String = tr("gps-signal-weak")
	/// 算法版本
	static var AlgorithmVersion: String = tr("algorithm-version")
	/// 生效时间
	static var EffectiveTime: String = tr("effective-time")
	/// 表盘
	static var NewDialCardName: String = tr("new-dial-card-name")
	/// 优雅的表盘显示时间、运动等信息。
	static var NewDialCardDescription: String = tr("new-dial-card-description")
	/// 显示实时天气及当天详细天气数据。
	static var NewWeatherCardDescription: String = tr("new-weather-card-description")
	/// 开启运动
	static var NewSportCardName: String = tr("new-sport-card-name")
	/// 在手表上手动开始一项运动记录。
	static var NewSportCardDescription: String = tr("new-sport-card-description")
	/// 心率测量
	static var NewHeartrateCardName: String = tr("new-heartrate-card-name")
	/// 在手表上测量你的实时心率。
	static var NewHeartrateCardDescription: String = tr("new-heartrate-card-description")
	/// 默认表盘
	static var DialNameDefault: String = tr("dial-name-default")
	/// 宇宙
	static var DialNameSpace: String = tr("dial-name-space")
	/// 盒子
	static var DialNameBox: String = tr("dial-name-box")
	/// 夏天
	static var DialNameSummer: String = tr("dial-name-summer")
	/// 暗黑
	static var DialNameDark: String = tr("dial-name-dark")
	/// 色块
	static var DialNameLump: String = tr("dial-name-lump")
	/// 蜘蛛侠
	static var DialNameSpiderman: String = tr("dial-name-spiderman")
	/// 电视机
	static var DialNameTv: String = tr("dial-name-tv")
	/// 组合
	static var DialNameAbstract: String = tr("dial-name-abstract")
	/// 电子钟
	static var DialNameClock: String = tr("dial-name-clock")
	/// 方形
	static var DialNameSquared: String = tr("dial-name-squared")
	/// 圈
	static var DialNameCircles: String = tr("dial-name-circles")
	/// 对角线
	static var DialNameDiagonal: String = tr("dial-name-diagonal")
	/// 四原色
	static var DialNameXcolor: String = tr("dial-name-xcolor")
	/// 队长
	static var DialNameCaptain: String = tr("dial-name-captain")
	/// 现代
	static var DialNameModern: String = tr("dial-name-modern")
	/// 复古黄
	static var DialNameClassicyellow: String = tr("dial-name-classicyellow")
	/// 探路者
	static var DialNameExplorer: String = tr("dial-name-explorer")
	/// 聚焦
	static var DialNameFocus: String = tr("dial-name-focus")
	/// 北海道
	static var DialNameHokkaido: String = tr("dial-name-hokkaido")
	/// 罗马
	static var DialNameRome: String = tr("dial-name-rome")
	/// 冷静风
	static var DialNameStable: String = tr("dial-name-stable")
	/// 点击心仪表盘即可预览
	static var DialPreviewTip: String = tr("dial-preview-tip")
	/// 活动报告
	static var StepsDataReport: String = tr("steps-data-report")
	/// 睡眠报告
	static var SleepDataReport: String = tr("sleep-data-report")
	/// 心率报告
	static var HrDataReport: String = tr("hr-data-report")
	/// 天
	static var Day: String = tr("day")
	/// 周
	static var Week: String = tr("week")
	/// 月
	static var Month: String = tr("month")
	/// 基础心率
	static var Bhr: String = tr("bhr")
	/// 最低心率
	static var HrLow: String = tr("hr-low")
	/// 最高心率
	static var HrHigh: String = tr("hr-high")
	/// 睡眠时间
	static var SleepDuration: String = tr("sleep-duration")
	/// 深睡眠时间
	static var DeepSleepDuration: String = tr("deep-sleep-duration")
	/// 与前一天相比
	static var CompareLastDay: String = tr("compare-last-day")
	/// 与上周相比
	static var CompareLastWeek: String = tr("compare-last-week")
	/// 与上月相比
	static var CompareLastMonth: String = tr("compare-last-month")
	/// 本周
	static var ThisWeek: String = tr("this-week")
	/// 本月
	static var ThisMonth: String = tr("this-month")
	/// 表盘设置
	static var DialSetting: String = tr("dial-setting")
	/// 手表设置
	static var WatchSetting: String = tr("watch-setting")
	/// 提醒你每小时至少行走200步。（科学表明，每小时活动几分钟能大大减小久坐给身体带来的伤害。）
	static var StandReminderTip: String = tr("stand-reminder-tip")
	/// 小 bong 龙
	static var BongDragon: String = tr("bong-dragon")
	/// 如何使用手表
	static var WatchTutorialTitle: String = tr("watch-tutorial-title")
	/// 解锁手表：
	static var TutorialUnlockTitle: String = tr("tutorial-unlock-title")
	/// 直接抬腕或双击手表底部。
	static var TutorialUnlockContent: String = tr("tutorial-unlock-content")
	/// 切换界面与选项：
	static var TutorialFlipTitle: String = tr("tutorial-flip-title")
	/// 转腕。
	static var TutorialFlipContent: String = tr("tutorial-flip-content")
	/// 确认选项：
	static var TutorialConfirmTitle: String = tr("tutorial-confirm-title")
	/// 双击手表底部。
	static var TutorialConfirmContent: String = tr("tutorial-confirm-content")
	/// 取消提醒：
	static var TutorialShakeTitle: String = tr("tutorial-shake-title")
	/// 摇一摇。
	static var TutorialShakeContent: String = tr("tutorial-shake-content")
	/// 上一步
	static var Previous: String = tr("previous")
	/// 好的
	static var Ok: String = tr("ok")
	/// 手势教程
	static var GestureTutorial: String = tr("gesture-tutorial")
	/// 请至少设置 %d 小时
	static func TimeTooShort (values: CVarArg...) -> String {
		return tr("time-too-short", values)
	}
	/// 设定
	static var Set: String = tr("set")
	/// 设定中...
	static var SetInProgress: String = tr("set-in-progress")
	/// 显示与控制
	static var DisplayConfig: String = tr("display-config")
	/// 微信
	static var Wechat: String = tr("wechat")
	/// QQ
	static var Qq: String = tr("qq")
	/// 短信
	static var Sms: String = tr("sms")
	/// 显示方式
	static var LayoutDirection: String = tr("layout-direction")
	/// 控制方式
	static var FlipMode: String = tr("flip-mode")
	/// 选择内容排列显示方式
	static var LayoutDirectionDescription: String = tr("layout-direction-description")
	/// 选择内容切换控制方式
	static var FlipModeDescription: String = tr("flip-mode-description")
	/// 如何使用手环
	static var BandTutorialTitle: String = tr("band-tutorial-title")
	/// 解锁手环：
	static var BandTutorialUnlockTitle: String = tr("band-tutorial-unlock-title")
	/// 直接抬腕或双击手环底部。
	static var BandTutorialUnlockContent: String = tr("band-tutorial-unlock-content")
	/// 双击手环底部。
	static var BandTutorialConfirmContent: String = tr("band-tutorial-confirm-content")
	/// 请按说明书佩戴好手表.
	static var PleaseWearWatch: String = tr("please-wear-watch")
	/// 是的，我已经佩戴好了
	static var AlreadyWear: String = tr("already-wear")
	/// 振动命令发送失败
	static var VibrateCommandFailed: String = tr("vibrate-command-failed")
	/// %@ 是否点亮
	static func XLightConfirm (values: CVarArg...) -> String {
		return tr("x-light-confirm", values)
	}
	/// 竖屏
	static var Vertical: String = tr("vertical")
	/// 横屏
	static var Horizontal: String = tr("horizontal")
	/// 自动
	static var Automatic: String = tr("automatic")
	/// 手势
	static var Gesture: String = tr("gesture")
	/// 除闹钟外，手环不再振动并禁用抬腕解锁，你仍可通过双击点亮屏幕。
	static var NX2DoNotDisturbDescription: String = tr("NX2-do-not-disturb-description")
	/// 除闹钟外，手环不再振动并禁用抬腕解锁，你仍可通过双击点亮屏幕。
	static var IIIDoNotDisturbDescription: String = tr("III-do-not-disturb-description")
	/// 绑定新 bong 设备
	static var BindNewDevice: String = tr("bind-new-device")
	/// 通过手机蓝牙连接设备
	static var LinkDeviceByBluetooth: String = tr("link-device-by-bluetooth")
	/// 搜索 bong
	static var SearchBong: String = tr("search-bong")
	/// 设备是否振动？
	static var DeviceIsVibrated: String = tr("device-is-vibrated")
	/// 设备是否被点亮？
	static var DeviceIsLighted: String = tr("device-is-lighted")
	/// 设备绑定失败，请重试。
	static var DeviceBindFailed: String = tr("device-bind-failed")
	/// 搜索你身边的 bong 设备……
	static var ScanDeviceNearby: String = tr("scan-device-nearby")
	/// 重新搜索
	static var RestartScan: String = tr("restart-scan")
	/// 请确定 \"%@\" 在蓝牙连接范围内
	static func MakeSureDeviceCanConnect (values: CVarArg...) -> String {
		return tr("make-sure-device-can-connect", values)
	}
	/// 附近的 bong
	static var NearbyBong: String = tr("nearby-bong")
	/// 重新升级
	static var ReUpgrade: String = tr("re-upgrade")
	/// 下次再说
	static var NextTime: String = tr("next-time")
	/// 固件升级
	static var _FirmwareUpgrade: String = tr("_firmware-upgrade")
	/// 固件升级大约需要2分钟，安装过程中将保留手环的存储数据，不影响手环升级后的正常使用。安装完成后手环自动重启，最新系统即可生效。
	static var FirmwareUpgradeMessage: String = tr("firmware-upgrade-message")
	/// 正在升级...%@%%
	static func UpgradingProcess (values: CVarArg...) -> String {
		return tr("upgrading-process", values)
	}
	/// 网络错误！请检查网络。
	static var InternetError: String = tr("internet-error")
	/// 喜欢 bong 吗？
	static var NPSEnjoy: String = tr("NPS-enjoy")
	/// 我要吐槽！
	static var NPSNotReally: String = tr("NPS-not-really")
	/// 给个好评，啵~
	static var NPSLove: String = tr("NPS-love")
	/// 还不确定
	static var NPSLeave: String = tr("NPS-leave")
	/// 发现
	static var Discovery: String = tr("discovery")
	/// 拓展
	static var Expand: String = tr("expand")
	/// 商城
	static var Mall: String = tr("mall")
	/// 产品
	static var Product: String = tr("product")
	/// 评测报告
	static var EvaluationReport: String = tr("evaluation-report")
	/// 更新说明
	static var UpgradeInstructions: String = tr("upgrade-instructions")
	/// 活动名称
	static var ActivityName: String = tr("activity-name")
	/// 解绑失败，请尝试手动解绑。
	static var AutoUnbindFailed: String = tr("auto-unbind-failed")
	/// 阅读量：%@
	static func PageViews (values: CVarArg...) -> String {
		return tr("pageViews", values)
	}
	/// 绑定失败，请重试
	static var BindFailedRetry: String = tr("bind-failed-retry")
	/// 已绑定
	static var AlreadyBound: String = tr("already-bound")
	/// 点亮命令发送失败
	static var LightCommandFailed: String = tr("light-command-failed")
	/// 请将评测报告以邮件形式发送至 rongrong@bong.cn。 我们将会及时回复，感谢。
	static var EvaluationAlertTip: String = tr("evaluation-alert-tip")
	/// 版本
	static var Version: String = tr("version")
	/// 更新详情
	static var UpdateInstruction: String = tr("update-instruction")
	/// 蓝牙服务异常，请重启手机蓝牙后重试
	static var BluetoothServiceError: String = tr("bluetooth-service-error")
	/// 获取MAC地址失败！请断开设备后重试
	static var FetchMACAddressFailed: String = tr("fetch-MAC-address-failed")
	/// 此 app 不支持绑定「%@」，请下载 bong Classic 绑定
	static func NotSupportDevice (values: CVarArg...) -> String {
		return tr("not-support-device", values)
	}
	/// 去下载
	static var GoToDownload: String = tr("go-to-download")
	/// 亮度调节
	static var Brightness: String = tr("brightness")
	/// 常规
	static var Normal: String = tr("normal")
	/// 高亮
	static var Highlight: String = tr("highlight")
	/// 高亮模式会增加手环耗电。
	static var HighlightTip: String = tr("highlight-tip")
	/// 被外星人抓走了...
	static var DataLoadFailed: String = tr("data-load-failed")
	/// 手机号注册
	static var PhoneRegister: String = tr("phone-register")
	/// 手机号已被注册，请尝试登录！
	static var AccountOccupied: String = tr("account-occupied")
	/// 发送验证码
	static var SendCode: String = tr("send-code")
	/// 登录即代表我接受 bong 的
	static var LoginDescription: String = tr("login-description")
	/// 注册即代表我接受 bong 的
	static var RegisterDescription: String = tr("register-description")
	/// 已将验证码以短信形式发送至：
	static var SendCodeDescription: String = tr("send-code-description")
	/// 密码长度最小为 6 位，包含英文和数字
	static var PasswordRoleDescription: String = tr("password-role-description")
	/// 重新发送
	static var ReSendCode: String = tr("re-send-code")
	/// 重新输入
	static var ReInput: String = tr("re-input")
	/// 创建密码
	static var CreatePassword: String = tr("create-password")
	/// 创建新密码
	static var CreateNewPassword: String = tr("create-new-password")
	/// 手机号
	static var PhoneNumber: String = tr("phone-number")
	/// 选择地区
	static var ChoosePlace: String = tr("choose-place")
	/// 去登录
	static var GoLogin: String = tr("go-login")
	/// 微信好友
	static var ShareWXFriend: String = tr("share-WX-friend")
	/// 朋友圈
	static var ShareWXTimeline: String = tr("share-WX-timeline")
	/// QQ 好友
	static var ShareQQFriend: String = tr("share-QQ-friend")
	/// QQ 空间
	static var ShareQQZone: String = tr("share-QQ-zone")
	/// 微博
	static var ShareWeibo: String = tr("share-weibo")
	/// 设备未连接，重新连接中...
	static var ConnectFailedReconnecting: String = tr("connect-failed-reconnecting")
	/// 获取设备版本失败
	static var VersionFetchFailed: String = tr("version-fetch-failed")
	/// 未获取到最新固件版本
	static var RemoteVersionFetchFailed: String = tr("remote-version-fetch-failed")
	/// 固件下载失败
	static var FirmwareFetchFailed: String = tr("firmware-fetch-failed")
	/// 进入升级模式失败
	static var EnterDfuFailed: String = tr("enter-dfu-failed")
	/// 未知设备
	static var UnknownDevice: String = tr("unknown-device")
	/// 未找到待升级设备
	static var DfuNotFound: String = tr("dfu-not-found")
	/// 连续心率捕捉，运动陪伴有他，更放心
	static var HRReportAdvertisemt: String = tr("HR-report-advertisemt")
	/// 自动识别深浅睡眠，专业报告让睡眠一眼知晓。
	static var SleepReportAdvertisement: String = tr("sleep-report-advertisement")
	/// 全天记录步数、能量信息，让每一分钟运动更有价值。
	static var SportReportAdvertisement: String = tr("sport-report-advertisement")
	/// 暂无%@数据
	static func DataReportEntryIsNil (values: CVarArg...) -> String {
		return tr("data-report-entry-is-nil", values)
	}
	/// 距腕骨三指宽。
	static var WearContent: String = tr("wear-content")
	/// 分享成功
	static var ShareSuccess: String = tr("share-success")
	/// 分享失败
	static var ShareFailed: String = tr("share-failed")
	/// 短信已发送，请勿重复发送。
	static var AlreadySendAuthCode: String = tr("already-send-auth-code")
	/// 屏幕显示
	static var ScreenDisplay: String = tr("screen-display")
	/// 卡路里
	static var Calories: String = tr("calories")
	/// 屏幕内容
	static var ScreenContent: String = tr("screen-content")
	/// 显示天气
	static var ShowWeather: String = tr("show-weather")
	/// 自动定位
	static var AutoPosition: String = tr("auto-position")
	/// 当前定位城市：%@
	static func CurrentCity (values: CVarArg...) -> String {
		return tr("current-city", values)
	}
	/// 输入城市中文名或拼音
	static var CitySelectTip: String = tr("city-select-tip")
	/// 手动记录
	static var AddFitRecord: String = tr("add-fit-record")
	/// 详情
	static var Details: String = tr("details")
	/// 绑定 bong Fit
	static var BindBongFit: String = tr("bind-bong-fit")
	/// 斤
	static var UnitJin: String = tr("unit-jin")
	/// 千克
	static var UnitKilogram: String = tr("unit-kilogram")
	/// 正常
	static var FitNormal: String = tr("fit-normal")
	/// 暂不绑定
	static var BindLater: String = tr("bind-later")
	/// 请站上秤...
	static var PleaseStandOnFit: String = tr("please-stand-on-fit")
	/// 正在测量...
	static var Measuring: String = tr("measuring")
	/// 设备绑定成功
	static var FitBindSuccess: String = tr("fit-bind-success")
	/// 为了获得体脂等详细身体数据，\n 请脱掉鞋袜、光脚上秤，双脚平稳踩在金属触点上。
	static var FitTip: String = tr("fit-tip")
	/// 绑定手环
	static var BindBandDevice: String = tr("bind-band-device")
	/// 体重报告
	static var FitReport: String = tr("fit-report")
	/// 成员列表
	static var AccountList: String = tr("account-list")
	/// 主账号
	static var MainAccount: String = tr("main-account")
	/// HomeCare
	static var HomeCare: String = tr("home-care")
	/// 支持查看家庭其他成员的身体数据，正确输入对方的 bongID 之后即可获得授权。
	static var HomeCareAlertMessage: String = tr("home-care-alert-message")
	/// APP -【我】-【个人资料】中查看 bongID
	static var HomeCareAlertGuide: String = tr("home-care-alert-guide")
	/// 请输入成员的 bongID
	static var HomeCareAlertPlaceTip1: String = tr("home-care-alert-place-tip1")
	/// 手机号后 4 位
	static var HomeCareAlertPlaceTip2: String = tr("home-care-alert-place-tip2")
	/// 添加亲友
	static var AddHCAccount: String = tr("add-HC-account")
	/// 暂不使用
	static var NotUseNow: String = tr("not-use-now")
	/// 账号不存在或 bongID 错误
	static var AccountNotExistOrBongIDError: String = tr("account-not-exist-or-bongID-error")
	/// 删除
	static var Delete: String = tr("delete")
	/// 编辑
	static var Edit: String = tr("edit")
	/// bongID 或手机号出错，请重试。
	static var RetryToEnter: String = tr("retry-to-enter")
	/// 确认解除与 TA 的账号关联吗？
	static var DeleteHomeCareAccount: String = tr("delete-home-care-account")
	/// 我再想想
	static var DeleteThink: String = tr("delete-think")
	/// 确定解除
	static var DeleteSure: String = tr("delete-sure")
	/// 删除成功
	static var DeleteSuccess: String = tr("delete-success")
	/// 删除失败
	static var DeleteFaild: String = tr("delete-faild")
	/// 添加成功
	static var AddSuccess: String = tr("add-success")
	/// 添加失败
	static var AddFaild: String = tr("add-faild")
	/// 体重报告
	static var FitDataReport: String = tr("fit-data-report")
	/// 体重
	static var Fit: String = tr("fit")
	/// 日均体重
	static var DailyFit: String = tr("daily-fit")
	/// 日均脂肪
	static var DailyFat: String = tr("daily-fat")
	/// 周均体重
	static var WeeklyFit: String = tr("weekly-fit")
	/// 周均脂肪
	static var WeeklyFat: String = tr("weekly-fat")
	/// 月均体重
	static var MonthlyFit: String = tr("monthly-fit")
	/// 月均脂肪
	static var MonthlyFat: String = tr("monthly-fat")
	/// 脂肪：
	static var Fat: String = tr("fat")
	/// 创建新用户
	static var CreateNewUser: String = tr("create-new-user")
	/// 脂肪
	static var FitFat: String = tr("fit-fat")
	/// 基础代谢
	static var Bmr: String = tr("bmr")
	/// 身体年龄
	static var FitBodyAge: String = tr("fit-body-age")
	/// 骨量
	static var Bone: String = tr("bone")
	/// 内脏脂肪
	static var OrganFat: String = tr("organ-fat")
	/// 体水分
	static var Water: String = tr("water")
	/// 肌肉量
	static var Muscle: String = tr("muscle")
	/// 正常
	static var StatusNormal: String = tr("status-normal")
	/// 过轻
	static var StatusLight: String = tr("status-light")
	/// 偏瘦
	static var StatusThin: String = tr("status-thin")
	/// 偏胖
	static var StatusFat1: String = tr("status-fat1")
	/// 肥胖
	static var StatusFat2: String = tr("status-fat2")
	/// 重度肥胖
	static var StatusFat3: String = tr("status-fat3")
	/// 偏低
	static var StatusLess: String = tr("status-less")
	/// 偏高
	static var StatusHeight1: String = tr("status-height1")
	/// 过高
	static var StatusHeight2: String = tr("status-height2")
	/// 不足
	static var StatusLack: String = tr("status-lack")
	/// 标准
	static var StatusStandard: String = tr("status-standard")
	/// 优
	static var StatusWeel: String = tr("status-weel")
	/// 年轻
	static var StatusYoung: String = tr("status-young")
	/// 体重太轻啦~记得多食用脂肪含量高的食物。
	static var BMITip1: String = tr("BMI-tip1")
	/// 体重偏瘦，你可以通过少食多餐或者增肌来改善体重。
	static var BMITip2: String = tr("BMI-tip2")
	/// 体重很标准哦~记得三餐要按时！
	static var BMITip3: String = tr("BMI-tip3")
	/// 体重稍微有点超标啦~注意加强有氧运动来控制体重继续增长哦。
	static var BMITip4: String = tr("BMI-tip4")
	/// 体重超标严重哦！快去设置减肥目标吧，记得每天来称重哦~
	static var BMITip5: String = tr("BMI-tip5")
	/// 体脂率是指人体内脂肪重量在人体总体重中所占的比例，又称体脂百分数，它反映人体内脂肪含量的多少。
	static var FatTip0: String = tr("fat-tip0")
	/// 体脂肪水平偏低，脂肪给身体提供能量，帮助人体吸收维生素。
	static var FatTip1: String = tr("fat-tip1")
	/// 体脂肪水平很健康，注意饮食，继续保持哦~
	static var FatTip2: String = tr("fat-tip2")
	/// 体脂肪水平过高哦，过高的体脂肪率是造成各种慢性疾病的主要导火线。
	static var FatTip3: String = tr("fat-tip3")
	/// 体脂肪水平太高啦！注意控制饮食并且加强健身哦~
	static var FatTip4: String = tr("fat-tip4")
	/// 身体水分占体重的百分比。
	static var WaterTip0: String = tr("water-tip0")
	/// 体水分率过低哦，过低的体水分率有损健康且会提高体脂肪率。
	static var WaterTip1: String = tr("water-tip1")
	/// 水是人体新陈代谢的重要组成成分，一定的体水分有助于加快人体代谢速率。
	static var WaterTip2: String = tr("water-tip2")
	/// 体水分率稍微偏高不会影响健康，但是仍需持续关注。
	static var WaterTip3: String = tr("water-tip3")
	/// 人体体重的成分可分为非脂肪物质与脂肪物质二大部分，肌肉含量是非脂肪物质中去除掉约占体重4%%-6%%的无机质。
	static var MuscleTipEmpty: String = tr("muscle-tip-empty")
	/// 肌肉量偏低哦，平时可以注意补充蛋白质并加强力量训练。
	static var MuscleTip1: String = tr("muscle-tip1")
	/// 不错哦，肌肉量属于正常范围内，继续保持练习吧~
	static var MuscleTip2: String = tr("muscle-tip2")
	/// 哇噻，很优秀的身材~羡煞旁人！
	static var MuscleTip3: String = tr("muscle-tip3")
	/// 单位体积内，骨组织[骨矿物质（钙、磷等）和骨基质（骨胶原、蛋白质、无机盐等等）]含量。
	static var BoneTip0: String = tr("bone-tip0")
	/// 骨量稍微偏低，平时注意补钙和胶原蛋白，否则可能造成骨质疏松。
	static var BoneTip1: String = tr("bone-tip1")
	/// 骨量属于标准区间内，代表你的骨骼健康状况良好。
	static var BoneTip2: String = tr("bone-tip2")
	/// 骨量比例优，骨量的多少和人体骨骼强度密切相关。
	static var BoneTip3: String = tr("bone-tip3")
	/// 在自然温度环境中，恒温动物（比如人）的身体在非活动的状态下，处于消化状态（肠胃充满食物，分解作用大于合成作用），维持生命所需消耗的最低能量。
	static var BMRTip0: String = tr("BMR-tip0")
	/// 基础代谢率偏低哦，平时注意加强运动并且可少食多餐。
	static var BMRTip1: String = tr("BMR-tip1")
	/// 良好的基础代谢是身体健康的重要指标之一。
	static var BMRTip2: String = tr("BMR-tip2")
	/// 基础代谢率处于良好水平，说明你的身体机能年轻，能量消耗大。
	static var BMRTip3: String = tr("BMR-tip3")
	/// 内脏脂肪是人体脂肪的一种，与皮下脂肪不同，主要存在于腹腔内，围绕着人的脏器。
	static var OrganFatTip0: String = tr("organ-fat-tip0")
	/// 标准水平~一定量的内脏脂肪对人的内脏起着支撑、稳定和保护的作用。
	static var OrganFatTip1: String = tr("organ-fat-tip1")
	/// 内脏脂肪含量偏高，建议少食碳水化合物或者每天25分钟快步走。
	static var OrganFatTip2: String = tr("organ-fat-tip2")
	/// 内脏脂肪水平超标了，必须注意营养摄入的均衡，并且加强锻炼。
	static var OrganFatTip3: String = tr("organ-fat-tip3")
	/// 以基础代谢为基础，综合多项身体数据计算得出的数值。
	static var BodyAgeTip0: String = tr("body-age-tip0")
	/// 身体年龄小于实际年龄说明你的身体机能年轻，身体状况良好。
	static var BodyAgeTip1: String = tr("body-age-tip1")
	/// 身体年龄等于实际年龄，继续保持良好的生活习惯哦~
	static var BodyAgeTip2: String = tr("body-age-tip2")
	/// 身体年龄高于实际年龄，可以通过保持良好的生活习惯慢慢改变此项结果。
	static var BodyAgeTip3: String = tr("body-age-tip3")
	/// bong 精灵
	static var BongPet: String = tr("bong-pet")
	/// 步步保
	static var Bububao: String = tr("bububao")
	/// 更多精彩 扫码关注
	static var ShareQRCodeDesc: String = tr("share-QR-code-desc")
	/// 创建用户
	static var FitCreateUser: String = tr("fit-create-user")
	/// 我猜秤上站着
	static var FitGuessStandPeople: String = tr("fit-guess-stand-people")
	/// 体重记录同步给
	static var FitReocrdSync: String = tr("fit-reocrd-sync")
	/// 手动
	static var FitManual: String = tr("fit-manual")
	/// 已同步 %d 条数据
	static func FitSyncRecordCount (values: CVarArg...) -> String {
		return tr("fit-sync-record-count", values)
	}
	/// 请将秤放置于平整而坚硬的地面上，切勿放在地毯上，否则会影响测量的准确度。
	static var FitMeasureTip1: String = tr("fit-measure-tip1")
	/// 本次测量只检测到体重，需要赤脚才能获取更多身体数据哦~
	static var FitMeasureTip2: String = tr("fit-measure-tip2")
	/// 正在称重
	static var FitMeasuring: String = tr("fit-measuring")
	/// 保存体重
	static var FitSaveWeight: String = tr("fit-save-weight")
	/// 再测一次
	static var FitRetry: String = tr("fit-retry")
	/// 请重新上秤测量
	static var FitRetryMeasure: String = tr("fit-retry-measure")
	/// 保存成功
	static var FitSaveSuccess: String = tr("fit-save-success")
	/// 保存体重失败
	static var FitSaveFailed: String = tr("fit-save-failed")
	/// 塑身
	static var FitKeep: String = tr("fit-keep")
	/// 减脂
	static var FitDesc: String = tr("fit-desc")
	/// 增肌
	static var FitInsc: String = tr("fit-insc")
	/// 体重目标
	static var FitWeightTarget: String = tr("fit-weight-target")
	/// 设定目标，让 bong 更好地帮助你记录下其中的每一滴努力
	static var FitTargetTip1: String = tr("fit-target-tip1")
	/// 你开始的体重是?
	static var FitTargetTip2: String = tr("fit-target-tip2")
	/// 你的体重目标是?
	static var FitTargetTip3: String = tr("fit-target-tip3")
	/// 根据你的基本信息，正常体脂范围是
	static var FitTargetTip4: String = tr("fit-target-tip4")
	/// 20%% ~ 26%%
	static var FitTargetTip5: String = tr("fit-target-tip5")
	/// 你当前的体重是?
	static var FitTargetTip6: String = tr("fit-target-tip6")
	/// 开始的体重
	static var FitStartWeight: String = tr("fit-start-weight")
	/// 确认体重目标
	static var FitConfirmTarget: String = tr("fit-confirm-target")
	/// BMI
	static var FitBMI: String = tr("fit-BMI")
	/// 手动记录体重
	static var FitManualWeight: String = tr("fit-manual-weight")
	/// 删除本次体重
	static var FitDeleteRecord: String = tr("fit-delete-record")
	/// 确定要删除本次体重吗？
	static var FitDeleteConfirm: String = tr("fit-delete-confirm")
	/// 添加账号
	static var FitAddAccountTitle: String = tr("fit-add-account-title")
	/// 确定要删除该账号吗？
	static var FitDeleteAccountConfirmTitle: String = tr("fit-delete-account-confirm-title")
	/// 暂无体重数据，请先称量后查看
	static var FitWeightTip1: String = tr("fit-weight-tip1")
	/// 已绑定设备
	static var FitWeightTip2: String = tr("fit-weight-tip2")
	/// 已绑定 bong Fit
	static var FitWeightTip3: String = tr("fit-weight-tip3")
	/// 目前用户共存储了 16 位， 将超出 bong Fit 支持的用户上限，请滑动删除部分不常用的小伙伴吧。
	static var FitWeightTip4: String = tr("fit-weight-tip4")
	/// 目前用户共存储了 12 位， 将超出 bong Fit 支持的用户上限，请删除部分不常用的小伙伴吧。
	static var FitWeightTip5: String = tr("fit-weight-tip5")
	/// 查看结果
	static var FitCheckResult: String = tr("fit-check-result")
	/// 正在检查是否需要更新...
	static var FitCheckUpgradeIfNeed: String = tr("fit-check-upgrade-if-need")
	/// 确定要解绑吗？
	static var FitUnbindTitle: String = tr("fit-unbind-title")
	/// 用户
	static var FitUserTitle: String = tr("fit-user-title")
	/// 身体指标分析
	static var FitBodyAnalysis: String = tr("fit-body-analysis")
	/// 分
	static var FitUintFen: String = tr("fit-uint-fen")
	/// 总成绩
	static var FitTotalScore: String = tr("fit-total-score")
	/// 体重变化
	static var FitWeightRote: String = tr("fit-weight-rote")
	/// BMI 变化
	static var FitBMIRote: String = tr("fit-BMI-rote")
	/// 更改目标
	static var FitChangeTarget: String = tr("fit-change-target")
	/// 目标管理
	static var FitTargetManage: String = tr("fit-target-manage")
	/// 目前体重
	static var FitCurrentWeight: String = tr("fit-current-weight")
	/// 体重趋势
	static var FitTrendTitle: String = tr("fit-trend-title")
	/// 距离目标差距
	static var FitTargteWeightTip1: String = tr("fit-targte-weight-tip1")
	/// 已减去
	static var FitAleardyLose: String = tr("fit-aleardy-lose")
	/// 已增加
	static var FitAleardyAdd: String = tr("fit-aleardy-add")
	/// 设置目标
	static var FitTargteTitle: String = tr("fit-targte-title")
	/// 未设置目标
	static var FitTargteUnTitle: String = tr("fit-targte-un-title")
	/// 未连接
	static var FitUnlinkTitle: String = tr("fit-unlink-title")
	/// 重连中
	static var FitRelinkTitle: String = tr("fit-relink-title")
	/// 未打开蓝牙
	static var FitBluetoothNotOpen: String = tr("fit-bluetooth-not-open")
	/// + 绑定秤
	static var FitBindFitTitle: String = tr("fit-bind-fit-title")
	/// 目标：
	static var FitTargetDes: String = tr("fit-target-des")
	/// 查看体重记录
	static var FitHisRecord: String = tr("fit-his-record")
	/// 无体重记录
	static var FitNoHisRecord: String = tr("fit-no-his-record")
	/// 岁
	static var FitUnitYearsOld: String = tr("fit-unit-years-old")
	/// 年龄
	static var FitAgeTitle: String = tr("fit-age-title")
	/// 添加新设备
	static var PreAddNewDevice: String = tr("pre-add-new-device")
	/// 上称小贴士
	static var FitTipsTitle: String = tr("fit-tips-title")
	/// 我知道了
	static var FitTipsDone: String = tr("fit-tips-done")
	/// 请将称放置于平整而坚硬的地面上，切勿放在地毯上，否则会影响测量准确度。
	static var FitTips1: String = tr("fit-tips-1")
	/// 为了获得体脂等详细身体数据，请脱掉鞋袜、光脚上称，双脚平稳踩在金属触点上。
	static var FitTips2: String = tr("fit-tips-2")
	/// 研习所
	static var DiscoverTitleYxs: String = tr("discover-title-yxs")
	/// 福利社
	static var DiscoverTitleFls: String = tr("discover-title-fls")
	/// 游乐园
	static var DiscoverTitleYly: String = tr("discover-title-yly")
	/// 生活家
	static var DiscoverTitleShj: String = tr("discover-title-shj")
	/// 与迷糊 bong 聊聊天
	static var DiscoverEvalTitle1: String = tr("discover-eval-title1")
	/// 睡前的一万步故事
	static var DiscoverEvalTitle2: String = tr("discover-eval-title2")
	/// 分享
	static var ScreenshotShareTitle: String = tr("screenshot-share-title")
	/// 是否分享给好友？
	static var ScreenshotShareTip: String = tr("screenshot-share-tip")
	/// 点击心仪表盘即可预览
	static var DialTitle: String = tr("dial-title")
	/// 卡路里表盘
	static var DialNameCalorie: String = tr("dial-name-calorie")
	/// 步数表盘
	static var DialNameStep: String = tr("dial-name-step")
	/// 天气表盘
	static var DialNameWeather: String = tr("dial-name-weather")
	/// 围观吧
	static var Community: String = tr("community")
	/// Fit MAC
	static var FitMac: String = tr("fit-mac")
	/// 手势控制
	static var HandControl: String = tr("hand-control")
	/// 睡眠助手
	static var SleepHelper: String = tr("sleep-helper")
	/// 快速启动
	static var QuickStart: String = tr("quick-start")
	/// 运动健康
	static var SportHealth: String = tr("sport-health")
	/// 运动数据
	static var SportData: String = tr("sport-data")
	/// 生活助手
	static var LifeHelp: String = tr("life-help")
	/// 运动
	static var StartSport: String = tr("start-sport")
	/// 付款码
	static var PayCode: String = tr("pay-code")
	/// 手电筒
	static var Flashlight: String = tr("flashlight")
	/// 寻找手机
	static var FindPhone: String = tr("find-phone")
	/// 静音
	static var Mute: String = tr("mute")
	/// 抬腕亮屏
	static var Liftup: String = tr("liftup")
	/// 转腕切换
	static var Filp: String = tr("filp")
	/// 睡眠提醒
	static var SleepReminder: String = tr("sleep-reminder")
	/// 开启消息提醒
	static var OpenNotification: String = tr("open-notification")
	/// 微博
	static var Weibo: String = tr("weibo")
	/// 你可以对手环显示内容进行自定义开关。
	static var ScreenGuide: String = tr("screen-guide")
	/// 设置你想要的快捷功能，长按手环屏幕下端即可唤起它们。（仅设置一项快捷功能时，长按手环屏幕下端将会直接进入此功能）
	static var QuickStartGuide: String = tr("quick-start-guide")
	/// 通过手势控制你可以更自如的对你的手环进行控制，关闭手势控制将有助于提升续航。
	static var GestureGuide: String = tr("gesture-guide")
	/// 打开自动心率测量，全天候记录你的心率曲线。
	static var AutoHeartGuide: String = tr("auto-heart-guide")
	/// 连续坐几个小时的伤害就算连续运动一个小时也难以弥补哦，开启提醒，每小时活动200步+，帮你更健康！
	static var StandReminderGuide: String = tr("stand-reminder-guide")
	/// 打开睡眠提醒我们会关注你的睡眠时间，并在你太晚睡觉时智能的提醒你。（为保证提醒的准确性，在你打开此功能后，我们会收集一段时间的数据后再进行提醒）
	static var SleepReminderGuide: String = tr("sleep-reminder-guide")
	/// 最多支持5组闹钟，你可以通过触摸屏幕停止闹钟振动。
	static var AlarmAlertGuide: String = tr("alarm-alert-guide")
	/// 除闹钟外，手环不再振动并禁用抬腕解锁，你仍然可通过触摸点亮屏幕。
	static var NotNotifictaionGuide: String = tr("not-notifictaion-guide")
	/// 你可以通触摸屏幕停止手环来电提醒。
	static var PhoneGuide: String = tr("phone-guide")
	/// 消息提醒需要蓝牙一直处于连接状态。
	static var NotifictaionGuide: String = tr("notifictaion-guide")
	/// 常规状态监测
	static var NormalMeasure: String = tr("normal-measure")
	/// 运动状态监测
	static var SportMeasure: String = tr("sport-measure")
	/// 每 %d 分钟一次
	static func NormalAutoUnit (values: CVarArg...) -> String {
		return tr("normal-auto-unit", values)
	}
	/// 每 %d 秒一次
	static func SportAutoUnit (values: CVarArg...) -> String {
		return tr("sport-auto-unit", values)
	}
	/// 屏幕亮度
	static var ScreenLight: String = tr("screen-light")
	/// 将条码放入框内，即可自动扫描
	static var ScanCodeTitle: String = tr("scan-code-title")
	/// 寻找条形码？\n请点亮手环屏幕后扫描条码。
	static var ScanCodeTip: String = tr("scan-code-tip")
	/// 选择绑定方式
	static var SelectBindWay: String = tr("select-bind-way")
	/// 扫条码绑定
	static var ScanBindWay: String = tr("scan-bind-way")
	/// 蓝牙配对
	static var BluetoothBindWay: String = tr("bluetooth-bind-way")
	/// 数字表盘
	static var DialTitle1: String = tr("dial-title1")
	/// 指针表盘
	static var DialTitle2: String = tr("dial-title2")
	/// 已配置
	static var AlreadySetting: String = tr("already-setting")
	/// Tips：勿扰时间内将不会提醒; \n来电提醒需要蓝牙一直处于连接状态
	static var PhoneCallTitle: String = tr("phone-call-title")
	/// 开始跑步
	static var StartRun: String = tr("start-run")
	/// 开始骑行
	static var StartRide: String = tr("start-ride")
	/// 继续
	static var FitnessContinue: String = tr("fitness-continue")
	/// 热身心率
	static var BeatsWarmup: String = tr("beats-warmup")
	/// 最佳燃脂
	static var BeatsFatburning: String = tr("beats-fatburning")
	/// 心肺锻炼
	static var BeatsHeartLung: String = tr("beats-heartLung")
	/// 耐力锻炼
	static var BeatsEndurace: String = tr("beats-endurace")
	/// 极限锻炼
	static var BeatsLimitaion: String = tr("beats-limitaion")
	/// 卡路里(大卡)
	static var KcalUnit: String = tr("kcal-unit")
	/// 定位服务或权限出错
	static var LocateError: String = tr("locate-error")
	/// 长按结束
	static var PressToComplete: String = tr("press-to-complete")
	/// 当前信号弱，请调整位置。
	static var GpsStrengthWeak: String = tr("gps-strength-weak")
	/// 轻度运动，耗能极少。用于跑步前的动态热身，跑步后的放松活动。
	static var BeatsWarmupPrompt: String = tr("beats-warmup-prompt")
	/// 最佳燃脂区间，身体以脂肪代谢为主，保持住哦~
	static var BeatsFatburningPrompt: String = tr("beats-fatburning-prompt")
	/// 中度有氧锻炼区间，身体糖原代谢比例增大，可以有效提高心肺能力。
	static var BeatsHeartLungPrompt: String = tr("beats-heartLung-prompt")
	/// 强度较大，用于训练身体提高乳酸耐受性，持续时间不宜过长，请及时降低强度。
	static var BeatsEnduracePrompt: String = tr("beats-endurace-prompt")
	/// 无氧代谢区间，能够锻炼绝对速度能力，但同时会给心脏带来较大负担，持续时间不宜过长。
	static var BeatsLimitationPrompt: String = tr("beats-limitation-prompt")
	/// 有系统升级
	static var HasNewVersion: String = tr("has-new-version")
	/// 群组
	static var Group: String = tr("group")
	/// 搜索群 ID
	static var GroupSearchId: String = tr("group-search-id")
	/// 我的群组
	static var GroupMy: String = tr("group-my")
	/// 推荐群组
	static var GroupRecommend: String = tr("group-recommend")
	/// 该群组不存在
	static var GroupNonExist: String = tr("group-non-exist")
	/// 全部
	static var GroupOpen: String = tr("group-open")
	/// 收起
	static var GroupClose: String = tr("group-close")
	/// 人
	static var GroupPersonUnit: String = tr("group-person-unit")
	/// 无法识别二维码或该群不存在
	static var GroupUnRecognition: String = tr("group-un-recognition")
	/// 上传群组头像
	static var GroupUploadAvatar: String = tr("group-upload-avatar")
	/// 群名称
	static var GroupName: String = tr("group-name")
	/// 创建后不能修改
	static var GroupNamePrompt: String = tr("group-name-prompt")
	/// 一句最能代表该群气质的话
	static var GroupIntroduceSentence: String = tr("group-introduce-sentence")
	/// 群介绍
	static var GroupIntroduce: String = tr("group-introduce")
	/// 不超过 40 个字
	static var GroupDescriLimit: String = tr("group-descri-limit")
	/// 官方
	static var GroupOfficial: String = tr("group-official")
	/// 将二维码放入框内，即可自动扫描。
	static var QrScanTip: String = tr("qr-scan-tip")
	/// 群位置
	static var GroupLocationPoi: String = tr("group-location-poi")
	/// 无法定位成功\n请到设置页面更改设置
	static var GroupLocationFailure: String = tr("group-location-failure")
	/// 创建群(1/2)
	static var GroupCreateFirst: String = tr("group-create-first")
	/// 创建群(2/2)
	static var GroupCreateSecond: String = tr("group-create-second")
	/// 群位置
	static var GroupLocation: String = tr("group-location")
	/// 群标签
	static var GroupLabel: String = tr("group-label")
	/// 请选择至少一个群标签
	static var GroupSelectLabels: String = tr("group-select-labels")
	/// 加群身份验证
	static var GroupVerify: String = tr("group-verify")
	/// 创建
	static var GroupCreate: String = tr("group-create")
	/// 是否放弃建群
	static var GroupCreateGiveup: String = tr("group-create-giveup")
	/// 群名称已存在
	static var GroupNameExist: String = tr("group-name-exist")
	/// 群名称不能为空
	static var GroupNameEmpty: String = tr("group-name-empty")
	/// 群昵称不能为空
	static var GroupUsernameEmpty: String = tr("group-username-empty")
	/// 创建失败，请重试...
	static var GroupCrateFailure: String = tr("group-crate-failure")
	/// 创建成功！
	static var GroupCreateSuccess: String = tr("group-create-success")
	/// 群ID %@
	static func GroupId (values: CVarArg...) -> String {
		return tr("group-id", values)
	}
	/// 分享好友
	static var GroupShare: String = tr("group-share")
	/// 我在这里，扫码入群！
	static var GroupImHere: String = tr("group-im-here")
	/// 退出群
	static var GroupExit: String = tr("group-exit")
	/// 确定退出该群吗？
	static var GroupExitTip: String = tr("group-exit-tip")
	/// 退出失败，请检查网络连接
	static var GroupExitFailed: String = tr("group-exit-failed")
	/// 群设置
	static var GroupSetting: String = tr("group-setting")
	/// 跑步
	static var GroupTypeRun: String = tr("group-type-run")
	/// 健身
	static var GroupTypeFintness: String = tr("group-type-fintness")
	/// 计步
	static var GroupTypeStep: String = tr("group-type-step")
	/// 骑车
	static var GroupTypeRide: String = tr("group-type-ride")
	/// 篮球
	static var GroupTypeBasketball: String = tr("group-type-basketball")
	/// 羽毛球
	static var GroupTypeBadminton: String = tr("group-type-badminton")
	/// 游泳
	static var GroupTypeSwimming: String = tr("group-type-swimming")
	/// 足球
	static var GroupTypeFootball: String = tr("group-type-football")
	/// 台球
	static var GroupTypeBilliards: String = tr("group-type-billiards")
	/// 爬山
	static var GroupTypeHiking: String = tr("group-type-hiking")
	/// 跳舞
	static var GroupTypeDance: String = tr("group-type-dance")
	/// 瑜伽
	static var GroupTypeYoga: String = tr("group-type-yoga")
	/// 逛街
	static var GroupTypeShopping: String = tr("group-type-shopping")
	/// 野营
	static var GroupTypeCamping: String = tr("group-type-camping")
	/// 旅行
	static var GroupTypeTravel: String = tr("group-type-travel")
	/// 自驾游
	static var GroupTypeDriving: String = tr("group-type-driving")
	/// 其他
	static var GroupTypeOther: String = tr("group-type-other")
	/// 标签选择不能超过三个
	static var GroupLabelCount: String = tr("group-label-count")
	/// 拒绝
	static var Refuse: String = tr("refuse")
	/// 你还没有群，请创建
	static var GroupEmptyTip: String = tr("group-empty-tip")
	/// 修改成功
	static var GroupSuccessTip: String = tr("group-success-tip")
	/// 修改失败
	static var GroupFailedTip: String = tr("group-failed-tip")
	/// 确定要把群转让给 %@ 吗？
	static func GroupTransferTip (values: CVarArg...) -> String {
		return tr("group-transfer-tip", values)
	}
	/// 转让成功
	static var GroupTransferSuccess: String = tr("group-transfer-success")
	/// 转让失败
	static var GroupTransferFailed: String = tr("group-transfer-failed")
	/// 确定要把 %@ 移除群吗？
	static func GroupRemoveMemberTip (values: CVarArg...) -> String {
		return tr("group-remove-member-tip", values)
	}
	///   群成员
	static var GroupMember: String = tr("group-member")
	/// 搜索群成员
	static var GroupMemberSearch: String = tr("group-member-search")
	/// 新申请成员
	static var GroupNewMember: String = tr("group-new-member")
	/// 暂无新申请成员
	static var GroupNoNewMember: String = tr("group-no-new-member")
	/// 未设置
	static var GroupUnTitle: String = tr("group-un-title")
	/// 群公告
	static var GAnnouncement: String = tr("GAnnouncement")
	/// 群昵称
	static var GUserName: String = tr("GUserName")
	/// 群成员管理
	static var GUserManage: String = tr("GUserManage")
	/// 转让群组
	static var GTransfer: String = tr("GTransfer")
	/// 成员列表
	static var GUserList: String = tr("GUserList")
	/// 加群身份验证
	static var GAuth: String = tr("GAuth")
	/// 群头像
	static var GAvatar: String = tr("GAvatar")
	/// 转让
	static var Transfer: String = tr("Transfer")
	/// 说明
	static var GroupInstructionsTitle: String = tr("group-instructions-title")
	/// 群主页
	static var GroupMainTitle: String = tr("group-main-title")
	/// 跑步训练
	static var RunningTraining: String = tr("running-training")
	/// 查看全部训练
	static var RunningTrainingRecord: String = tr("running-training-record")
	/// 训练记录
	static var RunningTrainingRecordTitle: String = tr("running-training-record-title")
	/// 训练记录（失败）
	static var RunningTrainingRecordTitleF: String = tr("running-training-record-title-f")
	/// 已达成至
	static var RunningTrainingLevel1: String = tr("running-training-level1")
	/// ，继续加油。
	static var RunningTrainingLevel2: String = tr("running-training-level2")
	/// 金字塔训练
	static var RunningTrainingPyramid: String = tr("running-training-pyramid")
	/// 金字塔速度间隔跑步训练法，是 bong 独创的手环陪伴式跑步训练方案。
	static var RunningTrainingIntroduceTitle: String = tr("running-training-introduce-title")
	/// 灵感始于经典的金字塔速度间隔法，在宛如跑上跑下一个金字塔的间歇式运动过程中，关注时间的同时你会觉得时间流逝。我们创造性的针对跑步初学者至高级跑者进行了精细化的 Level 区分设计，充分发挥了手环机能，做到完美的实时指导与提示的同时也更好的做到了运动损伤的避免，助你跑的更安全跑的更高效。
	static var RunningTrainingIntroduceContent: String = tr("running-training-introduce-content")
	/// 查看训练内容
	static var RunningTrainingBrowseContent: String = tr("running-training-browse-content")
	/// 训练后记得进行拉伸，拉伸能缓解运动带来的肌肉紧张，减少酸痛感。
	static var RunningTrainingTip: String = tr("running-training-tip")
	/// 建议速度
	static var RunningAdviceSpeed: String = tr("running-advice-speed")
	/// 实际速度
	static var RunningActualSpeed: String = tr("running-actual-speed")
	/// 正式训练
	static var RunningTrainingFormal: String = tr("running-training-formal")
	/// 轻松速度
	static var EasySpeed: String = tr("easy-speed")
	/// 快走
	static var BriskWalking: String = tr("brisk-walking")
	/// 慢跑
	static var Jogging: String = tr("jogging")
	/// LV%d 未解锁
	static func RunningTrainingUnlockTip1 (values: CVarArg...) -> String {
		return tr("running-training-unlock-tip1", values)
	}
	/// ，请完成 LV%d 解锁等级
	static func RunningTrainingUnlockTip2 (values: CVarArg...) -> String {
		return tr("running-training-unlock-tip2", values)
	}
	///   跑步训练分 8 个阶段，已完成 %d 个阶段
	static func RunningTrainingFinishTip (values: CVarArg...) -> String {
		return tr("running-training-finish-tip", values)
	}
	///  已完成
	static var RunningTrainingDone: String = tr("running-training-done")
	///  未训练
	static var RunningTrainingUnto: String = tr("running-training-unto")
	/// 加载中。。。
	static var DataLoading: String = tr("data-loading")
	/// 没有更多数据
	static var NotHaveMoreData: String = tr("not-have-more-data")
	/// 精准的位置有助于身边的朋友更容易发现你
	static var GroupLocationPrompt: String = tr("group-location-prompt")
	/// 选择群组类型，发现更多志同道合的伙伴
	static var GroupLabelsPrompt: String = tr("group-labels-prompt")
	/// 不能超过 15 字
	static var GroupNameLimit: String = tr("group-name-limit")
	/// 暂无群成员
	static var EmptyMemberData: String = tr("empty-member-data")
	/// 暂无新成员申请加入
	static var ApplyEmptyData: String = tr("apply-empty-data")
	/// 暂无群成员可转让
	static var TransferEmptyData: String = tr("transfer-empty-data")
	/// 不能超过 100 字
	static var GroupAnnounceLimit: String = tr("group-announce-limit")
	/// 发现新版本
	static var BongAppStoreUpdatedTitle: String = tr("bong-app-store-updated-title")
	/// bong App Store V%@ 更新啦，赶快体验下载吧!
	static func BongAppStoreUpdatedMessage (values: CVarArg...) -> String {
		return tr("bong-app-store-updated-message", values)
	}
}
