//question 1 
function primefactors(num) {
    function isprime(num) {
      for (let i = 2; i <= Math.sqrt(num); i++)
      {
        if (num % i === 0) return false;
      }
      return true;
    }
    const result = [];
    for (let i = 2; i <= num; i++)
    {
      while (isprime(i) && num % i === 0) 
      {
        if (!result.includes(i)) result.push(i);
        num /= i;
      }
    }
    return result;
  }
  console.log(primefactors(221));
  console.log(primefactors(105));
  
  //question 2
  function toggle(txt) {
    var str1 = "";
    for (var i = 0; i < txt.length; i++) {
        if (/[A-Z]/.test(txt[i])) str1 += txt[i].toLowerCase();
        else str1 += txt[i].toUpperCase();
    }
    return str1;
}

console.log(toggle("Arushi"));
console.log(toggle("BoHrA"));

//question 3
function digit(no) {
    var one = no % 10;
    while (no) {
      if (no % 10 !== one) return false;
  no = Math.floor(no / 10);
    }
    return true
  }
  
  console.log(digit(8976));
  console.log(digit(9999));
  
  //question 4
  function sum(str) {
    var sum = 0;
  
    for (var i = 0; i < str.length; i++)
    {
  
      if (/[0-9]/.test(str[i])) sum += parseInt(str[i])
    }
    return sum;
  }
  
  console.log(sum("abcd12efg9poiy69ok12lo9"))
  console.log(sum("arushi8bohra7"))
  
  
