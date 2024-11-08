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
                <h3>${data.city}</h3>
                <p>${data.country}</p>
                `;
            
            }
           else
           {
            console.error('Request failed with data fetching');
           }
        }

    };
    xhttp.open('GET',"https://raw-tutorial.s3.eu-west-1.amazonaws.com/patients.json/10",true);
    xhttp.send();
}
fetchData.addEventListener('click',fetch);
fetchData.style.backgroundColor="pink";