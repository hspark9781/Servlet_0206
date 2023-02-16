<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header class="d-flex align-items-center">
			<div class="logo col-3 display-4 text-success font-weight-bold">Melong</div>
			
				<form method="get" action="/jspTemplate/test/test02/test02_info.jsp" class="search col-4 mt-4">
					<div class=" input-group">
                        <input type="text" class="form-control" name="title">
                        <div class="input-group-append">
                            <button type="submit" class="btn btn-success">검색</button>
                        </div>
           			 </div>
                </form>
</header>