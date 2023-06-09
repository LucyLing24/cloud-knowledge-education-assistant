Page({

  /**
   * 页面的初始数据
   */
  data: {
    showView: true
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    showView: (options.showView == "true" ? true : false)
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

  KeshiClick:function(){
    console.log("点击课时安排按钮")
    wx.navigateTo({
      url: '../keshianpai/keshianpai'
    })
  },

  ZhishiClick: function () {
    console.log("点击知识点按钮")
    wx.navigateTo({
      url: '../zhishi/zhishi'
    })
  },

  onChangeShowState: function () {
    var that = this;
    that.setData({
      showView: (!that.data.showView)
    })
  },

  onChangeShowState1: function () {
    var that = this;
    that.setData({
      showView: (!that.data.showView)
    })
  }
})