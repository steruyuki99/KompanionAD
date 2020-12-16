function goTop(){
    const gotopbtn = document.querySelector("#gotopbtn");

    gotopbtn.addEventListener("click", function(){
        //window.scrollTo(0, 0);
        // $("html, body").animate({scrollTop: 0}, slow);

        window.scrollTo({
            top: 0,
            left: 0,
            behavior: "smooth"
        });
    });
}