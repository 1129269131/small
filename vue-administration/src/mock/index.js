import Mock from 'mockjs'
import LoginAPI from './login'
import TrackAPI from './track'

// 设置全局延迟，没有延迟的话有时候会检测不到数据变化，建议保留
Mock.setup({
  timeout: '300-600'
})

// 登录相关
Mock.mock(/\/user\/login/, 'post', LoginAPI.LoginByUsername)
Mock.mock(/\/user\/logout/, 'post', LoginAPI.Logout)
Mock.mock(/\/user\/info\.*/, 'get', LoginAPI.GetUserInfo)
Mock.mock(/\/track\/list/, 'post', TrackAPI.GetTrackList)

export default Mock
