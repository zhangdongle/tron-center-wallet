<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="代币符号" prop="symbol">
        <el-input
          v-model="queryParams.symbol"
          placeholder="请输入代币符号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="类型：0.主币,1.TRC10,2.TRC20" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择类型：0.主币,1.TRC10,2.TRC20" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="是否主币" prop="isMaster">
        <el-input
          v-model="queryParams.isMaster"
          placeholder="请输入是否主币"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="币种名称" prop="name">
        <el-input
          v-model="queryParams.name"
          placeholder="请输入币种名称"
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
      <el-form-item label="小数位" prop="scale">
        <el-input
          v-model="queryParams.scale"
          placeholder="请输入小数位"
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
          v-hasPermi="['tron:cointype:add']"
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
          v-hasPermi="['tron:cointype:edit']"
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
          v-hasPermi="['tron:cointype:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['tron:cointype:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="cointypeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="小数位" align="center" prop="id" v-if="false"/>
      <el-table-column label="代币符号" align="center" prop="symbol" />
      <el-table-column label="类型：0.主币,1.TRC10,2.TRC20" align="center" prop="type" />
      <el-table-column label="是否主币" align="center" prop="isMaster" />
      <el-table-column label="币种名称" align="center" prop="name" />
      <el-table-column label="合约地址" align="center" prop="contractAddr" />
      <el-table-column label="小数位" align="center" prop="scale" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['tron:cointype:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['tron:cointype:remove']"
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

    <!-- 添加或修改币种管理对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="代币符号" prop="symbol">
          <el-input v-model="form.symbol" placeholder="请输入代币符号" />
        </el-form-item>
        <el-form-item label="类型：0.主币,1.TRC10,2.TRC20" prop="type">
          <el-select v-model="form.type" placeholder="请选择类型：0.主币,1.TRC10,2.TRC20">
            <el-option label="请选择字典生成" value="" />
          </el-select>
        </el-form-item>
        <el-form-item label="是否主币" prop="isMaster">
          <el-input v-model="form.isMaster" placeholder="请输入是否主币" />
        </el-form-item>
        <el-form-item label="币种名称" prop="name">
          <el-input v-model="form.name" placeholder="请输入币种名称" />
        </el-form-item>
        <el-form-item label="合约地址" prop="contractAddr">
          <el-input v-model="form.contractAddr" placeholder="请输入合约地址" />
        </el-form-item>
        <el-form-item label="小数位" prop="scale">
          <el-input v-model="form.scale" placeholder="请输入小数位" />
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
import { listCointype, getCointype, delCointype, addCointype, updateCointype, exportCointype } from "@/api/tron/cointype";

export default {
  name: "Cointype",
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
      // 币种管理表格数据
      cointypeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        symbol: undefined,
        type: undefined,
        isMaster: undefined,
        name: undefined,
        contractAddr: undefined,
        scale: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        symbol: [
          { required: true, message: "代币符号不能为空", trigger: "blur" }
        ],
        type: [
          { required: true, message: "类型：0.主币,1.TRC10,2.TRC20不能为空", trigger: "change" }
        ],
        isMaster: [
          { required: true, message: "是否主币不能为空", trigger: "blur" }
        ],
        name: [
          { required: true, message: "币种名称不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询币种管理列表 */
    getList() {
      this.loading = true;
      listCointype(this.queryParams).then(response => {
        this.cointypeList = response.rows;
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
        symbol: undefined,
        type: undefined,
        isMaster: undefined,
        name: undefined,
        contractAddr: undefined,
        scale: undefined
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
      this.title = "添加币种管理";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getCointype(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改币种管理";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateCointype(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addCointype(this.form).then(response => {
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
      this.$confirm('是否确认删除币种管理编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delCointype(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有币种管理数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportCointype(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
