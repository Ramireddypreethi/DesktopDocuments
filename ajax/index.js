var dataShow=document.getElementById('data');
var fetchData=document.getElementById('fetch-data');
function fetch()
{
    var xhttp=new XMLHttpRequest(); //created xml http request
    xhttp.onreadystatechange=function(){ 
        if(xhttp.readyState===4){ //when data is changed it is execute every time
            if(xhttp.status===200){
                let data=JSON.parse(xhttp.responseText);
                dataShow.innerHTML=`
                <h3>${data.title}</h3>
                <p>${data.completed}</p>
                `;
            }
           else
           {
            console.error('Request failed with data fetching');
           }
        }

    };
    xhttp.open('GET',"https://jsonplaceholder.typicode.com/todos/3",true);
    xhttp.send();
}
fetchData.addEventListener('click',fetch);
fetchData.style.backgroundColor="pink";
//get is used for getting the data from database
//post is used to post the data in database
//put is used to create updata request 
//CRUD


//create-post
//read-get
//update-put
//delete-delete

//0(unset)-xmlhttprequest has been created but not cslled
// 1(opened)-method has  been called and the request has been
// 2(header_recieved)-send data FormDa
// 3(loading)-the response is being create or not
// 4(done)