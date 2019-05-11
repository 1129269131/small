import { getToken, setToken, removeToken } from '@/utils/auth'
import { login, getUserInfo } from '@/api/login'

const user = {
  state: {
    token: getToken(),
    userInfo: null,
    isLock: false
  },
  mutations: {
    SET_TOKEN: function (state, token) {
      state.token = token
    },
    SET_USER_INFO: function (state, userInfo) {
      state.userInfo = userInfo
    }
  },
  actions: {
    Login ({ commit }, userInfo) {
      const username = userInfo.username.trim()
      return new Promise((resolve, reject) => {
        login(username, userInfo.password).then(response => {
          const data = response
          setToken(data.token)
          commit('SET_TOKEN', data.token)
          resolve()
        }).catch(error => {
          reject(error)
        })
      })
    },

    // 获取用户基本信息
    GetUserInfo ({ commit, state }) {
      return new Promise((resolve, reject) => {
        getUserInfo(state.token).then(response => {
          const data = response
          commit('SET_USER_INFO', data)
          resolve(response)
        }).catch(error => {
          reject(error)
        })
      })
    },

    // 前端登出
    FedLogOut ({ commit }) {
      return new Promise(resolve => {
        commit('SET_TOKEN', '')
        removeToken()
        resolve()
      })
    }
  }
}

export default user
