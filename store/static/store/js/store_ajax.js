// $(document).ready(function(){

//     // alert( "Data Saved: " );

//     $("#createProductBtn").click(function(){
//         alert( "Data Saved: " );
//     })
        
   
//     // $("#createProductBtn").click(function(){

//     //     var serializeData = $("#creatProductForm").serialize();
//     //     console.log(serializeData);

//     //     $.ajax({
//     //         url: $("#creatProductForm").data('url'),
//     //         data: serializeData,
//     //         type: 'post',
//     //         // success: function(response){
//     //         //     $("#product-list").append('<p><span class="close-btn">X</span><span class="form-content-result">' + response.product.name + ' - ' + response.product.price + '</span></p>')
//     //         // }
//     //     }).done(function( response ) {
//     //         // $("#product-list").append('<p><span class="close-btn">X</span><span class="form-content-result">' + response.product.name + ' - ' + response.product.price + '</span></p>')
//     //         alert( "Data Saved: " );
//     //     });
    
//     // })
    
// });


$(document).ready(function(){
    $("#createProductBtn").click(function(){
        var serializeData = $("#creatProductForm").serialize();

        $.ajax({
            url: $("#creatProductForm").data('url'),
            data: serializeData,
            type: 'post',
            success: function(response) {
                // alert(response.product.name);
                alert('all done');
            },
            error: function(response){
                alert("fail");
            }

            //  success: function(response){
            //     $("#product-list").append('<p><span class="close-btn">X</span><span class="form-content-result">' + response.product.name + ' - ' + response.product.price + '</span></p>')
            // }
        });


        
    })
})