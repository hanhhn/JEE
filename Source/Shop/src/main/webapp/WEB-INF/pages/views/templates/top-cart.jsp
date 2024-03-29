<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="j2ee.group9.shop.model.ShoppingCart"%>
<%@ page import="j2ee.group9.shop.model.Cart"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%
	ShoppingCart CurrentShoppingCart = (ShoppingCart) request.getSession().getAttribute("ShoppingCart");
	List<Cart> CartList = new ArrayList<Cart>();
	if (CurrentShoppingCart != null) {
		CartList = (List<Cart>) CurrentShoppingCart.getAllProduct();
	}
%>

<script type="text/javascript">
	
	function removeCart(productId) {
		$.post("../view/deleteFromCart", {id : productId})
		.done(function(data) {
			var $response = $(data);
			var topCart = $response.filter('#contentCartPanelMainTop').html();

			$('#topCartPanelToAjax').html(topCart+"");
		})
		.fail(
				function() {
					/* var message = '<div class="alert alert-danger"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button><strong>Cảnh báo! </strong> Đã xảy ra lỗi trong quá trình xóa sản phẩm khỏi giỏ hàng. Vui lòng thử lại. </div>';
					$('#InformContentCartPage').append(message); */
				});
	};
	
</script>


<div class="col-lg-3 col-md-3 col-md-push-6 col-sm-6 col-xs-6 shopping-cart inner ">
	<div class="cart-top">
		<div id="cart" class="clearfix">
			<div data-toggle="dropdown" data-loading-text="Loading..." style="background-color: #8cc152;"
				class="heading media text-center dropdown-toggle">
				<i class="fa fa-shopping-cart icon-cart"></i> <span id="cart-total"><%=CartList.size()%>
					sản phẩm - <%=CurrentShoppingCart.getFeePurchase()%>đ</span>
			</div>
			<ul class="dropdown-menu">
				<li>
					<div class="mini-cart-info">
						<table class="">
							<%
								for (int i = 0; i < CartList.size(); i++) {
							%>
							<tr>
								<td class="text-left"><a
									href="../view/product?id=<%=CartList.get(i).getProduct().getId()%>"><img
										width="50px" height="50px"
										src="../image/product/<%=CartList.get(i).getProduct().getImage()%>"
										alt="Double layer super soft"
										title="<%=CartList.get(i).getProduct().getTitle()%>"
										class="img-thumbnail" /></a></td>
								<td class="text-left"><a
									href="../view/product?id=<%=CartList.get(i).getProduct().getId()%>"><%=CartList.get(i).getProduct().getTitle()%></a>
								</td>
								<td class="text-right">x <%=CartList.get(i).getQuantity()%></td>
								<td class="text-right"><%=CartList.get(i).getProduct().getPrice()%>đ</td>
								<td class="text-center"><button type="button"
										onclick="removeCart(<%=CartList.get(i).getProduct().getId()%>);"
										title="Xóa khỏi giỏ hàng" class="btn btn-default btn-xs">
										<i class="fa fa-times"></i>
									</button></td>
							</tr>
							<%
								}
							%>
						</table>
					</div>
				</li>

				<li>
					<div class="mini-cart-total">
						<table class="">
							<tr>
								<td class="text-right"><strong>Tổng</strong></td>
								<td class="text-right"><%=CurrentShoppingCart.getFeePurchase()%>đ</td>
							</tr>
							<tr>
								<td class="text-right"><strong>Thuế VAT (<%=CurrentShoppingCart.getVAT()%>%)
								</strong></td>
								<td class="text-right"><%=CurrentShoppingCart.getFeeVAT()%>đ</td>
							</tr>
							<tr>
								<td class="text-right"><strong>Tổng cộng</strong></td>
								<td class="text-right"><%=CurrentShoppingCart.getRealFeePurschase()%>đ</td>
							</tr>
						</table>

						<p class="checkout text-right">
							<a href="../view/cart"><strong
								class="button btn btn-outline-inverse"><i
									class="fa fa-shopping-cart"></i> Xem giỏ hàng</strong></a>&nbsp;&nbsp;&nbsp;<a
								href="../view/cart"><strong
								class="button btn btn-outline-inverse"><i
									class="fa fa-share"></i> Thanh toán</strong></a>
						</p>
					</div>
				</li>
			</ul>
		</div>
	</div>
</div>