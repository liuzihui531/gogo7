$(function() {
    /**
     * 全选反选
     */
    $('#checkAll').click(function() {
        if ($(this).attr('checked')) {
            $('.fortr input[type="checkbox"]').each(function() {
                $(this).attr('checked', 'checked');
            });
        } else {
            $('.fortr input[type="checkbox"]').each(function() {
                $(this).removeAttr('checked');
            });
        }

    });

    /**
     * 通过选择城市，选出商圈和outlets 的ajax
     */
    $('#city').change(function() {
        $.post(cityURL, {'Area_ID': $(this).val()}, function(data) {
            if (data[0] != null) {
                //$('#Business_circle').html("<option value='0'>--请选择商圈--</option>");
                var Business_circle = "";
                if (data[0].length > 0) {
                    for (var i = 0; i < data[0].length; i++) {
                        Business_circle += "<option value='" + data[0][i]['BC_ID'] + "'>" + data[0][i]['BC_Name'] + "</option>";
                    }
                }
                $('#Business_circle').html("<option value='0'>--请选择商圈--</option>" + Business_circle);
            } else {
                $('#Business_circle').html("<option value='0'>--请选择商圈--</option>");
            }
            if (data[1] != null) {
                //$('#Outlets').html("<option value='0'>--请选择Outlets--</option>");
                var Outlets = "";
                if (data[1].length > 0) {
                    for (var i = 0; i < data[1].length; i++) {
                        Outlets += "<option value='" + data[1][i]['Outlets_ID'] + "'>" + data[1][i]['Build_Name'] + "</option>";
                    }
                }
                $('#Outlets').html("<option value='0'>--请选择Outlets--</option>" + Outlets);
            } else {
                $('#Outlets').html("<option value='0'>--请选择Outlets--</option>");
            }
        }, 'json');
    });


});
/**
 * 全部删除
 */
function delall() {
    if (!confirm('确定要删除？')) {
        return;
    }
    var my_id = '';
    $(".fortr :checked").each(function() {
        my_id += $(this).attr('myid') + ',';
    });
    $('#myids').val(my_id);
    $('#form1').submit();
}

$(function() {
    /**
     * 主要品牌多选
     */
    $('#searchbrand').live('click', function() {
        var city_id = $('.brand_city_id').val();
        var brand_name = $('#search_brand_name').val();
        var posturl = brand_url;
        var checked_id = $('#brand_checkboxhidden input').serializeArray();
        $.post(posturl, {city_id: city_id, brand_name: brand_name, checked_id: checked_id}, function(data) {
            $('.main_brand').slideDown();
            $('#brand_checkbox').html(data.message);
        }, 'json');
    });
    $('#brand_checkbox input').live('click', function() {
        var ischecked = $(this).is(':checked'); //true为选中，false为不选中
        var id = $(this).val();
        var brand_name = $('#label_brand_' + id).html();
        var hiddenInput = "<input type='hidden' name='brand_id[]' value='" + id + "' />";
        if (ischecked) {
            $('#brand_checkboxhidden').append(hiddenInput);
            var brand_text = "<span id='brand_text_" + id + "' style='padding:5px'>" + brand_name + "</span>";
            $('#main_brand').append(brand_text);
        } else {
            $('#brand_checkboxhidden input[value="' + id + '"]').remove();
            $('#main_brand #brand_text_' + id).remove();
        }
    });
    //主要品牌多选 end
     /**
     * 主要品牌单选
     */
    $('#searchbrand_radio').live('click', function() {
        var city_id = $('.brand_radio_city_id').val();
        var brand_radio_name = $('#search_brand_radio_name').val();
        var posturl = brand_radio_url;
        var checked_id = $('#brand_radio_checkboxhidden input').serializeArray();
        $.post(posturl, {city_id: city_id, brand_radio_name: brand_radio_name, checked_id: checked_id}, function(data) {
            $('.main_brand_radio').slideDown();
            $('#brand_radio_checkbox').html(data.message);
        }, 'json');
    });
    $('#brand_radio_checkbox input').live('click', function() {
        var ischecked = $(this).is(':checked'); //true为选中，false为不选中
        var id = $(this).val();
        var brand_radio_name = $('#label_brand_' + id).html();
        var hiddenInput = "<input type='hidden' name='brand_id' value='" + id + "' />";
        if (ischecked) {
            $('#brand_radio_checkboxhidden').html(hiddenInput);
            var brand_radio_text = "<span id='brand_radio_text_" + id + "' style='padding:5px'>" + brand_radio_name + "</span>";
            $('#main_brand_radio').html(brand_radio_text);
        }
    });
    //主要品牌单选 end
    /**
     *  临近景点多选
     */
    $('#searchscene').live('click', function() {
        var city_id = $('.brand_city_id').val();
        var scene_name = $('#search_scene_name').val();
        var posturl = scene_url;
        var checked_id = $('#scene_checkboxhidden input').serializeArray();
        $.post(posturl, {scene_name: scene_name, checked_id: checked_id,city_id:city_id}, function(data) {
            $('.main_scene').slideDown();
            $('#scene_checkbox').html(data.message);
        }, 'json');
    });
    $('#scene_checkbox input').live('click', function() {
        var ischecked = $(this).is(':checked'); //true为选中，false为不选中
        var id = $(this).val();
        var scene_name = $('#label_scene_' + id).html();
        var hiddenInput = "<input type='hidden' name='scene_id[]' value='" + id + "' />";
        if (ischecked) {
            $('#scene_checkboxhidden').append(hiddenInput);
            var scene_text = "<span id='scene_text_" + id + "' style='padding:5px'>" + scene_name + "</span>";
            $('#main_scene').append(scene_text);
        } else {
            $('#scene_checkboxhidden input[value="' + id + '"]').remove();
            $('#main_scene #scene_text_' + id).remove();
        }
    });
    /**
     *  多选添加商家
     */
    $('#searchseller').live('click', function() {
        var seller_name = $('#search_seller_name').val();
        var posturl = seller_url;
        var checked_id = $('#seller_checkboxhidden input').serializeArray();
        $.post(posturl, {seller_name: seller_name, checked_id: checked_id}, function(data) {
            $('.main_seller').slideDown();
            $('#seller_checkbox').html(data.message);
        }, 'json');
    });
    $('#seller_checkbox input').live('click', function() {
        var ischecked = $(this).is(':checked'); //true为选中，false为不选中
        var id = $(this).val();
        var seller_name = $('#label_seller_' + id).html();
        var hiddenInput = "<input type='hidden' name='seller_id[]' value='" + id + "' />";
        if (ischecked) {
            $('#seller_checkboxhidden').append(hiddenInput);
            var seller_text = "<span id='seller_text_" + id + "' style='padding:5px'>" + seller_name + "</span>";
            $('#main_seller').append(seller_text);
        } else {
            $('#seller_checkboxhidden input[value="' + id + '"]').remove();
            $('#main_seller #seller_text_' + id).remove();
        }
    });
    
    
    $('.close').click(function() {
        $(this).closest('div').slideUp();
    });
    
    /**
     *  通过城市选择商圈和outlets
     */
    $('#Seller_city_id').bind('change',function(){
        var city_id = $(this).val();
        if(!city_id){
            var bc_html = "<option>--请选择商圈--</option>";
            var outlets_html = "<option>--请选择outlets--</option>";
            $('#Seller_bc_id').html(bc_html);
            $('#Seller_outlets_id').html(outlets_html);
            return false;
        }
        var url = posturl;
        $.post(url,{city_id:city_id},function(data){
            var bc_html = "<option>--请选择商圈--</option>";
            var outlets_html = "<option>--请选择outlets--</option>";
            if(data.message.bc){
                $.each(data.message.bc,function(k,v){
                    bc_html += "<option value='"+v.id+"'>"+v.bc_name+"</option>";
                });
            }
            if(data.message.outlets){
                $.each(data.message.outlets,function(k,v){
                    outlets_html += "<option value='"+v.id+"'>"+v.outlets_name+"</option>";
                });
            }
            $('#Seller_bc_id').html(bc_html);
            $('#Seller_outlets_id').html(outlets_html);
        },'json');
    });
    /**
     * 通过城市选择商家
     */
    $('#get_city_id').bind('change',function(){
        var city_id = $(this).val();
        if(!city_id){
            var seller_html = "<option>--请选择商家--</option>";
            $('#get_city_seller_id').html(seller_html);
            return false;
        }
        var url = posturl;
        $.post(url,{city_id:city_id},function(data){
            var seller_html = "<option>--请选择商家--</option>";
            if(data.message.seller){
                $.each(data.message.seller,function(k,v){
                    seller_html += "<option value='"+v.id+"'>"+v.seller_name+"</option>";
                });
            }
            $('#get_city_seller_id').html(seller_html);
        },'json');
    });
});