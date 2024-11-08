
let button=document.getElementById("button");
let content=document.getElementById("content");
button.onclick=function(){
    
       
        
        fetch(`https://restcountries.com/v2/all`).then(res => res.json())
        .then(data=>{
           const index=Math.floor(Math.random()*data.length);
           const country=data[index];
           const countryInformation=
           `
           <h4> ${country.name}<h4>

           <p>Capital of ${country.name} is ${country.capital}</p>

           <p>Population of ${country.name} is ${country.population}<p>

          <p> Region of ${country.name} is ${country.region}</p>

           <p>SubRegion of ${country.name} is ${country.subregion}</p>`;

           content.innerHTML=countryInformation;
        })
        .catch(() => {
            alert('There was a problem fetching the country information');
        });


    }
