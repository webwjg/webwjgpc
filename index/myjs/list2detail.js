$(function(){
    sessionStorage.setItem("yid",6);
    if(location.search!==""){
      var bid=location.search.split("=")[1];
       console.log(bid);
       $.ajax({
        url:"http://my2",
        type:"get",
        data:{bid},
        dataType:"json" //JSON.parse()
     }).then(function(result){
          console.log(result.product);
        var res=result.product;
        $('.titlef>div:nth-child(1)>h3').html(res.title);
        $('.titlef>div:nth-child(1)>p').html(res.subtitle);
        
        $('.titlef>div:nth-child(2)>h2').html(res.price);
        $('.titlef>div:nth-child(2)>p').html(res.live);
        var arrpp=[];
        arrpp.push(res.imgde1);
        arrpp.push(res.imgde2);
        arrpp.push(res.imgde3);
        arrpp.push(res.imgde4);
        arrpp.push(res.imgde5);
        console.log(arrpp);
        $('.mdi').attr('src',arrpp[0]);
        $('.suimg').attr('src',arrpp[0]);

        $('.imgbtns>span:nth-child(2)>img').attr("src",arrpp[0]);
        $('.imgbtns>span:nth-child(3)>img').attr("src",arrpp[1]);
        $('.imgbtns>span:nth-child(4)>img').attr("src",arrpp[2]);
        $('.imgbtns>span:nth-child(5)>img').attr("src",arrpp[3]);
        $('.imgbtns>span:nth-child(6)>img').attr("src",arrpp[4]);

        $('.deta>div:nth-child(1)>p').html(res.rtit);
         

        //li中的文字
        $('.ovfl>ul>li:nth-child(1)>span').html(res.litext1);
        $('.ovfl>ul>li:nth-child(2)>span').html(res.litext2);
        $('.ovfl>ul>li:nth-child(3)>span').html(res.litext3);
        $('.ovfl>ul>li:nth-child(4)>span').html(res.litext4);
        $('.ovfl>ul>li:nth-child(5)>span').html(res.litext5);
        $('.ovfl>ul>li:nth-child(6)>span').html(res.litext6);
        $('.ovfl>ul>li:nth-child(7)>span').html(res.litext7);
        $('.ovfl>ul>li:nth-child(8)>span').html(res.litext8);

        //四个横条
        $('.jies>ul>li:nth-child(2)>p').html(res.xq1);
        $('.jies>ul>li:nth-child(3)>p').html(res.xq2);
        $('.jies>ul>li:nth-child(4)>p').html(res.xq3);
        $('.jies>ul>li:nth-child(5)>p').html(res.xq4);

        $('.jies>ul>li:nth-child(2)>img').attr('src',res.xqimg1);
        $('.jies>ul>li:nth-child(3)>img').attr('src',res.xqimg2);
        $('.jies>ul>li:nth-child(4)>img').attr('src',res.xqimg3);
        $('.jies>ul>li:nth-child(5)>img').attr('src',res.xqimg4);
        
        //行程
        $('.text-left>ul:nth-child(4)>li:nth-child(1)>span> b:nth-child(2)').html(res.day1);
        $('.text-left>ul:nth-child(4)>li:nth-child(2)>span> b:nth-child(2)').html(res.day2)
        $('.text-left>ul:nth-child(4)>li:nth-child(3)>span> b:nth-child(2)').html(res.day3)
        $('.text-left>ul:nth-child(4)>li:nth-child(4)>span> b:nth-child(2)').html(res.day4)

        $('.text-left>ul:nth-child(5)>li:nth-child(2)').html(res.onedayde)

        $('.text-left>ul:nth-child(6)>li:nth-child(2)>span').html(res.twodayde);

        $('.text-left>ul:nth-child(6)>li:nth-child(3)>p>span').html(res.twojd1);
        $('.text-left>ul:nth-child(6)>li:nth-child(3)>div>div:nth-child(2)>img').attr('src',res. twodayimg1);
        $('.text-left>ul:nth-child(6)>li:nth-child(3)>div>div:nth-child(3)>img').attr('src',res. twodayimg2)

        //第三天
        $('.text-left>ul:nth-child(7)>li:nth-child(2)>span').html(res.threedaydayde);
        $('.text-left>ul:nth-child(7)>li:nth-child(3)>p>span').html(res.threejd1);

        $('.text-left>ul:nth-child(7)>li:nth-child(3)>div>div:nth-child(2)>img').attr('src',res. twodayimg1)
          
        $('.text-left>ul:nth-child(7)>li:nth-child(3)>div>div:nth-child(2)>img').attr('src',res.threedayimg1);
        $('.text-left>ul:nth-child(7)>li:nth-child(3)>div>div:nth-child(3)>img').attr('src',res.threedayimg2);

        $('.text-left>ul:nth-child(7)>li:nth-child(4)>p>span').html(res.threejd2);
   
        $('.text-left>ul:nth-child(7)>li:nth-child(4)>div>div:nth-child(2)>img').attr('src',res.threeimg3)

        $('.text-left>ul:nth-child(7)>li:nth-child(4)>div>div:nth-child(3)>img').attr('src',res.threeimg4)

        //第四天
        $('.text-left>ul:nth-child(8)>li:nth-child(2)>span').html(res.fourde);

        $('.text-left>ul:nth-child(8)>li:nth-child(3)>div>div:nth-child(2)>img').attr('src',res.fourimg1);
        $('.text-left>ul:nth-child(8)>li:nth-child(3)>div>div:nth-child(3)>img').attr('src',res.fourimg2);

        $('.text-left>ul:nth-child(8)>li:nth-child(4)>div>div:nth-child(2)>img').attr('src',res.fourimg3);
        $('.text-left>ul:nth-child(8)>li:nth-child(4)>div>div:nth-child(3)>img').attr('src',res.fourimg4);



    

//  var lideimg=['../listimg/onelist1.jpg','../listimg/twolist2.jpg','../listimg/twolist3.jpg','../listimg/twolist4.jpg','../listimg/twolist5.jpg'];
var lideimg=[];
lideimg=arrpp;
//商品图片
var imgbtns=$('.imgbtns>span>img');
// console.log(imgbtns[0].src);
//替换中图片
imgbtns.click(function(event){
     event.stopPropagation();
       var $this=$(this);
    //   console.log($this[0].src);
      var $mdimg=$('.buy_i>div>img');
    //   console.log($bigimg);
        $mdimg.attr('src',$this[0].src);
    }) 

 //中图片两侧的点击按钮
 var btnl=$('.btnl');
 var btnr=$('.btnr');

 btnr.click(function(){

   var $mdimg=$('.buy_i>div>img');
   var src=($mdimg[0].src);
//    截图图片数字代号
    var tp=src.substr(37,1);
    tp=parseInt(tp);
    // console.log(tp);
    // console.log(typeof(tp));
    if(tp==5){
        tp=0;
    }
    $mdimg.attr('src',lideimg[tp]);
})

btnl.click(function(){
    var $mdimg=$('.buy_i>div>img');
    var src=($mdimg[0].src);
    // console.log(src);
    // 截图图片数字代号
     var tp= parseInt(src.substr(37,1));
     tp=tp-2;
     if(tp==-1){
        tp=4;
     }
     console.log(tp);
     $mdimg.attr('src',lideimg[tp]);
})



    //文字上下位移
  var wy=0;
  var li=$('.ovfl>ul>li');
  console.log(li.css('top'))
 $('.runtop').click(function(){
     wy-=6;
    if(wy<-42){
         wy=0;
     }
     x=wy+'rem';
    //  console.log(x);
    li.css('top',x);
})

  $('.runbot').click(function(){
        wy+=6;
        if(wy>0){
            wy=-42;
        }
        x=wy+'rem';
        // console.log(x);
       li.css('top',x);
        // console.log(wy);
   })

 //弹出大图片
 $('.mdi').click(function(){
    
    //   $('.bgi').css('display','block !important');
    $('.bgi').css("cssText","display:block !important");
    //获得点击图片的src
    var $this=$(this);
    // console.log($(this)[0].src);
     var  supimg=$('.bgi>div>img');
     supimg.attr('src',$this[0].src);
 })


 //问题点击按钮也会消失,加一个消失按钮
 $('.close').click(function(){
   $('.bgi').css("cssText","display:none !important");
})
//点击切换大图片
var pre=$('.pre');
var nex=$('.nex');
 nex.click(function(){
    //  console.log(1);
     var $suimg=$('.suimg');
     var src=($suimg[0].src);
      var tp=src.substr(37,1);
      tp=parseInt(tp);
      if(tp==5){
          tp=0;
      }
      $suimg.attr('src',lideimg[tp]);

 })
 pre.click(function(){
     console.log(2);
     var $suimg=$('.suimg');
     var src=($suimg[0].src);
    var tp= parseInt(src.substr(37,1));
      tp=tp-2;
      if(tp==-1){
         tp=4;
      }
      console.log(tp);
      $suimg.attr('src',lideimg[tp]);
 })

// var ss=$('.nav>ul>li:first-child');
// ss.hover(function(){
//     console.log(1);
//     // $('.cont').css('display','block !important');
//     $('.cont').attr('id','conto');
// })

   
   









})
var xzyd=$('.xzyd');
xzyd.click(function(){
    // alert(`
    // 对不起,服务器正在维修中,请稍后!
    // Sorry, the server is under repair, please wait a moment!`)


var ydnews={date:'',night:'',num:'',outdate:''};
//获取入住日期
  var da=$('.yuding>ul li:nth-child(1)>input');
 ydnews.date=da.val();   
//  获取入住晚数
  var ne=$('.yuding>ul li:nth-child(2)>select');
 ydnews.night=ne.val()   
//获取房间数和人数
  var num=$('.yuding>ul li:nth-child(3)>select');
 ydnews.num= num.find("option:selected").text();   
//   console.log(num.find("option:selected").text());
//获取退房日期  
  ydnews.outdate=$('.yuding>ul li:nth-child(4)>input').val()
//    console.log(ydnews);
//  alert('是否确认预订');


//ajax发送数据

$.ajax({
    url:"http://my2/yuding",
    type:"post",
    data:{ydnews},
    dataType:"json" //JSON.parse()
 }).then(function(result){
    console.log(result);
    var yid;
     sessionStorage.setItem("yid",result.data);
       console.log(yid)
     if(result.msg==1){
     location.href=`http://127.0.0.1:5500/index/list6car.html`; 
     }

     
    

 })




        
 



    
})

//默认出的日期
 var time = new Date();
 var day = parseInt(("0" + time.getDate()).slice(-2))+2;
 var month = ("0" + (time.getMonth() + 1)).slice(-2);
  var today = time.getFullYear() + "-" + (month) + "-" + (day);
//   console.log(today)
 $('.datt').val(today);

//默认退房日期
var toda=time.getFullYear() + "-" + (month) + "-" + (day+1);
 $('.outdate').val(toda);

}


});