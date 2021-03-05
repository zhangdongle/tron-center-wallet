import request from '@/utils/request'

// 查询系统地址列表
export function listSysaddress(query) {
  return request({
    url: '/tron/sysaddress/list',
    method: 'get',
    params: query
  })
}

// 查询系统地址详细
export function getSysaddress(id) {
  return request({
    url: '/tron/sysaddress/' + id,
    method: 'get'
  })
}

// 新增系统地址
export function addSysaddress(data) {
  return request({
    url: '/tron/sysaddress',
    method: 'post',
    data: data
  })
}

// 修改系统地址
export function updateSysaddress(data) {
  return request({
    url: '/tron/sysaddress',
    method: 'put',
    data: data
  })
}

// 删除系统地址
export function delSysaddress(id) {
  return request({
    url: '/tron/sysaddress/' + id,
    method: 'delete'
  })
}

// 导出系统地址
export function exportSysaddress(query) {
  return request({
    url: '/tron/sysaddress/export',
    method: 'get',
    params: query
  })
}