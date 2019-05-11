export function getWeekdayByDate (value, splitStr) {
  let arr = value.split(splitStr)
  let weekday = ['星期日', '星期一', '星期二', '星期三', '星期四', '星期五', '星期六']
  if (arr.length === 3) {
    return weekday[new Date(arr[0], arr[1], arr[2]).getDay()]
  } else {
    return ''
  }
}

export function renderSize (value) {
  if (value == null || value === '') {
    return '0 Bytes'
  }
  let unitArr = ['B', 'KB', 'MB', 'GB', 'TB', 'PB', 'EB', 'ZB', 'YB']
  let index = 0
  let srcsize = parseFloat(value)
  index = Math.floor(Math.log(srcsize) / Math.log(1024))
  let size = Math.round(srcsize / Math.pow(1024, index))
  // size = size.toFixed(2);//保留的小数位数
  return size + unitArr[index]
}

export function array2String (array) {
  return array.length === 1 ? array[0] : array.join(' ')
}
