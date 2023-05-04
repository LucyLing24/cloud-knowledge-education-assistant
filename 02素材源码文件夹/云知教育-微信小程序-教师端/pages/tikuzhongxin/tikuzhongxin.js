Page({

  /**
   * 页面的初始数据
   */
  data: {
    list: [
      { 'id': 0, 'hidden': true },
    ],
    listCon: [
      { 'id': 0, 'hidden': true },
    ]
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
    
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    
  },

  Xuanxiang1Cilck:function(){
    console.log("选择A选项")
  },

  Xuanxiang2Cilck: function () {
    console.log("选择B选项")
  },

  Xuanxiang3Cilck: function () {
    console.log("选择C选项")
  },

  Xuanxiang4Cilck: function () {
    console.log("选择D选项")
  },

  ShoucangClick: function (e) {
    console.log("确定收藏")
    wx.showToast({
      title: '收藏成功',
      icon: 'succes',
      duration: 1000,
      mask: true
    })
  }, 

  hiddenBtn: function (e) {
    console.log("查看解析")
    var that = this;
    // 获取事件绑定的当前组件
    var index = e.currentTarget.dataset.index;
    // 获取list中hidden的值
    // 隐藏或显示内容
    that.data.list[index].hidden = !that.data.list[index].hidden;
    that.setData({
      list: that.data.list
    })
  },


})