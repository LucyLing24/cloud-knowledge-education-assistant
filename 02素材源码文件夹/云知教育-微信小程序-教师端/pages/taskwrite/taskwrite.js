Page({

  /**
   * 页面的初始数据
   */
  data: {
    array0: ['班级1', '班级2', '班级3', '班级4'],
    index0: 0,
    array1: ['001', '002', '003'],
    index1: 0,
    array2: ['计算机1', '计算机2', '计算机3'],
    index2: 0,
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

  StoreClick:function(){
    console.log("---保存成功---")
    wx.showToast({
      title: '保存成功',
      icon: 'succes',
      duration: 1000,
      mask: true
    })
  },

  SendClick: function () {
    console.log("---发送成功---")
    wx.showToast({
      title: '发送成功',
      icon: 'succes',
      duration: 1000,
      mask: true
    })
  },

  ClearClick: function () {
    console.log("---删除成功---")
    wx.showModal({
      title: '提示',
      content: '请确认是否删除',
      success: function (res) {
        if (res.confirm) {
          console.log('用户点击确定')
        } else if (res.cancel) {
          console.log('用户点击取消')
        }
      }
    })
  },

  bindPicker0Change: function (e) {
    this.setData({
      index0: e.detail.value
    })
  },

  bindPicker1Change: function (e) {
    this.setData({
      index1: e.detail.value
    })
  },

  bindPicker2Change: function (e) {
    this.setData({
      index2: e.detail.value
    })
  }

})