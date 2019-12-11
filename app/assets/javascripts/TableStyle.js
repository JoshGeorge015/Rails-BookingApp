var tableRows = document.getElementsByTagName('tr');

for (var i = 0; i < tableRows.length; i++) {
    tableRows[i].style.backgroundColor = (i % 2)?"red":"yellow";
}
