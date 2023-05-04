// pages/task1/task1.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
  
  },

  Logsbutton:function(){
    wx.showToast({
      title: '保存成功',
      icon: 'success',
      duration: 2000
    }) 
  },
  /**
   * 生命周期函数--监听页面加载
   */

  addtap:function(){
    wx.showModal({
      title: '提示',
      content: '是否使用个人题库',
      success: function (res) {
        if (res.confirm) {
          console.log('用户点击确定')
          wx.navigateTo({
            url: '../intoitem/intoitem',
          })
        } else if (res.cancel) {
          console.log('用户点击取消')
          wx.navigateTo({
            url: '../seekitem/seekitem',
          })
        }
      }
    })
  },
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