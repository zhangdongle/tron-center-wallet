<template>
  <div class="app-container">
    <el-form
      :model="queryParams"
      ref="queryForm"
      :inline="true"
      v-show="showSearch"
      label-width="68px"
    >
      <el-form-item label="来源地址" prop="fromAddr">
        <el-input
          v-model="queryParams.fromAddr"
          placeholder="请输入来源地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="用户平台地址" prop="toAddr" label-width="100px">
        <el-input
          v-model="queryParams.toAddr"
          placeholder="请输入用户平台地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="状态" prop="state">
        <el-select
          v-model="queryParams.state"
          placeholder="请选择状态"
          clearable
          size="small"
        >
          <el-option
            v-for="dict in stateOptions"
            :key="dict.dictValue"
            :label="dict.dictLabel"
            :value="dict.dictValue"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="币种符号" prop="symbol">
        <el-input
          v-model="queryParams.symbol"
          placeholder="请输入币种符号"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="回调状态" prop="notifySt">
        <el-input
          v-model="queryParams.notifySt"
          placeholder="请输入回调状态"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button
          type="primary"
          icon="el-icon-search"
          size="mini"
          @click="handleQuery"
          >搜索</el-button
        >
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery"
          >重置</el-button
        >
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <!-- <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['tron:recharge:add']"
        >新增</el-button>
      </el-col> -->
      <!-- <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['tron:recharge:edit']"
        >修改</el-button>
      </el-col> -->
      <!-- <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['tron:recharge:remove']"
        >删除</el-button>
      </el-col> -->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['tron:recharge:export']"
          >导出</el-button
        >
      </el-col>
      <right-toolbar
        :showSearch.sync="showSearch"
        @queryTable="getList"
      ></right-toolbar>
    </el-row>

    <el-table
      v-loading="loading"
      :data="rechargeList"
      @selection-change="handleSelectionChange"
    >
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column
        label="链上关联ID"
        align="center"
        prop="id"
        v-if="false"
      />
      <el-table-column
        label="来源地址"
        align="center"
        prop="fromAddr"
        width="350"
        fixed
      />
      <el-table-column
        label="用户平台地址"
        align="center"
        prop="toAddr"
        width="350"
      />
      <el-table-column label="金额" align="center" prop="amount" />
      <el-table-column
        label="状态"
        align="center"
        prop="state"
        :formatter="stateFormat"
      />
      <el-table-column label="币种符号" align="center" prop="symbol" />
      <el-table-column
        label="回调状态"
        align="center"
        prop="notifySt"
        :formatter="notifyStFormat"
      />
      <!-- <el-table-column label="链上关联ID" align="center" prop="chainId" /> -->
      <el-table-column
        label="操作"
        align="center"
        class-name="small-padding fixed-width"
      >
        <template slot-scope="scope">
          <!-- <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['tron:recharge:edit']"
          >修改</el-button> -->
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleCollectInfo(scope.row)"
            v-hasPermi="['tron:recharge:edit']"
            >归集详情</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleChainInfo(scope.row)"
            v-hasPermi="['tron:recharge:edit']"
            >充值详情</el-button
          >
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleNotify(scope.row)"
            v-hasPermi="['tron:recharge:edit']"
            >立即回调</el-button
          >
          <!-- <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['tron:recharge:edit']"
          >修改</el-button> -->
          <!-- <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['tron:recharge:remove']"
          >删除</el-button> -->
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total > 0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改充值记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="来源地址" prop="fromAddr">
          <el-input v-model="form.fromAddr" placeholder="请输入来源地址" />
        </el-form-item>
        <el-form-item label="用户平台地址" prop="toAddr">
          <el-input v-model="form.toAddr" placeholder="请输入用户平台地址" />
        </el-form-item>
        <el-form-item label="金额" prop="amount">
          <el-input v-model="form.amount" placeholder="请输入金额" />
        </el-form-item>
        <el-form-item label="状态" prop="state">
          <el-select v-model="form.state" placeholder="请选择状态">
            <el-option
              v-for="dict in stateOptions"
              :key="dict.dictValue"
              :label="dict.dictLabel"
              :value="parseInt(dict.dictValue)"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="币种符号" prop="symbol">
          <el-input v-model="form.symbol" placeholder="请输入币种符号" />
        </el-form-item>
        <el-form-item label="回调状态" prop="notifySt">
          <el-input v-model="form.notifySt" placeholder="请输入回调状态" />
        </el-form-item>
        <el-form-item label="链上关联ID" prop="chainId">
          <el-input v-model="form.chainId" placeholder="请输入链上关联ID" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
    <el-drawer
      title="归集详情"
      :visible.sync="collectDrawer"
      :direction="direction"
      :before-close="handleClose"
    >
      <span>我来啦!</span>
    </el-drawer>
    <el-drawer
      title="充值详情"
      :visible.sync="chainDrawer"
      :direction="direction"
      :before-close="handleClose"
    >
      <span>我来啦!</span>
    </el-drawer>
  </div>
</template>

<script>
import {
  listRecharge,
  getRecharge,
  delRecharge,
  addRecharge,
  updateRecharge,
  exportRecharge,
} from "@/api/tron/recharge";

export default {
  name: "Recharge",
  components: {},
  data() {
    return {
      collectDrawer: false,
      chainDrawer: false,
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
      // 充值记录表格数据
      rechargeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 状态字典
      stateOptions: [],
      // 回调状态字典
      notifyStOptions: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        fromAddr: undefined,
        toAddr: undefined,
        amount: undefined,
        state: undefined,
        symbol: undefined,
        notifySt: undefined,
        chainId: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        fromAddr: [
          { required: true, message: "来源地址不能为空", trigger: "blur" },
        ],
        toAddr: [
          { required: true, message: "用户平台地址不能为空", trigger: "blur" },
        ],
        amount: [{ required: true, message: "金额不能为空", trigger: "blur" }],
        state: [{ required: true, message: "状态不能为空", trigger: "change" }],
        symbol: [
          { required: true, message: "币种符号不能为空", trigger: "blur" },
        ],
        chainId: [
          { required: true, message: "链上关联ID不能为空", trigger: "blur" },
        ],
        createTime: [
          { required: true, message: "创建时间不能为空", trigger: "blur" },
        ],
      },
    };
  },
  created() {
    this.getList();
    this.getDicts("tron_collect_state").then((response) => {
      this.stateOptions = response.data;
    });
    this.getDicts("tron_notify_state").then((response) => {
      this.notifyStOptions = response.data;
    });
  },
  methods: {
    /** 查询充值记录列表 */
    getList() {
      this.loading = true;
      listRecharge(this.queryParams).then((response) => {
        this.rechargeList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 状态字典翻译
    stateFormat(row, column) {
      return this.selectDictLabel(this.stateOptions, row.state);
    },
    // 回调状态字典翻译
    notifyStFormat(row, column) {
      return this.selectDictLabel(this.notifyStOptions, row.notifySt);
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
        fromAddr: undefined,
        toAddr: undefined,
        amount: undefined,
        state: undefined,
        symbol: undefined,
        notifySt: undefined,
        chainId: undefined,
        createTime: undefined,
        updateTime: undefined,
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
      this.ids = selection.map((item) => item.id);
      this.single = selection.length !== 1;
      this.multiple = !selection.length;
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加充值记录";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids;
      getRecharge(id).then((response) => {
        this.form = response.data;
        this.open = true;
        this.title = "修改充值记录";
      });
    },
    handleCollectInfo(row) {
      this.reset();
      const id = row.id || this.ids;
      getRecharge(id).then((response) => {
        this.form = response.data;
        this.collectDrawer = true;
      });
    },
    handleChainInfo(row) {
      this.reset();
      const id = row.id || this.ids;
      getRecharge(id).then((response) => {
        this.form = response.data;
        this.chainDrawer = true;
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate((valid) => {
        if (valid) {
          if (this.form.id != null) {
            updateRecharge(this.form).then((response) => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addRecharge(this.form).then((response) => {
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
      this.$confirm(
        '是否确认删除充值记录编号为"' + ids + '"的数据项?',
        "警告",
        {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning",
        }
      )
        .then(function () {
          return delRecharge(ids);
        })
        .then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        });
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm("是否确认导出所有充值记录数据项?", "警告", {
        confirmButtonText: "确定",
        cancelButtonText: "取消",
        type: "warning",
      })
        .then(function () {
          return exportRecharge(queryParams);
        })
        .then((response) => {
          this.download(response.msg);
        });
    },
  },
};
</script>