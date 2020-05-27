(function (hi, undefined) {
  const name = ['Lenny', 'Bruce', "🐶"];

function sayHi(first, last, emoji) {
  alert(`Hey there ${first} ${last} ${emoji}`);
}

  sayHi(...name);
})(window.hi = window.hi || {});

