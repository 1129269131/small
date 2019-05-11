import { Debounce } from '@/utils'

// 原理：通过对元素添加一层html来监听该html的resize,实现对当前元素的宽度监听
var EleResize = {
  _handleResize: function (e) {
    var ele = e.target || e.srcElement
    // 获取触发器元素
    var trigger = ele.__resizeTrigger__
    // 判断触发器元素是否为空
    if (trigger) {
      // 获取该触发器的监听器列表
      var handlers = trigger.__z_resizeListeners
      // 判断监听器列表是否为空
      if (handlers) {
        var size = handlers.length
        for (var i = 0; i < size; i++) { // 遍历监听器列表，按数组下标顺序执行监听函数
          var h = handlers[i]
          var handler = h.handler
          var context = h.context
          handler.apply(context, [e])
        }
      }
    }
  },
  // 移除监听器
  _removeHandler: function (ele, handler, context) {
    var handlers = ele.__z_resizeListeners // 获取监听器列表
    if (handlers) { // 判断监听器列表是否为空
      var size = handlers.length
      for (var i = 0; i < size; i++) { // 遍历监听器列表，移除对应监听器
        var h = handlers[i]
        if (h.handler === handler && h.context === context) {
          handlers.splice(i, 1)
          return
        }
      }
    }
  },
  // 生成resize触发器元素
  _createResizeTrigger: function (ele) {
    var obj = document.createElement('object')
    obj.setAttribute('style',
      'display: block; position: absolute; top: 0; left: 0; height: 100%; width: 100%; overflow: hidden;opacity: 0; pointer-events: none; z-index: -1;')
    obj.onload = EleResize._handleObjectLoad // 设置object元素的onload事件
    obj.type = 'text/html'
    ele.appendChild(obj) // 插入到需要监听resize的元素中
    obj.data = 'about:blank'
    return obj
  },
  // 触发器元素onload事件
  _handleObjectLoad: function (evt) {
    this.contentDocument.defaultView.__resizeTrigger__ = this.__resizeElement__
    this.contentDocument.defaultView.addEventListener('resize', Debounce(EleResize._handleResize))
  }
}
if (document.attachEvent) { // 处理低版本ie ie9-10
  // 绑定resize
  EleResize.on = function (ele, handler, context) {
    var handlers = ele.__z_resizeListeners
    if (!handlers) {
      handlers = []
      ele.__z_resizeListeners = handlers
      ele.__resizeTrigger__ = ele
      ele.attachEvent('onresize', Debounce(EleResize._handleResize))
    }
    handlers.push({
      handler: handler,
      context: context
    })
  }
  EleResize.off = function (ele, handler, context) {
    var handlers = ele.__z_resizeListeners
    if (handlers) {
      EleResize._removeHandler(ele, handler, context)
      if (handlers.length === 0) {
        ele.detachEvent('onresize', EleResize._handleResize)
        delete ele.__z_resizeListeners
      }
    }
  }
} else {
  // 绑定resize
  EleResize.on = function (ele, handler, context) {
    var handlers = ele.__z_resizeListeners
    // 判断是否已有resize监听器
    if (!handlers) { // 如果没有监听器
      handlers = [] // 初始化监听器
      ele.__z_resizeListeners = handlers

      // 判断当前元素是否未设置position(插入的object元素是absolute定位)
      if (getComputedStyle(ele, null).position === 'static') {
        ele.style.position = 'relative'
      }
      // 创建并插入object元素
      var obj = EleResize._createResizeTrigger(ele)
      // 设置当前元素resize触发器
      ele.__resizeTrigger__ = obj
      obj.__resizeElement__ = ele
    }
    // 添加触发器
    handlers.push({
      handler: handler,
      context: context
    })
  }
  // 解绑resize
  EleResize.off = function (ele, handler, context) {
    // 获取监听器列表
    var handlers = ele.__z_resizeListeners
    // 若监听器列表不为空
    if (handlers) {
      // 删除监听器
      EleResize._removeHandler(ele, handler, context)
      // 判断监听器列表是否为空
      if (handlers.length === 0) {
        // 获取触发器
        var trigger = ele.__resizeTrigger__
        // 若触发器存在
        if (trigger) {
          // 移除该触发器中绑定的resize事件
          trigger.contentDocument.defaultView.removeEventListener('resize', EleResize._handleResize)
          // 移除该触发器元素
          ele.removeChild(trigger)
          // 移除触发器
          delete ele.__resizeTrigger__
        }
        // 移除监听器
        delete ele.__z_resizeListeners
      }
    }
  }
}
export { EleResize }
