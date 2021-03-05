import request from '@/utils/request'

// 查询提现记录列表
export function listWithdraw(query) {
  return request({
    url: '/tron/withdraw/list',
    method: 'get',
    params: query
  })
}

// 查询提现记录详细
export function getWithdraw(id) {
  return request({
    url: '/tron/withdraw/' + id,
    method: 'get'
  })
}

// 新增提现记录
export function addWithdraw(data) {
  return request({
    url: '/tron/withdraw',
    method: 'post',
    data: data
  })
}

// 修改提现记录
export function updateWithdraw(data) {
  return request({
    url: '/tron/withdraw',
    method: 'put',
    data: data
  })
}

// 删除提现记录
export function delWithdraw(id) {
  return request({
    url: '/tron/withdraw/' + id,
    method: 'delete'
  })
}

// 导出提现记录
export function exportWithdraw(query) {
  return request({
    url: '/tron/withdraw/export',
    method: 'get',
    params: query
  })
}