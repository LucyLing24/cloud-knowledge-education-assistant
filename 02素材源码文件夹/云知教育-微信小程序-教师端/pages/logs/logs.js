Page({
  data: {
    avatarUrl: null,
    movies:[
      { url: '/images/show2.jpg' },
      { url: '/images/show1.jpg' },
      { url: '/images/show0.jpg' },
    ]     
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    this.setData({
      title: options.title
    })
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

  personitemClick:function(){
    console.log("点击个人信息按钮")
    wx.navigateTo({
      url: '../info/info'
    })
  },

  projectsitemClick: function () {
    console.log("点击班级信息按钮")
    wx.navigateTo({
      url: '../classinformation/classinformation'
    })
  },

  kechenginfoClick: function () {
    console.log("点击课程信息按钮")
    wx.navigateTo({
      url: '../kecheng/kecheng'
    })
  },

  taskitemClick: function () {
    console.log("点击任务中心按钮")
    wx.navigateTo({
      url: '../task/task'
    })
  },

  classgradeitemClick: function () {
    console.log("点击班级成绩按钮")
    wx.navigateTo({
      url: '../scoreInquiry/scoreInquiry'
    })
  },

  questionitemClick: function () {
    console.log("点击我的题库按钮")
    wx.navigateTo({
      url: '../wodetiku/wodetiku'
    })
  },

  

  
})
