var textArea

// 判断是不是ios端
function isOS () {
  return navigator.userAgent.match(/ipad|iphone/i)
}

// 创建文本元素
function createTextArea (text) {
  textArea = document.createElement('textArea')
  // textArea.style.display = 'none' // TODO
  textArea.value = text
  document.body.appendChild(textArea)
}

// 选择内容
function selectText () {
  var range,
    selection

  if (isOS()) {
    range = document.createRange()
    range.selectNodeContents(textArea)
    selection = window.getSelection()
    selection.removeAllRanges()
    selection.addRange(range)
    textArea.setSelectionRange(0, 999999)
  } else {
    textArea.select()
  }
}

// 复制到剪贴板
function copyToClipboard (success, fail, error) {
  try {
    if (document.execCommand('Copy')) {
      success && success()
    } else {
      fail && fail()
    }
  } catch (err) {
    error && error(err)
  }
  document.body.removeChild(textArea)
}

export function copy (text, success, fail, error) {
  createTextArea(text)
  selectText()
  copyToClipboard(success, fail, error)
}
