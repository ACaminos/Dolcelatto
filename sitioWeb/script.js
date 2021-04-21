
$(document).ready(function(){

  $("#incluirHeader").load('./components/header.html')
  $("#incluirFooter").load('./components/footer.html')

  $("body").on('click', '#navCategoriasHeader li a', function(){
    $(".subMenu").html('')
    $(this).parent().find(".subMenu").load('./components/menuList.html') 
    var text = $(this).text();
    if(text == 'BLOG'){
      $(this).parent().addClass("active");
    }else{
      $(this).parent().removeClass("active");
    }
  })
  $("body").on('click', function(){
    $(".subMenu").html('')
  })
 
})


window.addEventListener('load', function(){
  if($("#sliderCar").length > 0 && $("#sliderCar").hasClass('carousel__lista')){
    new Glider(document.querySelector('.carousel__lista'), {
      slidesToShow: 2,
      slidesToScroll: 2,
      draggable: true,
      dots: '.carousel__indicadores',
      arrows: {
          prev: '.carousel__anterior',
          next: '.carousel__siguiente'
      },
      responsive: [
          {
            // screens greater than >= 775px
            breakpoint: 450,
            settings: {
              // Set to `auto` and provide item width to adjust to viewport
              slidesToShow: 2,
              slidesToScroll: 2,
              itemWidth: 150,
              duration: 0.25
            }
          },{
            // screens greater than >= 1024px
            breakpoint: 800,
            settings: {
              slidesToShow: 4,
              slidesToScroll: 4,
              itemWidth: 150,
              duration: 0.25
            }
            },{
              // screens greater than >= 1024px
              breakpoint: 1000,
              settings: {
                slidesToShow: 6,
                slidesToScroll: 6,
                itemWidth: 150,
                duration: 0.25
              }
          }
        ]
  });
  }
  if($("#sliderCarService").length > 0 && $("#sliderCarService").hasClass('carousel__listaSERVICIO')){
    new Glider(document.querySelector('.carousel__listaSERVICIO'), {
      slidesToShow: 1,
      slidesToScroll: 1,
      draggable: false,
      dots: '.carousel__indicadores',
      arrows: {
          prev: '.carousel__anterior',
          next: '.carousel__siguiente'
      },
      responsive: [
          {
            // screens greater than >= 775px
            breakpoint: 450,
            settings: {
              // Set to `auto` and provide item width to adjust to viewport
              slidesToShow: 1,
              slidesToScroll: 1,
              duration: 0.25
            }
          },{
            // screens greater than >= 1024px
            breakpoint: 800,
            settings: {
              slidesToShow: 3,
              slidesToScroll: 3,
              duration: 0.25
            }
          }
        ]
  });
  }
  if($("#sliderMenuList").length > 0 && $("#sliderMenuList").hasClass('carousel__listaMenu')){
    new Glider(document.querySelector('.carousel__listaMenu'), {
      slidesToShow: 1,
      slidesToScroll: 1,
      draggable: true,
      dots: '.carousel__indicadores',
      responsive: [
          {
            // screens greater than >= 775px
            breakpoint: 150,
            settings: {
              // Set to `auto` and provide item width to adjust to viewport
              slidesToShow: 4,
              slidesToScroll: 1,
              itemWidth: 100,
              duration: 0.25
            }
          },{
            // screens greater than >= 1024px
            breakpoint: 150,
            settings: {
              slidesToShow: 4,
              slidesToScroll: 1,
              itemWidth: 100,
              duration: 0.25
            }
          }
        ]
  });
  }

  
})
 
 


let inputs = document.querySelectorAll("input[type=password], input[type=email], input[type=text], input[type=phone], input[type=number]");
        
    
        [].forEach.call(inputs, function(item){
 
          item.addEventListener("focus", function(e){
            var caracteres = item.value;
            if(caracteres.length == 0){
              console.log(caracteres.length)
              toggleClick(e); 
            }         
         });
         item.addEventListener("blur", function(e){
            var caracteres = item.value;
            if(caracteres.length > 0){
              toggleClick(e); 
            }else if(caracteres.length == 0){
              removeClick(e);
            }         
         });
        
        });
 
        function toggleClick(ev){
          let legend = ev.currentTarget.previousElementSibling;
          legend.classList.add("above");
          legend.parentElement.classList.add("active");
        }
        function removeClick(ev){
          let legend = ev.currentTarget.previousElementSibling;
          legend.classList.remove("above");
          legend.parentElement.classList.remove("active");
        }


        $("body").on("click", "#mySidenav", function(){
          $(this).css('width', '0px');
        })
 
 

