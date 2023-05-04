Page({

  /**
   * 页面的初始数据
   */
  data: {
    
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

  TaskwriteClick: function () {
    console.log("---编辑任务---")
    wx.navigateTo({
      url: '../taskwrite/taskwrite'
    })
  },

  TaskstoreClick: function () {
    console.log("---草稿箱---")
    wx.navigateTo({
      url: '../taskstore/taskstore'
    })
  },

  TasksendClick: function () {
    console.log("---已发送---")
    wx.navigateTo({
      url: '../tasksend/tasksend'
    })
  },

  TaskclearClick: function () {
    console.log("---已删除---")
    wx.navigateTo({
      url: '../taskclear/taskclear'
    })
  },

  TaskrubbishClick: function () {
    console.log("---垃圾箱---")
    wx.navigateTo({
      url: '../taskrubbish/taskrubbish'
    })
  },


})