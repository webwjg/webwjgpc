$(function(){

    var yid=sessionStorage.getItem("yid");
      
    // console.log(yid)
    $.ajax({
        url:"my2/yuxinxi",
        type:"get",
         data:{yid},
        dataType:"json" //JSON.parse()
     }).then(function(result){             
        // console.log(result.data);
        var res=result.data;
        // console.log(res)
          $('.newright>div:nth-child(2)>div:nth-child(1)>span:nth-child(2)').html(res.date); 
          //入住晚数
          $('.newright>div:nth-child(2)>div:nth-child(2)>span:nth-child(2)').html(`${res.night}晚`);  //退房日期
          $('.newright>div:nth-child(3)>div:nth-child(1)>span:nth-child(2)').html(res.outdate);
          //房间及人数
          $('.newright>div:nth-child(3)>div:nth-child(2)>span:nth-child(2)').html(res.num);


    //提交订单按钮
 var tijbtn=$('.tabl>div:last-child>input');
 tijbtn.click(function(){
            // console.log(1);

   
      var tjres=res;

   //获取表单内容,插入数据库
        //    获取成人数量
        var crsum=$('.crsum');
        // console.log(crsum.val());
        var reg=/^\d{1,2}$/;
         var bo=reg.test(crsum.val());

         tjres.crsum=crsum.val();

        //  console.log(bo);
        //获取儿童数量
         var childsum=$('.childsum');
         tjres.childsum=childsum.val();
         
        //获取性别  1  /  0
         var sex=$("input[name='sex']:checked").val();
            if(sex==undefined){
                tjres.sex='-1'; 
            }else{
                tjres.sex=sex;
            }
        console.log(sex);

        //获取姓氏和名字
        var regx=/^[\u4e00-\u9fa5]{1,2}$/;
        var xings=$('.xings').val();
        // console.log(regx.test(xings));
       // console.log(xings);
         if(xings.length==0){
            $('.xingsal').html('姓氏 不可为空!');
         }else{
            if(!regx.test(xings)){
                $('.xingsal').html('请输入姓氏正确格式');
             }else{
                 //赋值发送
                 tjres.xings=xings;

                 $('.xingsal').html('');
             }
         }

         
        var ydname=$('.ydname').val();
        var regy=/^[\u4e00-\u9fa5]{2,8}$/;
        // console.log(ydname);
        // console.log(regy.test(ydname));
        if(ydname.length==0){
            $('.ydnameal').html('名字 不可为空!');
         }else{
            if(!regy.test(ydname)){
                $('.ydnameal').html('请输入姓名正确格式');
             }else{
                 //赋值发送
                 tjres.ydname=ydname;
                 
                 $('.ydnameal').html('');
             }
         }
          
         //手机号码
         var ydphone=$('.ydphone').val();
         var regp=/^[1][3-8][0-9]{9}$/;
         // console.log(ydname);
         // console.log(regy.test(ydname));
         if(ydphone.length==0){
             $('.ydphoneal').html('手机号 不可为空!');
          }else{
             if(!regp.test(ydphone)){
                 $('.ydphoneal').html('请输入号码正确格式');
              }else{
                  //赋值发送
                  tjres.ydphone=ydphone;
                  $('.ydphoneal').html('');
              }
          }
            //邮箱
          var ydemail=$('.ydemail').val();
      
          if(ydemail.length==0){
              $('.ydemailal').html('邮箱 不可为空!');
           }else{
                 //赋值发送
                 tjres.ydemail=ydemail;
                 
                $('.ydemailal').html('');
           }

          //获取微信号
          var wx=$('.weix').val();
          console.log(wx);
          tjres.wx=wx;
          
          //获取其他要求
          var other=$('.tabl textarea').val();
          console.log(other);
          res.other=other;
         console.log(tjres);

        // 发送ajax,插入数据
        console.log(tjres.xings)
        if(tjres.xings==undefined || tjres.ydname==undefined || tjres.ydphone==undefined || tjres.ydemail==undefined){
                //  alert('有必填信息未填');
        }else{
            $.ajax({
                url:"my2/insertyud",
                type:"get",
                data:{tjres},
                dataType:"json" 
            }).then(function(result){  
                 console.log(result);
            })
        }
    }) //点击
    

      





        //修改信息按钮
        var xiugais=$('.nc>span:nth-child(3)');
        // console.log(xiugais);
        xiugais.bind("click",function(){
            console.log(1);
            $('.alene').addClass('alene2');
            // $('.alene').css('z-index','2');
            
        })
        var dealene=$('.dealene');
        dealene.click(function(){
            console.log(1);
            $('.alene').removeClass('alene2');
            $('.alene').css('transition','0.8s');
        });




   //导航栏隐藏内容

    var mdd=$('.nav>ul>li:nth-child(1)');
    mdd.mouseenter(function(){
        $('.cont').removeClass('cont2')
        $('.cont').addClass('cont1');
        $('.cont').css('opacity','1');
        // $('.cont').css('display','block');
        

    })
    function display(){
        $('.cont').css('display','none');  
    }
    $('#cont').mouseleave(function(){
            $('.cont').removeClass('cont1');
            $('.cont').addClass('cont2');
           
           setInterval(function(){
                 display()
            },3000);
    
    })







})



})