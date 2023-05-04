// pages/seekitem/seekitem.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
  
  },

  kechengtap:function(){
    wx.navigateTo({
      url: '../kecheng/kecheng',
      success: function(res) {},
      fail: function(res) {},
      complete: function(res) {},
    })
  },

  numbertap:function(){
  wx.navigateTo({
      url: '../timunumber/timunumber',
      success: function(res) {},
      fail: function(res) {},
      complete: function(res) {},
    })
  },

  contenttap:function(){
    wx.navigateTo({
      url: '../content/content',
      success: function(res) {},
      fail: function(res) {},
      complete: function(res) {},
    })
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
  
  }
})