var table="my-table"
$('#maxRows').on('change',function(){
    $('.pagination').html('')
    var trnum=0;
    var maxRows=parseInt($(this).val());
    var titalRows=$(table+'tbody tr').length
    $(table+'tr:gt(0)').each(function(){
        trnum++
        if(trnum>maxRows){
            $(this).hide();
        
        }
        if(trnum<=maxRows){
            $(this).show()
        }

    })
    if(totalRows>maxRows){
        var pagenum=Math.ceil(totalRows/maxRows)
        for (let index = 1; index < pagenum; index++) {
            $('.pagination').append('<li data-page="'+i+'">\<span>'+i++ +'<span class="sr-only">(current)</span>\</li>').show()
            
        }

    }
    $('.pagination li:first-child').addClass('active')
    $('.pagination li').on('click',function(){
        var pageNum=$(this).attr('data-page')
        var trindex=0;
        $('.pagination li').removeClass('active')
        $(this).addClass('active')
        $(table+'tr:gt(0').each(function(){
            trindex++;
            if(trindex>(maxRows*pageNum)|| trindex<=((maxRows*pageNum)-maxRows)){
                $(this).hide()

            }
            else{
                $(this).show()  
            }
        })
    })

})

$(function(){
    $('table tr:eq(0)').prepared()
    var id=0;
    $('table tr:gt(0)').each(function(){
        id++
        $(this).prepared('<td>'+id+'</td>')

    })
})
