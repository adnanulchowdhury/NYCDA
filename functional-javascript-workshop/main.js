//#1
function myCalcuator(operator, num1, num2){
    if (operator == "add" ) {
        return num1+num2;
    } else if(operator == "subtract") {
        return num1-num2;
    } else if(operator == "multiply") {
        return num1 * num2;
    } else if(operator == "divide") {
        return num1 / num2;
    } else {
        return `error`;
    }
}

//#2

function ask(question, answer){
    

    let total = 0;
    
    for (i = 0; i < questions.length; ++i) {
        
       let user = prompt(questions[i]);
        
        if (user == answers[i]){
          total += 1;
        } 
    }
  alert(`Your total score is ${total} !`)
}

    let questions = [  
    "Was Kim born in 1985?",
    "Will Rob get out of jail?",
    "Does North seem happy?",
    "Kanye released 'Heartless' in 2008?"
    ];

    let answers = [
        "yes",
        "no",
        "no",
        "yes"
    ];

ask(questions, answers);

//Bonus #2

function factorial(numero){
    for(i = numero-1; i > 0; i--){
        numero = numero*i;
    }
    return numero;
}

//or

function factorial(numero){
    if (numero === 0 || numero === 1){
      return 1;
    }
    return numero * factorial(numero - 1);
  }
  
  factorial(6);