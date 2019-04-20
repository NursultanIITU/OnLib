$(document).ready(function() {
       $('#userName').blur(function(event) {
               var name = $('#userName').val();
               $.get('FindUserServlet', {
                       userName : name
               }, function(responseText) {
                       $('#get_student_name').text(responseText);
               });
       });
});

//
// $(document).ready(function() {
//     // вызов функции после потери полем 'userName' фокуса
//     $('#studentid').blur(function() {
//         $.ajax({
//             url : 'FindUserServlet',     // URL - сервлет
//             data : {                 // передаваемые сервлету данные
//                 userName : $('#studentid').val()
//             },
//             success : function(response) {
//                 // обработка ответа от сервера
//                 $('#get_student_name').text(response);
//             }
//         });
//     });
// });