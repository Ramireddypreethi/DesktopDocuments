var breedImage=document.querySelector('#dog-image');
var dropDown=document.querySelector("#dog-breeds");
var allowSubmit=true;
var breed;
fetch("https://dog.ceo/api/breeds/list/all")
.then(response=>response.json())
.then(data=>{
    let dogbreeds=data.message;
    for(let breed in dogbreeds){
        let option=document.createElement("option");
        option.value=breed;
        option.textContent=breed;
        dropDown.appendChild(option);

    }

});
dropDown.addEventListener("change",function(){
    allowSubmit=true;
});
document.querySelector("formbutton").addEventListener("click",function(e){
    e.preventDefault();
    if(breed!=undefined)
    {
        dispalyDog(breed);
    }
});
