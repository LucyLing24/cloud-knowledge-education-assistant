Page({
  data: {
    array0: ['男', '女'],
    items: [
      { name: 'male', value: '男' },
      { name: 'female', value: '女' }
    ],
    imgUrl:null,
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

   rightClick:function(){
     console.log("保存")
     wx.showModal({
       title: '提示',
       content: '请确认是否进行保存',
       success: function (res) {
         if (res.confirm) {
           console.log('用户点击确定')
         } else if (res.cancel) {
           console.log('用户点击取消')
         }
       }
     })
   },

   correctClick: function () {
     console.log("修改")
     wx.showModal({
       title: '提示',
       content: '请确认是否进行修改',
       success: function (res) {
         if (res.confirm) {
           console.log('用户点击确定')
         } else if (res.cancel) {
           console.log('用户点击取消')
         }
       }
     })
   },

   returnbackClick:function(){
    wx.navigateTo({
       url: '../logs/logs'
    })
   },

   radioChange: function (e) {
     console.log('radio发生change事件，携带value值为：', e.detail.value)
   },

   setPhotoInfo: function () {
    var that = this;
    wx.chooseImage({
      count: 1, // 默认9
      sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
      sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
      success: function (res) {
      // 返回选定照片的本地文件路径列表，tempFilePath可以作为img标签的src属性显示图片
      var tempFilePaths = res.tempFilePaths
      that.setData({ imgUrl: tempFilePaths})
      }
    })
  },

   bindPicker0Change: function (e) {
     this.setData({
       index0: e.detail.value
     })
   },

})