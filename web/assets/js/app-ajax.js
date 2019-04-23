//$(document).ready(function() {
//        $('#userName').blur(function(event) {
//                var name = $('#userName').val();
//                $.get('GetUserServlet', {
//                        userName : name
//                }, function(responseText) {
//                        $('#ajaxGetUserServletResponse').text(responseText);
//                });
//        });
//});
//

$(document).ready(function() {
    $('#userName').blur(function() {
        $.ajax({
            url : 'GetUserServlet',
            data : {
                userName : $('#userName').val()
            },
            success : function(responseText) {
                $('#ajaxGetUserServletResponse').text(responseText);
            }
        });
    });

    $('#bookName').blur(function() {
        $.ajax({
            url : 'GetBookServlet',
            data : {
                bookName : $('#bookName').val()
            },
            success : function(responseText) {
                $('#ajaxGetBookServletResponse').text(responseText);
            }
        });
    });

});