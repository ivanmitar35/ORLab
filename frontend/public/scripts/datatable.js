$(function () {
  $.ajax({
    url: "data/getdatatable",
    method: "GET",
    dataType: "json",
    success: function (data) {
      let rows = "";
      data.forEach((row) => {
        telefon = row.telefon != null ? row.telefon : "",
        fax = row.fax != null ? row.fax : "";
        rows += `<tr>
                            <td>${row.grad_cetv}</td>
                            <td>${row.naziv}</td>
                            <td>${row.adresa}</td>
                            <td>${telefon}</td>
                            <td>${fax}</td>
                            <td>${row.email}</td>
                            <td>${row.web}</td>
                            <td>${row.nadlezan}</td>
                            <td>${row.izvor}</td>
                            <td>${row.izradio}</td>
                            <td>${row.x}</td>
                            <td>${row.y}</td>
                        </tr>`;
      });
      $("#myTable tbody").html(rows);

      var table = $("#myTable").DataTable({
        paging: true,
        searching: true,
        ordering: true,
        info: true,
        lengthChange: true,
        pageLength: 10,
        columns: [
          { data: "grad_cetv" },
          { data: "naziv" },
          { data: "adresa" },
          { data: "telefon" },
          { data: "fax" },
          { data: "email" },
          { data: "web" },
          { data: "nadlezan" },
          { data: "izvor" },
          { data: "izradio" },
          { data: "x" },
          { data: "y" },
        ],
        initComplete: function () {
          this.api()
            .columns()
            .every(function () {
              let column = this;
              let title = column.footer().textContent;

              let input = document.createElement("input");
              input.placeholder = title;
              column.footer().replaceChildren(input);

              input.addEventListener("keyup", () => {
                if (column.search() !== this.value) {
                  column.search(input.value).draw();
                }
              });
            });

          var r = $("#myTable tfoot tr");
          $("#myTable thead").append(r);
        },
      });

      $("#myTable thead tr:eq(1) th input").on("click", function (e) {
        e.stopPropagation();
      });

      $("#downloadLinks").append(
        '<button id="downloadBtnCsvFiltered">CSV download filtered</button>'
      );
      $("#downloadLinks").append(
        '<button id="downloadBtnJsonFiltered">JSON download filtered</button>'
      );

      $("#downloadBtnCsvFiltered").on("click", function () {
        var filteredRows = table.rows({ filter: "applied" }).data();

        var csv =
          "grad_cetv,naziv,adresa,telefon,fax,email,web,nadlezan,izvor,izradio,x,y\n";
        filteredRows.each(function (row) {
          csv += row.grad_cetv + ',' + 
                 row.naziv + ',' + add_quotes_if_comma(row.adresa) + ',' + 
                 row.telefon + ',' + row.fax + ',' + row.email + ',' + 
                 row.web + ',' + row.nadlezan + ',' + row.izvor + ',' + 
                 add_quotes_if_comma(row.izradio) + ',' + row.x + ',' + row.y + '\n';
        });

        var hiddenElement = document.createElement("a");
        hiddenElement.href = "data:text/csv;charset=utf-8," + encodeURI(csv);
        hiddenElement.target = "_blank";
        hiddenElement.download = "Geoportal_vatrogasci_filtrirano.csv";
        hiddenElement.click();
      });

      $("#downloadBtnJsonFiltered").on("click", function () {
        var filteredRows = table.rows({ filter: "applied" }).data();

        var groupedData = {};

        filteredRows.each(function (row) {
          if (!groupedData[row.grad_cetv]) {
            groupedData[row.grad_cetv] = [];
          }

          groupedData[row.grad_cetv].push({
            naziv: row.naziv,
            adresa: row.adresa,
            telefon: row.telefon != "" ? row.telefon : null,
            fax: row.fax != "" ? row.fax : null,
            email: row.email,
            web: row.web,
            nadlezan: row.nadlezan,
            izvor: row.izvor,
            izradio: row.izradio,
            x: Number(row.x),
            y: Number(row.y),
          });
        });

        var formattedData = Object.keys(groupedData).map(function (
          gradskaCetvrt
        ) {
          return {
            grad_cetv: gradskaCetvrt,
            vatr_postaja: groupedData[gradskaCetvrt],
          };
        });

        var hiddenElement = document.createElement("a");
        hiddenElement.href =
          "data:text/json;charset=utf-8," +
          encodeURI(JSON.stringify(formattedData, null, 2));
        hiddenElement.target = "_blank";
        hiddenElement.download = "Geoportal_vatrogasci_filtrirano.json";
        hiddenElement.click();
      });
    },
    error: function (err) {
      console.error("Error", err);
    },
  });
});

function add_quotes_if_comma(str) {
  if (str.includes(",")) {
    return '"' + str + '"';
  }
  return str;
}
