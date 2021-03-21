<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="系统地址" prop="address">
        <el-input
          v-model="queryParams.address"
          placeholder="请输入系统地址"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="地址类型" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择地址类型" clearable size="small">
          <el-option
            v-for="dict in typeOptions"
            :key="dict.dictValue"
            :label="dict.dictLabel"
            :value="dict.dictValue"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="钱包秘钥" prop="privateKey">
        <el-input
          v-model="queryParams.privateKey"
          placeholder="请输入钱包秘钥"
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

    <el-table v-loading="loading" :data="sysaddressList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="钱包秘钥" align="center" prop="id" v-if="false"/>
      <el-table-column label="系统地址" align="center" prop="address" />
      <el-table-column label="地址类型" align="center" prop="type" :formatter="typeFormat" />
      <el-table-column label="钱包秘钥" width="550" align="center" prop="privateKey" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['tron:sysaddress:edit']"
          >修改</el-button>
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

    <!-- 添加或修改系统地址对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="系统地址" prop="address">
          <el-input v-model="form.address" placeholder="请输入系统地址" />
        </el-form-item>
        <el-form-item label="地址类型" prop="type">
          <el-select v-model="form.type" placeholder="请选择地址类型">
            <el-option
              v-for="dict in typeOptions"
              :key="dict.dictValue"
              :label="dict.dictLabel"
              :value="dict.dictValue"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="钱包秘钥" prop="privateKey">
          <el-input v-model="form.privateKey" placeholder="请输入钱包秘钥" />
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
import { listSysaddress, getSysaddress, delSysaddress, addSysaddress, updateSysaddress, exportSysaddress } from "@/api/tron/sysaddress";

export default {
  name: "Sysaddress",
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
      // 系统地址表格数据
      sysaddressList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 地址类型字典
      typeOptions: [],
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        address: undefined,
        type: undefined,
        privateKey: undefined
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        address: [
          { required: true, message: "系统地址不能为空", trigger: "blur" }
        ],
        type: [
          { required: true, message: "地址类型不能为空", trigger: "change" }
        ],
      }
    };
  },
  created() {
    this.getList();
    this.getDicts("tron_address_type").then(response => {
      this.typeOptions = response.data;
    });
  },
  methods: {
    /** 查询系统地址列表 */
    getList() {
      this.loading = true;
      listSysaddress(this.queryParams).then(response => {
        this.sysaddressList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 地址类型字典翻译
    typeFormat(row, column) {
      return this.selectDictLabel(this.typeOptions, row.type);
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
        address: undefined,
        type: undefined,
        privateKey: undefined
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
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getSysaddress(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改系统地址";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateSysaddress(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
          }
        }
      });
    },
  }
};
</script>