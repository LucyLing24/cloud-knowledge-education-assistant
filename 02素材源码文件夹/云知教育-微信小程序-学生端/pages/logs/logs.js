// pages/studentfirst/studentfirst.js
Page({

  /**
   * 页面的初始数据
   */
  data: {
    avatarUrl: null,
    movies: [
      { url: '/images/show0.jpg' },
      { url: '/images/show3.jpg' },
      { url: '/images/show2.jpg' },
      { url: '/images/show1.jpg' }
    ]     
  },
 
  listenerLogin: function () {
    wx.redirectTo({
      url: '../logs/logs',
    })
  },

  personitem:function (){
    wx.navigateTo({
      url: '../person/person',
    })
  },

  projectsitem:function(){
    wx.navigateTo({
      url: '../projects/projects',
    })
  },

  chaxunitem:function(){
    wx.navigateTo({
      url: '../grade/grade',
    })
  },

  renwuitem:function(){
    wx.navigateTo({
      url: '../task/task',
    })
  },

  shixunitem:function(){
    wx.navigateTo({
      url: '../intoitem/intoitem',
    })
  },

  danganitem:function(){
    wx.navigateTo({
      url: '../record/record',
    })
  },

  zixunitem:function(){
    wx.navigateTo({
      url: '../news/news',
    })
  },

  yuanxiaoitem:function(){
    wx.navigateTo({
      url: '../academy/academy',
    })
  },

  classitem:function(){
    wx.navigateTo({
      url: '../class/class',
    })
  },
  /**
   * 
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