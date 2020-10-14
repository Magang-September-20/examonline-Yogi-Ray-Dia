var save_method;

$(document).ready(function () {
    var questionTable = $('#questionTable').DataTable({
        "sAjaxSource": "/question/getAll",
        "sAjaxDataProp": "",
        "columns": [
            {"mData": "id"},
            {"mData": "question"},
            {"mData": "a"},
            {"mData": "b"},
            {"mData": "c"},
            {"mData": "d"},
            {"mData": "answer"},
            {
                "data": "id",
                "orderable": false,
                "render": function (data, type, row) {
                    return '<button onclick = "update(' + row.id + ')"  class="btn btn-warning" type="button" data-toggle="modal" data-target ="#questionModal" style="color:white;"> Update</button>\
                       <button onclick = "hapus(' + row.id + ')" class="btn btn-danger" type="button"> Delete </button>'
                }
            }
        ]
    })
});

function insert() {
    save_method = 'add';
    document.getElementById('labelId').hidden = true;
    document.getElementById('textId').hidden = true;
}

function update(getId) {
    save_method = 'update';
    document.getElementById('labelId').hidden = false;
    document.getElementById('textId').hidden = false;
    document.getElementById('textId').readOnly = "true";

    $.ajax({
        url: "getById",
        type: "GET",
        dataType: "json",
        data: {id: getId},
        success: function (result) {
            $("#textId").val(result.id);
            $("#textQuestion").val(result.question);
            $("#textA").val(result.a);
            $("#textB").val(result.b);
            $("#textC").val(result.c);
            $("#textD").val(result.d);
            $("#textAnswer").val(result.answer);
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function saveQuestion() {
    var person = new Object();
    person.id = document.getElementById("textId").value;
    person.name = document.getElementById("textQuestion").value;
    person.a = document.getElementById("textA").value;
    person.b = document.getElementById("textB").value;
    person.c = document.getElementById("textC").value;
    person.d = document.getElementById("textD").value;
    person.answer = document.getElementById("textAnswer").value;
    var Simpan;

    if (save_method == 'add') {
        Simpan = 'Added';
    } else {
        Simpan = 'Updated';
    }

    $.ajax({

        url: "/save",
        type: "POST",
        data: JSON.stringify(question),
        contentType: "application/json; charset=utf-8",
        success: function () {
            $('#questionTable').DataTable().ajax.reload();
            Swal.fire({
                icon: 'success',
                title: 'Data successfull ' + Simpan,
                showConfirmButton: false,
                timer: 1500
            })
            document.getElementById('insertForm').reset();
        },
        error: function (errormessage) {
            alert(errormessage.responseText);
        }
    });
}

function hapus(getId) {
    var questionTable = $('#questionTable').DataTable
    Swal.fire({
        title: 'Are you sure?',
        text: "You won't be able to revert this!",
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#3085d6',
        cancelButtonColor: '#d33',
        confirmButtonText: 'Yes, delete it!'
    }).then((result) => {
        $.ajax({
            url: "deleteById",
            type: "GET",
            data: {id: getId},
            success: function () {
                $('#questionTable').DataTable().ajax.reload();
                Swal.fire({
                    icon: 'success',
                    title: 'Data successfull deleted',
                    showConfirmButton: false,
                    timer: 1500
                })
            },
            error: function (errormessage) {
                alert(errormessage.responseText);
            }
        });
    })
}   