import request from '@/utils/request'

// 查询冻结解冻记录列表
export function listUnfreeze(query) {
  return request({
    url: '/tron/unfreeze/list',
    method: 'get',
    params: query
  })
}

// 查询冻结解冻记录详细
export function getUnfreeze(id) {
  return request({
    url: '/tron/unfreeze/' + id,
    method: 'get'
  })
}

// 新增冻结解冻记录
export function addUnfreeze(data) {
  return request({
    url: '/tron/unfreeze',
    method: 'post',
    data: data
  })
}

// 修改冻结解冻记录
export function updateUnfreeze(data) {
  return request({
    url: '/tron/unfreeze',
    method: 'put',
    data: data
  })
}

// 删除冻结解冻记录
export function delUnfreeze(id) {
  return request({
    url: '/tron/unfreeze/' + id,
    method: 'delete'
  })
}

// 导出冻结解冻记录
export function exportUnfreeze(query) {
  return request({
    url: '/tron/unfreeze/export',
    method: 'get',
    params: query
  })
}