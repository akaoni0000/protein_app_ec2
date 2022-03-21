let changeImg = document.getElementById("changeImg");
let userImgForm = document.getElementById("userImgForm");
let submitBtn = document.getElementById("submitBtn");
if (changeImg!=null && userImgForm!=null) {
    changeImg.addEventListener("click", function(){
        userImgForm.click();
    });
    userImgForm.addEventListener("change", function(){
        submitBtn.click();
    });
}


