$(function(){



//发送请求
   $.ajax({
      url:"http://127.0.0.1:3000/my2/indexlunbo",
      type:"get",
      //data:,
      dataType:"json" //JSON.parse()
   }).then(function(result){
       //一楼的轮播
    //    console.log(result)
        // console.log(result[0].href);
         html=` <div class="carousel-item active">
         <a href="${result[0].href}"><img class="w-100 " src="${result[0].img_url}" alt=""/></a>
     </div>
     <div class="carousel-item ">
         <a href="${result[1].href}"><img class="w-100 " src="${result[1].img_url}" alt=""/></a>
     </div>
     <div class="carousel-item ">
         <a href="${result[2].href}"><img class="w-100 " src="${result[2].img_url}" alt=""/></a>
     </div>
     <div class="carousel-item ">
         <a href="${result[3].href}"> <img class="w-100 " src="${result[3].img_url}" alt=""/></a>
     </div>`;
         $('#demo>div').html(html);
       

         
         

   });


        // 一楼
  $.ajax({
     url:"http://127.0.0.1:3000/my2/indexonefl",
     type:"get",
            //data:,
     dataType:"json" //JSON.parse()
      }).then(function(result){
        //    console.log(result);
          var tit=$('#onefloor .tile>div>h4');
          var html='';
          for(var res of result){
        // console.log(res)
       html+=` <div class="wrap col-lg-3 col-sm-6 p-0">
                   <a href="${res.href}" class="tile  w-100">
                      <img class="h-100" src="${res.pic}">
                       <div class="text h-75">
                           <h2>Lorem ipsum.</h2>
                           <h4 class="animate-text">${res.title}</h4>
                           <p class="animate-text">
                               ${res.details}
                           </p>
                       </div>
                   </a>
               </div>`;
             }
          $('#onefloor>div').html(html);
         })
   
//二楼

$.ajax({
    url:"http://127.0.0.1:3000/my2/indextwofl",
    type:"get",
    dataType:"json"
     }).then(function(result){
        //  console.log(result);
         var html='';
         for(var res of result){
             html+=` <div class="col-lg-6 col-sm-12 h-100 text-right">
             <div class="box h-100">
                 <div class="box-img h-100">
                     <img class="h-100" src="${res.pic}" alt="">
                 </div>
                 <div class="box-content">
                     <h4 class="title">${res.title}</h4>
                     <p class="description">${res.details}</p>
                     <ul class="social-links">
                         <li><a href="#" class="fa fa-qq"></a></li>
                         <li><a href="#" class="fa fa-weibo"></a></li>
                         <li><a href="#" class="fa fa-weixin"></a></li>
                     </ul>
                     <a class="buttons" href="${res.href}">
                       
                         <div class="btn btn1">
                             <span class="circle"></span>
                             <span class="text">go travel</span>
                         </div>
                     </a>
                 </div>
             </div>
         </div>`;
         }
         $('#floor2').html(html);
         //console.log($('#floor2>div:nth-child(1)'));
         var flo1=$('#floor2>div:nth-child(1)');
         console.log(flo1);
         var a=0;
         var anum=-200;
         anim(flo1,a,anum);
         var flo2=$('#floor2>div:nth-child(2)');
         var a=0;
         anim(flo2,a,anum);
     })
 
    //  三楼
 $.ajax({
        url:"http://127.0.0.1:3000/my2/indexthreefl",
        type:"get",
        dataType:"json"
         }).then(function(result){
        //    console.log(result);
           var arrp=[];
           var arrt=[];
           var arrd=[];
           var arrh=[];
          for(var res of result){
             arrp.push(res.pic);
             arrt.push(res.title);
             arrd.push(res.details);
             arrh.push(res.href);
          }
        //    console.log(arrd);
        //    console.log(arrt);
        //    console.log(arrh);
    $('#flbig>#imgs').attr('src',arrp[0]);
    $('#threebtn').attr('href',arrh[0]);
 
//   var i3=0; 
//   setInterval(function(){
//       i3++;
//       if(i3>3){
//           i3=0;
//       }
//       $('#imgs').attr('src',arrp[i3]);
//       intext.html(arrd[i3]);
//       $('#threebtn').attr('href',arrh[i3]);
//   },6000);
  

//   function dximg(){
//     $('#flbig img').addClass('da');
//     // var bbig=setInterval(function(){
//     //     $('#flbig img').removeClass('da');
//     //  },6000)
//   }

// setInterval(dximg,12000);

//三楼图片
   var imgs =$('#imgs')[0];
   var prev2=$('.prev2')[0];
   var next2=$('.next2')[0];

   var intext=$('.floortext>p');//文字
     //console.log(arrp);
     var htmlj='';
     for(var img of arrp){
         htmlj+=` <li>
         <img class="imgs" name="imgs" class="d-flex d-block w-100 h-00" src="${img}" alt=""/>
    </li>`
     }
        //console.log(htmlj)
     $('#box').html(htmlj);

var box=$('#box')[0];
var bi=0;
next2.onclick=function(){
   
    bi-=25;
    if(bi<-75){
        bi=-75;
    }
    box.style.webkitTransform = `translateX(${bi}%)`;
//    var src=imgs.src;
//             // console.log(src)
//    var tp=src.substr(36,1);
//     tp=parseInt(tp);
//             //  console.log(tp)
//    if(tp==4){
//        tp=0;
//    }
//            //console.log(tp)
//     $('#imgs').attr('src',arrp[tp]);
//     intext.html(arrd[tp]);
//    $('#threebtn').attr('href',arrh[tp]);
};

prev2.onclick=function(){
    bi+=25;
    if(bi>0){
        bi=-0;
        // box.style.transition="-webkit-transform 0ms ease-out";

    }
    box.style.webkitTransform = `translateX(${bi}%)`;
    // var src=imgs.src;
    // console.log(src)
    // var tp=src.substr(36,1);
    //  tp=parseInt(tp);
    //  tp=tp-2;
    //  console.log(tp)
    //   if(tp==-1){
    //       tp=3;
    //   }
    //  $('#imgs').attr('src',arrp[tp]);
    //  intext.html(arrd[tp]);
    //  $('#threebtn').attr('href',arrh[tp]);
  

}
var thranim=$('.floortext>p');
console.log(thranim);
var a1=0;
var anum=-800;
anim(thranim,a1,anum);
   
});

// 四楼
$.ajax({
    url:"http://127.0.0.1:3000/my2/indexfourfl",
    type:"get",
    dataType:"json"
     }).then(function(result){
             // console.log(result);
             var arrp=[];
             var arrh=[];
             var arrd=[];
            for(var res of result){
               arrp.push(res.pic);
               arrh.push(res.href);
               arrd.push(res.details);
            }
           // console.log(arrp);
           // console.log(arrh);
            // console.log(arrd);
     
        $('#fourbtn').attr('href',arrh[0]);
       // console.log( $('#threebtn'))

            var htmlq='';
          $('#fourfloorleft>img').attr('src',arrp[0]);
          html=`  <img class="h-33" src="${arrp[1]}" alt=""/>
          <img class="h-33" src="${arrp[2]}" alt=""/>
          <img class=" h-33" src="${arrp[3]}" alt=""/>`;
        //   四楼右边左边三个图片
          $('#fourfl>div:nth-child(2)>div').html(html); 
        //   四楼右边右边三个图片
           htmlq=`   <img class="h-33" src="${arrp[4]}" alt=""/>
           <img class="h-33" src="${arrp[5]}" alt=""/>
           <img class=" h-33" src="${arrp[6]}" alt=""/>`;
           $('#fourfl>div:nth-child(3)>div').html(htmlq);

            // 四楼 four

var frimg=$('.fourfloorright>div>img');
// console.log(frimg)
  
frimg.click(function(){
    var $this=$(this);
    console.log($this[0].src);
    // $this.clone().replaceAll('#fourfloorleft>img');
    console.log( $('#fourfloorleft>img'));
    $('#fourfloorleft>img').attr('src',$this[0].src)
    //http://127.0.0.1:5500/img/fourfloor7.jpg
    var num=$this[0].src;
    //截取图片的数字
     var sz=num.substr(35,1);
     console.log(sz);
    //  console.log(arrh);
     console.log(arrd);
    $('#threebtn').attr('href',arrh[sz-1]);
     $('#fourfloorleft>div>p').html(arrd[sz-1]);
     $('#fourfloorleft>div>a').attr('href',arrh[sz-1]);
     
    
    
});
var four1=$('#fourfloorleft>div:nth-child(3)>h3');
var four2=$('#fourfloorleft>div:nth-child(3)>p');
console.log(four1);
var a=0;
var b=-600;
anim(four1,a,b);
anim(four2,a,b);




});

// 五楼
$.ajax({
    url:"http://127.0.0.1:3000/my2/indexfivefl",
    type:"get",
    dataType:"json"
     }).then(function(result){
        //  console.log(result);
         var arrp=[];
         var arrt=[];
         var arrh=[];
         
         for(var res of result){
            arrp.push(res.pic);
            arrt.push(res.title);
            arrh.push(res.href);
         }
         html=`  <img class="w-100 float-left" src="${arrp[0]}" alt=""/>
         <div class="position-absolute ">
             ${arrt[0]}
         </div>`;
         $('#fivefloor>div:nth-child(2)').html(html);
        //  console.log(arrp)
         var htmlq='';
         htmlq=`  <!--右边的左边两张图-->
         <div class="col-lg-6 col-sm-6 h-100 p-0 m-0">
             <div class="h-50 w-100">
                <a href="${arrh[0]}"> <img class="h-100 w-100 float-left" src="${arrp[1]}
                " alt=""/></a>
                 <div class="zhezhao position-absolute">  ${arrt[1]}</div>
             </div>
             <div class="h-50 w-100">
             <a href="${arrh[1]}"><img class="h-100 w-100 float-left" src="${arrp[2]}" alt=""/></a>
                 <div class="zhezhao position-absolute">  ${arrt[2]}</div>
             </div>
         </div>
         <!--右边的右边的两张图-->
        <div class="col-lg-6 col-sm-6  h-100 p-0 m-0">
            <div class="h-50 w-100">
            <a href="${arrh[2]}"><img class="h-100 w-100 float-left" src="${arrp[3]}" alt=""/></a>
                <div class="zhezhao position-absolute">  ${arrt[3]}</div>
            </div>
            <div class="h-50 w-100">
            <a href="${arrh[4]}"><img class="h-100 w-100 float-left" src="${arrp[4]}" alt=""/></a>
                <div class="zhezhao position-absolute"> ${arrt[4]}</div>
            </div>
        </div>`;
        $('#huixuan').html(htmlq);

       
         
       

     })


//右下角
var btn=$('#ccc-icon');
btn.click(function(){
      //   console.log(1);
    //	$('.content').css('display','block');
  var dd=$('.contental')
        
  console.log(dd.hasClass('contentbl'))
  var tr=dd.hasClass('contentbl');
  if(tr){
       $('.contental').removeClass('contentbl');
 $(".fzz").css('display','none');
       
      
  }else{
       dd.addClass('contentbl');
        $(".fzz").css('display','block');
  }

})
$('.removecon').click(function(){
      //   console.log(1);
 $('.contental').removeClass('contentbl');
 $(".fzz").css('display','none');
})











//    var images = ['../img/threefloor1.jpg', '../img/threefloor2.jpg', '../img/threefloor3.jpg', '../img/threefloor4.jpg'];
//    var count = 0;
//    //console.log(images);
//    function checked() {
//       if (count == images.length) count = 0;
//       document.getElementById('imgs').src = images[count];
//       count++;
//    }

//    setInterval(function () {
//       checked();
//    }, 6000);


// //三楼图片
//    var imgs = document.getElementById('imgs');
//    var prev2 = document.getElementsByClassName('prev2')[0];
//     var next2=document.getElementsByClassName('next2')[0];
//    //��ȡ����
//    var intext=document.querySelector('#imgs+div>p');
//    //console.log(prev2);
//    //console.log(next2);
//    var textind=[
//        "佛的智慧把爱当作痛苦得根源加以弃绝，扼杀生命的意志；人的智慧应把痛苦当作爱的必然结果加以接受，化为生命的财富",
//       "对于一颗高傲的心来说，莫大的屈辱不是遭人嫉妒，而是嫉妒别人，因为这种情绪向他暴露了一个他最不愿承认的事实：他自卑了",
//        "一个成熟的人是不会去刻意寻求外在的奖赏，以为故意做作的奖赏对人有时是一种愚弄",
//        "谁的经历不是平凡而又平凡？内心经历的不同才在人与人之间铺设了巨大的鸿沟"
//     ];
//    //console.log(textind);
// var cc=0;
// prev2.onclick=function(){
//    console.log(cc);
//    if(cc==-1) {cc=3;}
//    imgs.src=images[cc];
//    intext.innerHTML = textind[cc];
//    cc--;

// };

// next2.onclick=function(){
//    console.log(cc);
//    if(cc==4) {cc=0;}
//    imgs.src=images[cc];
//    intext.innerHTML = textind[cc];
//    cc++;

// }

//搜索功能
var searchvalue=$('#searchvalue');
searchvalue.keypress(function(e){
     var eCode = e.keyCode ? e.keyCode : e.which ? e.which : e.charCode;
     if(eCode==13){
         var val={};
         val.title=searchvalue.val();
         
         $.ajax({
            url:"http://127.0.0.1:3000/my2/search",
            type:"get",
            data:{val},
            dataType:"json"
             }).then(function(result){
                //  console.log(result.msg);
                 //console.log(result.bid);
                 var bid=result.bid
                 if(result.msg==1){
                    window.location.href='http://127.0.0.1:5500/index/list2detail.html?bid='+bid;
                   
                    $('#searchvalue').val('');
                 }else{
                     alert('对不起,没有查询到相关信息');
                     $('#searchvalue').val('');
                 }
             })

     }
})

//动画
// $(window).bind("scroll",function(){
//     var top=$(this).scrollTop();
//     var div1=$('#floor2>div:nth-child(1)');
//     console.log(div1);
//     var  div_top=div1.offset().top-div1.height();
//     if(top>div_top){
//         div1.css("transform","translateX(0)");
//     }
// })

function anim(dom,num,animnum){
$(window).bind("scroll",function(){
    var top=$(this).scrollTop();
    // var div1=$('#floor2>div:nth-child(1)');
    //console.log(dom);
    var  retop=dom.offset().top-dom.height()+animnum;
    if(top>retop){
        dom.css("transform",`translateX(${num})`);
    }
})
}










































































































































});









































