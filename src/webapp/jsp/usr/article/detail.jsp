<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ include file="../common/head.jspf"%>

<section>
    <div class="container px-3 mx-auto">
        <h1 class="font-bold text-lg">
            <i class="fa-solid fa-newspaper"></i> ${article.id}. ${article.title}
        </h1>

        <div class="mt-3">
              <div>
                <i class="fa-solid fa-clock"></i> 작성 : ${article.createdDate}
            </div>
            <div class="mt-2">

                <i class="fa-solid fa-pen-to-square"></i> 수정 : ${article.modifiedDate}
            </div>
              <div class="mt-2">
                            <a href="/usr/article/modify/${article.id}" class="btn btn-active btn-link">수정</a>
                            <a onclick="if ( !confirm('정말로 삭제하시겠습니까?') ) return false;" href="/usr/article/delete/${article.id}?_method=DELETE" class="btn btn-active btn-link">삭제</a>
              </div>
            <div>
                <div class="toast-ui-viewer">
                    <script type="text/x-template">
                        ${article.body}
                    </script>
                </div>
              </div>
        </div>
    </div>
</section>

<%@ include file="../common/foot.jspf"%>
