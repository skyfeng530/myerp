function topView() {

	var _gridPanel = new Ext.grid.GridPanel({
		columns : [ {
			header : "序号",
			width : 120,
			sortable : true,
			dataIndex : 'picid'
		}, {
			header : "图号",
			width : 120,
			sortable : true,
			dataIndex : 'picid'
		}, {
			header : "零件名称",
			width : 120,
			sortable : true,
			dataIndex : 'name'
		}, {
			header : "总数量",
			width : 120,
			sortable : true,
			dataIndex : 'total'
		}, {
			header : "计量单位",
			width : 120,
			sortable : true,
			dataIndex : 'unit'
		}, {
			header : "保存单位",
			width : 120,
			sortable : true,
			dataIndex : 'savePlace'
		}, {
			header : "产品来源",
			width : 120,
			sortable : true,
			dataIndex : 'from'
		}, {
			header : "物料形态",
			width : 120,
			sortable : true,
			dataIndex : 'state'
		}, {
			header : "备注",
			width : 120,
			sortable : true,
			dataIndex : 'mask'
		} ],
		viewConfig : {
			forceFit : true
		},
		sm : new Ext.grid.RowSelectionModel({
			singleSelect : true
		}),
		width : 1200,
		height : 300,
		iconCls : 'icon-grid'
	});

	var topPanel = new Ext.Panel({
		style : 'margin-left:102px; margin-top:10px; margin-bottom:10px',
		layout : 'column',
		width : '1200',
		autoHeight : true,
		items : [ {
			columnWidth : .5,
			layout : 'form',
			labelWidth : 100,
			labelAlign : "left",
			baseCls : "x-plain",
			labelAlign : "left",
			items : [ {
				fieldLabel : '项目名称',
				xtype : 'combo'
			} ]
		}, {
			columnWidth : .5,
			layout : 'form',
			labelWidth : 100,
			labelAlign : "left",
			baseCls : "x-plain",
			labelAlign : "left",
			items : [ {
				fieldLabel : '任务编号',
				xtype : 'combo'
			} ]
		}, {
			clumnWidth : 1,
			colspan : 2,
			layout : 'form',
			labelWidth : 100,
			labelAlign : "left",
			baseCls : "x-plain",
			labelAlign : "left",
			items : [ _gridPanel ]
		}, {
			columnWidth : .5,
			layout : 'form',
			labelWidth : 100,
			labelAlign : "left",
			baseCls : "x-plain",
			labelAlign : "left",
			items : [ {
				fieldLabel : '图号',
				xtype : 'textfield'
			}, {
				fieldLabel : '类别',
				xtype : 'combo'
			}, {
				fieldLabel : '数量',
				xtype : 'textfield'
			}, {
				fieldLabel : '保存期',
				xtype : 'textfield'
			}, {
				fieldLabel : '产品来源',
				xtype : 'textfield'
			}, {
				fieldLabel : '物料形态',
				xtype : 'textfield'
			} ]
		}, {
			columnWidth : .5,
			layout : 'form',
			labelWidth : 100,
			labelAlign : "left",
			baseCls : "x-plain",
			labelAlign : "left",
			items : [ {
				fieldLabel : '零件名称',
				xtype : 'textfield'
			}, {
				fieldLabel : '残次品标识',
				xtype : 'combo'
			}, {
				fieldLabel : '计量单位',
				xtype : 'textfield'
			}, {
				fieldLabel : '保存单位',
				xtype : 'combo'
			}, {
				fieldLabel : '备注',
				xtype : 'textfield'
			}, {
				fieldLabel : '备注',
				xtype : 'textfield'
			} ]
		} ]

	});

	return topPanel;
}

function mainView() {
	var _topPanel = topView();

	var mainPanel = new Ext.form.FormPanel({
		title : "入库电子流处理",
		height : 600,
		width : 1200,
		labelWidth : 100,
		labelAlign : "left",
		style : 'margin-top:10px;',
		buttonAlign : 'left',
		frame : true,
		defaults : {
			xtype : "textfield",
			width : 600
		},
		items : [ _topPanel, {
			name : "operate",
			fieldLabel : "选择您要的操作"
		}, {
			name : "operateUser",
			fieldLabel : "处理人员"
		}, {
			name : "copyUser",
			fieldLabel : "抄送人员"
		}, {
			xtype : "textarea",
			name : "mask",
			height : 50,
			fieldLabel : "批注"
		} ],
		buttons : [ {
			text : "提交"
		}, {
			text : "取消"
		} ]
	});

	mainPanel.render("main_id");
}

function initview() {
	mainView();

};
Ext.onReady(initview);