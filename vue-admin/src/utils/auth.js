// import Cookies from 'js-cookie'

const TokenKey = 'access-token'

// export function getToken () {
//   return Cookies.get(TokenKey)
// }

// export function setToken (token) {
//   return Cookies.set(TokenKey, token)
// }

// export function removeToken () {
//   return Cookies.remove(TokenKey)
// }

// localStorage缓存token
/**
 * 获取接口Token
 */
export function getToken () {
  return localStorage.getItem(TokenKey)
}

/**
 * 保存接口Token
 * @param {String} token Token值
 */
export function setToken (token) {
  return localStorage.setItem(TokenKey, token)
}

/**
 * 清除接口Token
 */
export function removeToken () {
  return localStorage.removeItem(TokenKey)
}

// 验证路由权限，获取用户路由列表
export function getUserRoutes (routes, permission) {
  var list = []
  for (const route of routes) {
    if (route.meta) {
      let obj
      let menuObj = searchForPermission(route.name, permission)
      // console.log(menuObj, ((route.meta.authentication === undefined || route.meta.authentication) && menuObj))
      if (((route.meta.authentication === undefined || route.meta.authentication) && menuObj) || route.meta.authentication === false) {
        obj = {};
        ({ name: obj.name, path: obj.path, component: obj.component, meta: obj.meta } = route)
        obj.meta.access = menuObj ? !!menuObj.access : true
        if (route.redirect) obj.redirect = route.redirect
      }
      if (route.children && route.children.length > 0) {
        var children = getUserRoutes(route.children, permission)
        if (children.length > 0) {
          obj.children = children
        }
      }
      if (obj) list.push(obj)
    }
  }

  return list
}

// 检验路由权限
export function searchForPermission (name, permission) {
  var obj
  for (const item of permission) {
    if (item.name === name) {
      obj = {}
      obj.name = name
      obj.access = item.access
      return obj
    } else if (item.subMenu && item.subMenu.length > 0) {
      obj = searchForPermission(name, item.subMenu)
      if (obj) return obj
    }
  }
  return obj
}
