import request from '@/utils/request'

// 查询币种管理列表
export function listCointype(query) {
  return request({
    url: '/tron/cointype/list',
    method: 'get',
    params: query
  })
}

// 查询币种管理详细
export function getCointype(id) {
  return request({
    url: '/tron/cointype/' + id,
    method: 'get'
  })
}

// 新增币种管理
export function addCointype(data) {
  return request({
    url: '/tron/cointype',
    method: 'post',
    data: data
  })
}

// 修改币种管理
export function updateCointype(data) {
  return request({
    url: '/tron/cointype',
    method: 'put',
    data: data
  })
}

// 删除币种管理
export function delCointype(id) {
  return request({
    url: '/tron/cointype/' + id,
    method: 'delete'
  })
}

// 导出币种管理
export function exportCointype(query) {
  return request({
    url: '/tron/cointype/export',
    method: 'get',
    params: query
  })
}