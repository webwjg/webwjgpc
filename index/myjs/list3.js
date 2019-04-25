$(function(){
    var personal={};
    //获取旅行主题
    var arrzt=[];
    var iz=0;
    $('.nine td>div').bind('click',function(){
        iz++;
     $this=$(this);
     var zunr=$this.next().html();
     // console.log(iz);
     if(iz<4){
         arrzt.push(zunr);
         console.log(arrzt);
         $this.addClass('bh');
         // $.each(arrzt,function(i,value){
         //         // console.log(i+':'+value);
         //         if(i==2){
         //             arrzt.shift(); 
         //         }
         // })
     }
     
 
    })
     
    
    
    $('.text').click(function(){
        var zhuti='';
        zhuti=arrzt.join(',')
    //   console.log(zhuti)
        personal.zhuti=zhuti;
        //  console.log(arrzt);
        
        //目的地
        personal.dest= $('.sec>.dz').val()
       //出发地
       var regp=/^[\u4e00-\u9fa5]{1,}$/;
      var gocity=$('.xinx>div:nth-child(1)>input').val();
       console.log(gocity);
       console.log(regp.test(gocity));
       if(gocity==''){
        $('.xinx>div:nth-child(1)>span').html('出发地址不能为空!')
       }else{
            if(regp.test(gocity)){
                 personal.gocity=gocity;
                 $('.xinx>div:nth-child(1)>span').html('')
           }else{
               $('.xinx>div:nth-child(1)>span').html('请正确填写!')
           }
       }
      var godate=$('.godate').val();
      if(godate==''){
          $('.godate+span').html('出发日期不能为空!');
      }else{
        personal.godate=godate;
      }
      //出行时长
      var godaysum=$('.godaysum').val();
        personal.godaysum=godaysum;
   //酒店级别
    var jibei=$("input[name='leixin']:checked").val();
        personal.jibei=jibei;    
      //console.log(jibei)
      //预算
      var yusu=$('.yus select');
     personal.yusuan=yusu.find("option:selected").text();  
    
     //儿童数
     personal.childsum=$('.erton>ul>li:nth-child(1)>input').val();
     //成人数
     personal.adultsum=$('.erton>ul>li:nth-child(2)>input').val();
     //房间数
     personal.roomsum=$('.erton>ul>li:nth-child(3)>input').val();
    //语言
    var  language=$("input[name='language']:checked").val();
    personal.language=language;  
    //特殊需求
        personal.need=$('.xuqiu>textarea').val();
      //姓氏
      var regxs=/^[\u4e00-\u9fa5]{1,2}$/;
      var xingshi=$('.xingshi').val();
      // console.log(regx.test(xings));
     // console.log(xings);
       if(xingshi.length==0){
          $('.xingshial').html('姓氏 不可为空!');
       }else{
          if(!regxs.test(xingshi)){
              $('.xingshial').html('请输入姓氏正确格式');
           }else{
               //赋值发送
               personal.xs=xingshi
               $('.xingshial').html('');
           }
       }
       //名字
       var dzname=$('.dzname').val();
        var regna=/^[\u4e00-\u9fa5]{2,8}$/;
        if(dzname.length==0){
            $('.dznameal').html('名字 不可为空!');
         }else{
            if(!regna.test(dzname)){
                $('.dznameal').html('请输入姓名正确格式');
             }else{
                 //赋值发送
                 personal.dzname=dzname;
                 
                 $('.dznameal').html('');
             }
         }

          //手机号码
          var dzphone=$('.dzphone').val();
          var regp=/^[1][3-8][0-9]{9}$/;
          // console.log(ydname);
          // console.log(regy.test(ydname));
          if(dzphone.length==0){
              $('.dzphoneal').html('手机号 不可为空!');
           }else{
              if(!regp.test(dzphone)){
                  $('.dzphoneal').html('请输入号码正确格式');
               }else{
                   //赋值发送
                   personal.dzphone=dzphone;
                   $('.dzphoneal').html('');
               }
           }
           //邮箱
           var dzemail=$('.dzemail').val();
      
           if(dzemail.length==0){
               $('.dzemailal').html('邮箱 不可为空!');
            }else{
                  //赋值发送
                  personal.dzemail=dzemail;
                 $('.dzemailal').html('');
            }

            personal.wx=$('.wx').val();

            //
            var am=$('.am').val();
            var pm=$('.pm').val();
            console.log(am+'-'+pm)
            personal.lxtime=am+'-'+pm;

            $.ajax({
                url:"http://127.0.0.1:3000/my2/insertdz",
                type:"get",
                data:{personal},
                dataType:"json" 
            }).then(function(result){  
                 console.log(result);
                 if(result.affectedRows>0){
             
    alert(`信息提交成功,请保存通话畅通,我们会尽快与您联系!\rInformation submission is successful. Please keep the call open. We will contact you as soon as possible!`);
                 }
            })
            

          








     console.log(personal);
    })


































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
});