import request from '@/utils/request'

// 查询波场链上交互信息列表
export function listChain(query) {
  return request({
    url: '/tron/chain/list',
    method: 'get',
    params: query
  })
}

// 查询波场链上交互信息详细
export function getChain(id) {
  return request({
    url: '/tron/chain/' + id,
    method: 'get'
  })
}

// 新增波场链上交互信息
export function addChain(data) {
  return request({
    url: '/tron/chain',
    method: 'post',
    data: data
  })
}

// 修改波场链上交互信息
export function updateChain(data) {
  return request({
    url: '/tron/chain',
    method: 'put',
    data: data
  })
}

// 删除波场链上交互信息
export function delChain(id) {
  return request({
    url: '/tron/chain/' + id,
    method: 'delete'
  })
}

// 导出波场链上交互信息
export function exportChain(query) {
  return request({
    url: '/tron/chain/export',
    method: 'get',
    params: query
  })
}