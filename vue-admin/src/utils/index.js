const flag = 'getComputedStyle' in window

export function parseTime (time, cFormat) {
  if (arguments.length === 0) {
    return null
  }
  const format = cFormat || '{y}-{m}-{d} {h}:{i}:{s}'
  let date
  if (typeof time === 'object') {
    date = time
  } else {
    if (('' + time).length === 10) time = parseInt(time) * 1000
    date = new Date(time)
  }
  const formatObj = {
    y: date.getFullYear(),
    m: date.getMonth() + 1,
    d: date.getDate(),
    h: date.getHours(),
    i: date.getMinutes(),
    s: date.getSeconds(),
    a: date.getDay()
  }
  const timeStr = format.replace(/{(y|m|d|h|i|s|a)+}/g, (result, key) => {
    let value = formatObj[key]
    if (key === 'a') return ['一', '二', '三', '四', '五', '六', '日'][value - 1]
    if (result.length > 0 && value < 10) {
      value = '0' + value
    }
    return value || 0
  })
  return timeStr
}

export function formatTime (time, option) {
  time = +time * 1000
  const d = new Date(time)
  const now = Date.now()

  const diff = (now - d) / 1000

  if (diff < 30) {
    return '刚刚'
  } else if (diff < 3600) { // less 1 hour
    return Math.ceil(diff / 60) + '分钟前'
  } else if (diff < 3600 * 24) {
    return Math.ceil(diff / 3600) + '小时前'
  } else if (diff < 3600 * 24 * 2) {
    return '1天前'
  }
  if (option) {
    return parseTime(time, option)
  }
  return d.getMonth() + 1 + '月' + d.getDate() + '日' + d.getHours() + '时' + d.getMinutes() + '分'
}

export function param2Obj (url) {
  const search = url.split('?')[1]
  if (!search) {
    return {}
  }
  return JSON.parse('{"' + decodeURIComponent(search).replace(/"/g, '\\"').replace(/&/g, '","').replace(/=/g, '":"') + '"}')
}

/**
 * 动态插入css
 */
export const loadStyle = url => {
  const link = document.createElement('link')
  link.type = 'text/css'
  link.rel = 'stylesheet'
  link.href = url
  const head = document.getElementsByTagName('head')[0]
  head.appendChild(link)
}

/**
 * 设置浏览器头部标题
 */
export const setTitle = function (title) {
  title = title ? `${title}` : 'NxAdmin'
  window.document.title = title + '-nxAdmin'
}

// 把类数组集合转换为数组
export function listToArray (likeAry) {
  if (flag) {
    return Array.prototype.slice.call(likeAry, 0)
  }
  var ary = []
  for (var i = 0; i < likeAry.length; i++) {
    ary[ary.length] = likeAry[i]
  }
  return ary
}

/**
 * DOM元素操作函数封装
 */

// 获取上一个兄弟元素
export function prev (curEle) {
  if (flag) { // IE6~8的情况
    return curEle.previousElementSibling
  }
  let pre = curEle.previousSibling
  while (pre && pre.nodeType !== 1) {
    pre = pre.previousSibling
  }
  return pre
}

// 获取下一个兄弟元素
export function next (curEle) {
  if (flag) { // IE6~8的情况
    return curEle.nextElementSibling
  }
  let nex = curEle.nextSibling
  while (nex && nex.nodeType !== 1) {
    nex = nex.nextSibling
  }
  return nex
}

// 获取当前元素前面的所有兄弟元素
export function prevAll (curEle) {
  const ary = []
  let pre = prev(curEle)
  while (pre) {
    ary.unshift(pre)
    pre = prev(pre)
  }
  return ary
}

// 获取当前元素后面的所有兄弟元素
export function nextAll (curEle) {
  const ary = []
  let nex = next(curEle)
  while (nex) {
    ary.push(nex)
    nex = next(nex)
  }
  return ary
}

// 获取相邻的两个元素节点
export function sibling (curEle) {
  const pre = prev(curEle)
  const nex = next(curEle)
  const ary = []
  if (pre) ary.push(pre)
  if (nex) ary.push(nex)
  return ary
}

// 获取所有的兄弟元素节点
export function siblings (curEle) {
  return prevAll(curEle).concat(nextAll(curEle))
}

// 获取当前元素的索引
export function index (curEle) {
  return prevAll(curEle).length
}

// 获取指定匹配标签的所有子元素
export function children (curEle, tagName) {
  var ary = []
  if (!flag) {
    var nodeList = curEle.childNodes
    for (var i = 0, len = nodeList.length; i < len; i++) {
      var curNode = nodeList[i]
      if (curNode.nodeType === 1) ary[ary.length] = curNode
    }
    nodeList = null
  } else {
    ary = listToArray(curEle.children)
  }
  if (typeof tagName === 'string') {
    for (var k = 0; k < ary.length; k++) {
      var curEleNode = ary[k]
      if (curEleNode.nodeName.toLowerCase() !== tagName.toLowerCase()) {
        ary.splice(k, 1)
        k--
      }
    }
  }
  return ary
}

// 获取第一个元素子节点
export function firstChild (curEle) {
  const chs = children(curEle)
  return chs.length > 0 ? chs[0] : null
}

// 获取最后一个元素子节点
export function lastChild (curEle) {
  const chs = children(curEle)
  return chs.length > 0 ? chs[chs.length - 1] : null
}

// 验证当前元素中是否包含className这个样式类名
export function hasClass (curEle, className) {
  var reg = new RegExp('(^| +)' + className + '( +|$)')
  return reg.test(curEle.className)
}

/**
 * 函数防抖 (只执行最后一次点击)
 * @param {*} fn
 * @param {*} delay
 * @returns {Function}
 * @constructor
 */
export const Debounce = (fn, t) => {
  let delay = t || 500
  let timer
  /* eslint-disable no-console */
  // console.log(fn)
  // console.log(typeof fn)
  return function () {
    let args = arguments
    if (timer) {
      clearTimeout(timer)
    }
    timer = setTimeout(() => {
      timer = null
      fn.apply(this, args)
    }, delay)
  }
}

/**
* 函数节流
* @param fn
* @param interval
* @returns {Function}
* @constructor
*/
export const Throttle = (fn, t) => {
  let last
  let timer
  let interval = t || 500
  return function () {
    let args = arguments
    let now = +new Date()
    if (last && now - last < interval) {
      clearTimeout(timer)
      timer = setTimeout(() => {
        last = now
        fn.apply(this, args)
      }, interval)
    } else {
      last = now
      fn.apply(this, args)
    }
  }
}
