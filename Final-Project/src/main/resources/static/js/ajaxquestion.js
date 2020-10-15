var save_method;

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
    var question = new Object();
    question.id = document.getElementById("textId").value;
    question.question = document.getElementById("textQuestion").value;
    question.a = document.getElementById("textA").value;
    question.b = document.getElementById("textB").value;
    question.c = document.getElementById("textC").value;
    question.d = document.getElementById("textD").value;
    question.answer = document.getElementById("textAnswer").value;
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
            $('#table').DataTable().ajax.reload();
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
    var questionTable = $('#table').DataTable
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
                $('#table').DataTable().ajax.reload();
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