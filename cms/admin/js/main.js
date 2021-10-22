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


    
})

