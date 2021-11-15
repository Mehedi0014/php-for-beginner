$(document).ready(function(){

	// CK Editor =============================================
    ClassicEditor
        .create( document.querySelector( '.ckClassicEditor' ) )
        .catch( error => {
            console.error( error );
    } );    

    // $('#selectAllBoxes').click(function(){
    // 	$('.chackBoxes').prop('checked', $(this).prop('checked'));
    // })

    $('#selectAllBoxes').click(function(){
        if($(this).prop("checked")) {
            $(".chackBoxes").prop("checked", true);
        } else {
            $(".chackBoxes").prop("checked", false);
        }                
    });

    // Add Loader =============================================
    var div_box = "<div id='load-screen'><div id='loading'></div></div>";
    $('body').prepend(div_box);

    $('#load-screen').delay(700).fadeOut(600, function(){
        $(this).remove();
    })
    
}) // Document dot ready 

function loadUsersOnline(){
    $.get("functions.php?onlineusers=result", function(data){
        $(".usersonline").text(data);
    });
}
setInterval(
    function(){
        loadUsersOnline();
    }, 
    500
);
