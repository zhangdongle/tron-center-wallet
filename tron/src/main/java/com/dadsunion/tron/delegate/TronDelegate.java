package com.dadsunion.tron.delegate;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.dadsunion.tron.domain.TronAddress;
import com.dadsunion.tron.domain.TronChainRecord;
import com.dadsunion.tron.mapper.TronAddressMapper;
import com.dadsunion.tron.mapper.TronChainRecordMapper;
import com.sunlight.tronsdk.TrxQuery;
import com.sunlight.tronsdk.address.Address;
import com.sunlight.tronsdk.address.AddressHelper;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor(onConstructor_ = @Autowired)
@Service
public class TronDelegate {

    private TronAddressMapper addressMapper;

    private TronChainRecordMapper chainRecordMapper;

    /**
     * 提现回调任务
     */
    public void withdrawNotify() {

    }

    /**
     * 充值回调任务
     */
    public void rechargeNotify() {

    }

    public void withdraw() {

    }

    /**
     * 链上处理
     * 
     * @param chainId
     */
    public void withdrawOnChain(Long chainId) {

    }

    /**
     * 通过交易hash查询链上状态
     * 如果成功则修改状态并保存交易信息
     * 
     * @param hash
     */
    public void checkChainResultByHash(String hash) {
        String data = null;
        try {
            data = TrxQuery.getTransactionById(hash);
        } catch (Exception e) {
            log.error("获取交易信息异常", e);
        }
        if (null != data) {
            JSONObject js = JSON.parseObject(data);
            String result = js.getJSONObject("ret").getString("contractRet");
            QueryWrapper<TronChainRecord> query = new QueryWrapper<>();
            query.eq("hash", hash);
            TronChainRecord record = new TronChainRecord();
            if ("SUCCESS".equals(result)) {
                record.setState(2);
                record.setBlockInfo(data);
                chainRecordMapper.update(record, query);
            }else if("FAIL".equals(result)){
                record.setState(3);
                record.setBlockInfo(data);
                record.setErrMsg("");
                chainRecordMapper.update(record, query);
            }
        }

    }

    public String createAddress(String userId) {
        Address address = AddressHelper.newAddress();
        // 保存到本地数据库
        TronAddress tronAddress = new TronAddress();
        tronAddress.setUserId(userId);
        tronAddress.setAddress(address.getAddress());
        tronAddress.setSecretkey(address.getPrivateKey());
        tronAddress.setActivated(0);// 默认没有激活
        addressMapper.insert(tronAddress);
        return address.getAddress();
    }

}