Page({
  data: {
    userName: '',
    pasWInput: '',
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

  Logsbutton:function(){
    wx.showToast({
      title: '成功',
      icon: 'success',
      duration: 2000
    })
  },
  // 用户名和密码输入框事件
  userNameInput: function (e) {
    this.setData({
      userName: e.detail.value
    })
  },
  pasWInput: function (e) {
    this.setData({
      SFZ: e.detail.value
    })
  },

  bindFormSubmit: function (e) {
    if (e.detail.value.userName.length == 0 || e.detail.value.pasWInput.length == 0) {
      this.setData({
        userName: '',
        psw: ''
      })
    } else {

    }
  }

})

