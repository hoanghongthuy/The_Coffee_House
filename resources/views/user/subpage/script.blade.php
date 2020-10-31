<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="{{url('Coffee')}}/js/jquery.min.js"></script>
<script src="{{url('Coffee')}}/js/bootstrap.min.js"></script>
<script type="text/javascript" src="{{url('Coffee')}}/js/owl.carousel.min.js"></script>
<script src="{{url('Coffee')}}/croppie.js"></script>
<script src="{{url('Coffee')}}/js/custom.js"></script>
<script src="{{url('Coffee')}}/js/main.js"></script>
<script>
    function addCart(id) {
        $.ajax({
				url: 'cart/add/'+id,
				type: 'GET',
				success: function(data){
					alert(data);
				}
			});
    }
    function delCart(id) {
        $.ajax({
				url: 'cart/delete/'+id,
                type: 'GET',
                dataType:'json',
				success: function(data){
                    $('.'+id).css('display','none');
                    $('.totalGH').html('$ '+data.tong);
                    $('.totalDem').html('$ '+data.dem);
				}
			});
    }
    function cartNew(id,sl){
        var id = id;
        var sl = sl;
        $.ajax({
				url: 'cart/addpush',
                type: 'GET',
                data: {id: id, sl: sl},
                dataType:'json',
				success: function(data){
                   $('#t'+id).html(data.tong);
                   $('.totalGH').html('$ '+data.sum);
                    $('.totalDem').html('$ '+data.dem);
				}
			});
    }
    </script>