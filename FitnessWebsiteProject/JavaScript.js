function searchTable() {

    var input = document.getElementById("searchInput").value;
    var rows = document.getElementsByTagName("tr");

  
    for (var i = 0; i < rows.length; i++) {
       
        var cells = rows[i].getElementsByTagName("td");
        for (var j = 0; j < cells.length; j++) {
            var cellContent = cells[j].textContent;
            if (cellContent.toLowerCase().indexOf(input.toLowerCase()) > -1) {
                rows[i].style.backgroundColor = "yellow";
            } else {
                rows[i].style.backgroundColor = "";
            }
        }
    }
}