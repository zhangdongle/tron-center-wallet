import request from '@/utils/request'

// 查询消耗记录列表
export function listConsume(query) {
  return request({
    url: '/tron/consume/list',
    method: 'get',
    params: query
  })
}

// 查询消耗记录详细
export function getConsume(id) {
  return request({
    url: '/tron/consume/' + id,
    method: 'get'
  })
}

// 新增消耗记录
export function addConsume(data) {
  return request({
    url: '/tron/consume',
    method: 'post',
    data: data
  })
}

// 修改消耗记录
export function updateConsume(data) {
  return request({
    url: '/tron/consume',
    method: 'put',
    data: data
  })
}

// 删除消耗记录
export function delConsume(id) {
  return request({
    url: '/tron/consume/' + id,
    method: 'delete'
  })
}

// 导出消耗记录
export function exportConsume(query) {
  return request({
    url: '/tron/consume/export',
    method: 'get',
    params: query
  })
}