var questionNum = 0;
var question = '<h2>O que posso ajudar?</h2>';

var output = document.getElementById('output');
output.innerHTML = question;

function bot() {
    var input = document.getElementById("input").value;
    console.log(input);

    if (questionNum == 0) {
    output.innerHTML = '<h2>Basta fazer isso...</h2>';
    document.getElementById("input").value = "";
    question = '<h2>Ajudo em algo mais?</h2>';
    setTimeout(timedQuestion, 2000);
    }

    else if (questionNum == 1) {
    output.innerHTML = '<h2>por nada</h2>';
    document.getElementById("input").value = "";
    question = '<h2>....?</h2>';
    setTimeout(timedQuestion, 2000);
    }
}

function timedQuestion() {
    output.innerHTML = question;
}


$(document).keypress(function(e) {
  if (e.which == 13) {
    bot();
    questionNum++;
  }
});
