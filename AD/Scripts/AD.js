//function getbyID(id) {
//    $('#DvrImage').css('border-color', 'lightgrey');
//    $('#TicketNo').css('border-color', 'lightgrey');
//    $('#SrNo').css('border-color', 'lightgrey');
//    $.ajax({
//        url: "AD/GetImgInformation/" + id,
//        typr: "GET",
//        contentType: "application/json;charset=UTF-8",
        
//        success: function (result) {
//            $('#DvrImage').val(result.DvrImage);
//            $('#TicketNo').val(result.TicketNo);
//            $('#SrNo').val(result.SrNo);
//            $('#btnDelete').show();
//            $('#btnUpdate').show();
//            $('#btnAdd').hide();
//        },
//        error: function (errormessage) {
//            alert(errormessage.responseText);
//        }
//    });

//}

$(document).on("click", ".modalLink", function () {
    var passedID = $(this).data('SrNo');
    $(".modal-body .hiddenid").val(passedID);
});