<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="类型，1.转账，2.带宽，3流量，4.合约" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择类型，1.转账，2.带宽，3流量，4.合约" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="区块高度" prop="height">
        <el-input
          v-model="queryParams.height"
          placeholder="请输入区块高度"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="合约地址" prop="contractAddr">
        <el-input
          v-model="queryParams.contractAddr"
          placeholder="请输入合约地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="发送地址" prop="from">
        <el-input
          v-model="queryParams.from"
          placeholder="请输入发送地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="目标地址" prop="to">
        <el-input
          v-model="queryParams.to"
          placeholder="请输入目标地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="金额，没有小数位" prop="amount">
        <el-input
          v-model="queryParams.amount"
          placeholder="请输入金额，没有小数位"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="消耗带宽" prop="bandwidth">
        <el-input
          v-model="queryParams.bandwidth"
          placeholder="请输入消耗带宽"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="消耗能量" prop="energy">
        <el-input
          v-model="queryParams.energy"
          placeholder="请输入消耗能量"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="消耗trx" prop="bornTrx">
        <el-input
          v-model="queryParams.bornTrx"
          placeholder="请输入消耗trx"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="区块信息" prop="blockInfo">
        <el-input
          v-model="queryParams.blockInfo"
          placeholder="请输入区块信息"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态，1.已发送，2.打包中，3.成功，4，失败" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入状态，1.已发送，2.打包中，3.成功，4，失败"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="失败信息" prop="errMsg">
        <el-input
          v-model="queryParams.errMsg"
          placeholder="请输入失败信息"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="关联ID" prop="relatedId">
        <el-input
          v-model="queryParams.relatedId"
          placeholder="请输入关联ID"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['tron:chain:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['tron:chain:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['tron:chain:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['tron:chain:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="chainList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="关联ID" align="center" prop="id" v-if="false"/>
      <el-table-column label="类型，1.转账，2.带宽，3流量，4.合约" align="center" prop="type" />
      <el-table-column label="区块高度" align="center" prop="height" />
      <el-table-column label="合约地址" align="center" prop="contractAddr" />
      <el-table-column label="发送地址" align="center" prop="from" />
      <el-table-column label="目标地址" align="center" prop="to" />
      <el-table-column label="金额，没有小数位" align="center" prop="amount" />
      <el-table-column label="消耗带宽" align="center" prop="bandwidth" />
      <el-table-column label="消耗能量" align="center" prop="energy" />
      <el-table-column label="消耗trx" align="center" prop="bornTrx" />
      <el-table-column label="区块信息" align="center" prop="blockInfo" />
      <el-table-column label="状态，1.已发送，2.打包中，3.成功，4，失败" align="center" prop="state" />
      <el-table-column label="失败信息" align="center" prop="errMsg" />
      <el-table-column label="关联ID" align="center" prop="relatedId" />
      <el-table-column label="备注" align="center" prop="remark" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['tron:chain:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['tron:chain:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>
    
    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改波场链上交互信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="类型，1.转账，2.带宽，3流量，4.合约" prop="type">
          <el-select v-model="form.type" placeholder="请选择类型，1.转账，2.带宽，3流量，4.合约">
            <el-option label="请选择字典生成" value="" />
          </el-select>
        </el-form-item>
        <el-form-item label="区块高度" prop="height">
          <el-input v-model="form.height" placeholder="请输入区块高度" />
        </el-form-item>
        <el-form-item label="合约地址" prop="contractAddr">
          <el-input v-model="form.contractAddr" placeholder="请输入合约地址" />
        </el-form-item>
        <el-form-item label="发送地址" prop="from">
          <el-input v-model="form.from" placeholder="请输入发送地址" />
        </el-form-item>
        <el-form-item label="目标地址" prop="to">
          <el-input v-model="form.to" placeholder="请输入目标地址" />
        </el-form-item>
        <el-form-item label="金额，没有小数位" prop="amount">
          <el-input v-model="form.amount" placeholder="请输入金额，没有小数位" />
        </el-form-item>
        <el-form-item label="消耗带宽" prop="bandwidth">
          <el-input v-model="form.bandwidth" placeholder="请输入消耗带宽" />
        </el-form-item>
        <el-form-item label="消耗能量" prop="energy">
          <el-input v-model="form.energy" placeholder="请输入消耗能量" />
        </el-form-item>
        <el-form-item label="消耗trx" prop="bornTrx">
          <el-input v-model="form.bornTrx" placeholder="请输入消耗trx" />
        </el-form-item>
        <el-form-item label="区块信息" prop="blockInfo">
          <el-input v-model="form.blockInfo" placeholder="请输入区块信息" />
        </el-form-item>
        <el-form-item label="状态，1.已发送，2.打包中，3.成功，4，失败" prop="state">
          <el-input v-model="form.state" placeholder="请输入状态，1.已发送，2.打包中，3.成功，4，失败" />
        </el-form-item>
        <el-form-item label="失败信息" prop="errMsg">
          <el-input v-model="form.errMsg" placeholder="请输入失败信息" />
        </el-form-item>
        <el-form-item label="关联ID" prop="relatedId">
          <el-input v-model="form.relatedId" placeholder="请输入关联ID" />
        </el-form-item>
        <el-form-item label="备注" prop="remark">
          <el-input v-model="form.remark" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listChain, getChain, delChain, addChain, updateChain, exportChain } from "@/api/tron/chain";

export default {
  name: "Chain",
  components: {
  },
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 波场链上交互信息表格数据
      chainList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        type: undefined,
        height: undefined,
        contractAddr: undefined,
        from: undefined,
        to: undefined,
        amount: undefined,
        bandwidth: undefined,
        energy: undefined,
        bornTrx: undefined,
        blockInfo: undefined,
        state: undefined,
        errMsg: undefined,
        relatedId: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        type: [
          { required: true, message: "类型，1.转账，2.带宽，3流量，4.合约不能为空", trigger: "change" }
        ],
        height: [
          { required: true, message: "区块高度不能为空", trigger: "blur" }
        ],
        from: [
          { required: true, message: "发送地址不能为空", trigger: "blur" }
        ],
        to: [
          { required: true, message: "目标地址不能为空", trigger: "blur" }
        ],
        state: [
          { required: true, message: "状态，1.已发送，2.打包中，3.成功，4，失败不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询波场链上交互信息列表 */
    getList() {
      this.loading = true;
      listChain(this.queryParams).then(response => {
        this.chainList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        id: undefined,
        type: undefined,
        height: undefined,
        contractAddr: undefined,
        from: undefined,
        to: undefined,
        amount: undefined,
        bandwidth: undefined,
        energy: undefined,
        bornTrx: undefined,
        blockInfo: undefined,
        state: undefined,
        errMsg: undefined,
        relatedId: undefined,
        remark: undefined
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加波场链上交互信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getChain(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改波场链上交互信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateChain(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addChain(this.form).then(response => {
              this.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$confirm('是否确认删除波场链上交互信息编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delChain(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有波场链上交互信息数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportChain(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
