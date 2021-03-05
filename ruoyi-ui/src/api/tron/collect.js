import request from '@/utils/request'

// 查询归集记录列表
export function listCollect(query) {
  return request({
    url: '/tron/collect/list',
    method: 'get',
    params: query
  })
}

// 查询归集记录详细
export function getCollect(id) {
  return request({
    url: '/tron/collect/' + id,
    method: 'get'
  })
}

// 新增归集记录
export function addCollect(data) {
  return request({
    url: '/tron/collect',
    method: 'post',
    data: data
  })
}

// 修改归集记录
export function updateCollect(data) {
  return request({
    url: '/tron/collect',
    method: 'put',
    data: data
  })
}

// 删除归集记录
export function delCollect(id) {
  return request({
    url: '/tron/collect/' + id,
    method: 'delete'
  })
}

// 导出归集记录
export function exportCollect(query) {
  return request({
    url: '/tron/collect/export',
    method: 'get',
    params: query
  })
}