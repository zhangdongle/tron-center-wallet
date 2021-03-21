import request from '@/utils/request'

// 查询地址管理列表
export function listAddress(query) {
  return request({
    url: '/tron/address/list',
    method: 'get',
    params: query
  })
}

// 查询地址管理详细
export function getAddress(id) {
  return request({
    url: '/tron/address/' + id,
    method: 'get'
  })
}

// 新增地址管理
export function addAddress(data) {
  return request({
    url: '/tron/address',
    method: 'post',
    data: data
  })
}

// 修改地址管理
export function updateAddress(data) {
  return request({
    url: '/tron/address',
    method: 'put',
    data: data
  })
}

// 删除地址管理
export function delAddress(id) {
  return request({
    url: '/tron/address/' + id,
    method: 'delete'
  })
}

// 导出地址管理
export function exportAddress(query) {
  return request({
    url: '/tron/address/export',
    method: 'get',
    params: query
  })
}

// 自动生成地址
export function genAddress(data){
  return request({
    url: '/api/tron/address',
    method: 'post',
    data: data
  })
}