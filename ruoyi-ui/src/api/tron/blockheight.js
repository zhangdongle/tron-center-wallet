import request from '@/utils/request'

// 查询区块高度列表
export function listBlockheight(query) {
  return request({
    url: '/tron/blockheight/list',
    method: 'get',
    params: query
  })
}

// 查询区块高度详细
export function getBlockheight(block) {
  return request({
    url: '/tron/blockheight/' + block,
    method: 'get'
  })
}

// 新增区块高度
export function addBlockheight(data) {
  return request({
    url: '/tron/blockheight',
    method: 'post',
    data: data
  })
}

// 修改区块高度
export function updateBlockheight(data) {
  return request({
    url: '/tron/blockheight',
    method: 'put',
    data: data
  })
}

// 删除区块高度
export function delBlockheight(block) {
  return request({
    url: '/tron/blockheight/' + block,
    method: 'delete'
  })
}

// 导出区块高度
export function exportBlockheight(query) {
  return request({
    url: '/tron/blockheight/export',
    method: 'get',
    params: query
  })
}