Page({
  data: {
    userName: '',
    pasWInput: '',
  },

  onLoad: function (options) {
    /*var socketOpen = false
    var socketMsgQueue = []
    wx.connectSocket({
      url: 'test.php'  //填写地址
    })

    wx.onSocketOpen(function (res) {
      socketOpen = true
      for (var i = 0; i < socketMsgQueue.length; i++) {
        sendSocketMessage(socketMsgQueue[i])
      }
      socketMsgQueue = []
    })

    function sendSocketMessage(msg) {
      if (socketOpen) {
        wx.sendSocketMessage({
          data: msg
        })
      } else {
        socketMsgQueue.push(msg)
      }
    }

    wx.onSocketMessage(function (res) {
      console.log('收到服务器内容：' + res.data)
    })*/
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
   /* if (e.detail.value.userName.length == 0 || e.detail.value.pasWInput.length == 0) {
      this.setData({
        tip: '提示：用户信息！',
        userName: '',
        psw: ''
      })
    } else {*/
      console.log("---登录成功---")
      wx.navigateTo({
        url: '../logs/logs'
      })
    
    
    wx.showToast({
      title: '登录成功',
      icon: 'succes',
      duration: 1000,
      mask: true
    })
  }

})