<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" :inline="true" v-show="showSearch" label-width="68px">
      <el-form-item label="链上记录" prop="chainId">
        <el-input
          v-model="queryParams.chainId"
          placeholder="请输入链上记录"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="消耗地址" prop="from">
        <el-input
          v-model="queryParams.from"
          placeholder="请输入消耗地址"
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
      <el-form-item label="类型：1.激活，2.获取带宽，3.获取能量" prop="type">
        <el-select v-model="queryParams.type" placeholder="请选择类型：1.激活，2.获取带宽，3.获取能量" clearable size="small">
          <el-option label="请选择字典生成" value="" />
        </el-select>
      </el-form-item>
      <el-form-item label="状态：0.待处理，1.处理中，2.处理完成" prop="state">
        <el-input
          v-model="queryParams.state"
          placeholder="请输入状态：0.待处理，1.处理中，2.处理完成"
          clearable
          size="small"
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="消耗数量" prop="count">
        <el-input
          v-model="queryParams.count"
          placeholder="请输入消耗数量"
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
          v-hasPermi="['tron:consume:add']"
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
          v-hasPermi="['tron:consume:edit']"
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
          v-hasPermi="['tron:consume:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['tron:consume:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="consumeList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="55" align="center" />
      <el-table-column label="消耗数量" align="center" prop="id" v-if="false"/>
      <el-table-column label="链上记录" align="center" prop="chainId" />
      <el-table-column label="消耗地址" align="center" prop="from" />
      <el-table-column label="目标地址" align="center" prop="to" />
      <el-table-column label="类型：1.激活，2.获取带宽，3.获取能量" align="center" prop="type" />
      <el-table-column label="状态：0.待处理，1.处理中，2.处理完成" align="center" prop="state" />
      <el-table-column label="消耗数量" align="center" prop="count" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['tron:consume:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['tron:consume:remove']"
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

    <!-- 添加或修改消耗记录对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="链上记录" prop="chainId">
          <el-input v-model="form.chainId" placeholder="请输入链上记录" />
        </el-form-item>
        <el-form-item label="消耗地址" prop="from">
          <el-input v-model="form.from" placeholder="请输入消耗地址" />
        </el-form-item>
        <el-form-item label="目标地址" prop="to">
          <el-input v-model="form.to" placeholder="请输入目标地址" />
        </el-form-item>
        <el-form-item label="类型：1.激活，2.获取带宽，3.获取能量" prop="type">
          <el-select v-model="form.type" placeholder="请选择类型：1.激活，2.获取带宽，3.获取能量">
            <el-option label="请选择字典生成" value="" />
          </el-select>
        </el-form-item>
        <el-form-item label="状态：0.待处理，1.处理中，2.处理完成" prop="state">
          <el-input v-model="form.state" placeholder="请输入状态：0.待处理，1.处理中，2.处理完成" />
        </el-form-item>
        <el-form-item label="消耗数量" prop="count">
          <el-input v-model="form.count" placeholder="请输入消耗数量" />
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
import { listConsume, getConsume, delConsume, addConsume, updateConsume, exportConsume } from "@/api/tron/consume";

export default {
  name: "Consume",
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
      // 消耗记录表格数据
      consumeList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        chainId: undefined,
        from: undefined,
        to: undefined,
        type: undefined,
        state: undefined,
        count: undefined,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
        chainId: [
          { required: true, message: "链上记录不能为空", trigger: "blur" }
        ],
        from: [
          { required: true, message: "消耗地址不能为空", trigger: "blur" }
        ],
        to: [
          { required: true, message: "目标地址不能为空", trigger: "blur" }
        ],
        type: [
          { required: true, message: "类型：1.激活，2.获取带宽，3.获取能量不能为空", trigger: "change" }
        ],
        state: [
          { required: true, message: "状态：0.待处理，1.处理中，2.处理完成不能为空", trigger: "blur" }
        ],
        createTime: [
          { required: true, message: "创建时间不能为空", trigger: "blur" }
        ],
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询消耗记录列表 */
    getList() {
      this.loading = true;
      listConsume(this.queryParams).then(response => {
        this.consumeList = response.rows;
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
        chainId: undefined,
        from: undefined,
        to: undefined,
        type: undefined,
        state: undefined,
        count: undefined,
        createTime: undefined,
        updateTime: undefined
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
      this.title = "添加消耗记录";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getConsume(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改消耗记录";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateConsume(this.form).then(response => {
              this.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addConsume(this.form).then(response => {
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
      this.$confirm('是否确认删除消耗记录编号为"' + ids + '"的数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return delConsume(ids);
        }).then(() => {
          this.getList();
          this.msgSuccess("删除成功");
        })
    },
    /** 导出按钮操作 */
    handleExport() {
      const queryParams = this.queryParams;
      this.$confirm('是否确认导出所有消耗记录数据项?', "警告", {
          confirmButtonText: "确定",
          cancelButtonText: "取消",
          type: "warning"
        }).then(function() {
          return exportConsume(queryParams);
        }).then(response => {
          this.download(response.msg);
        })
    }
  }
};
</script>
