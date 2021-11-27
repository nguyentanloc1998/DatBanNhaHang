$("#contactForm").validator().on("button", function (event) {

    if (event.isDefaultPrevented()) {
        // handle the invalid form...
        formError();
        submitMSG(false, "Vui Lòng Điền Đầy Đủ Thông Tin!");
    } else {
        // everything looks good!
        submitMSG(true, "");
        event.preventDefault();
        submitForm();
    }
    
});


function submitForm(){
  $(document).ready(function(){
  	  $("#aaa").modal({backdrop: true});
});
  
}

function formSuccess(){
    $("#contactForm")[0].reset();
    submitMSG(true, "Message Submitted!")
}

function formError(){
    $("#contactForm").removeClass().addClass('shake animated').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){
        $(this).removeClass();
    });
}

function submitMSG(valid, msg){

    if(valid){
        var msgClasses = "h3 text-center tada animated text-success";
    } else {
        var msgClasses = "h3 text-center text-danger";
    }
    $("#msgSubmit").removeClass().addClass(msgClasses).text(msg);
}