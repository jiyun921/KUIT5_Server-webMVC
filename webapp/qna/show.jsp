<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!doctype html>
<html lang="ko">
  <%@ include file="../include/header.jspf" %>
  <body>
    <%@ include file="../include/navigation.jspf" %>
    <div class="navbar-default">
        <header class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
            <a href="/" class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
                <svg class="bi me-2" width="40" height="32" role="img" aria-label="Bootstrap"><use xlink:href="#bootstrap"/></svg>
            </a>

            <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                <li><a href="/home.jsp" class="nav-link px-2 link-secondary">Q&A</a></li>
                <li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
                <li><a href="/user/userList" class="nav-link px-2 link-dark">User List</a></li>
                <li><a href="#" class="nav-link px-2 link-dark">About</a></li>
            </ul>

            <div class="col-md-3 text-end">
                <c:choose>
                <c:when test="${not empty sessionScope.user}">
                    <a href="/user/logout" role="button" class="btn btn-outline-primary me-2">Log-Out</a>
                    <a href="/user/updateForm?userId=${sessionScope.user.userId}" role="button" class="btn btn-primary" >개인정보수정</a>
                </c:when>
                <c:otherwise>
                    <a href="/user/login.jsp" type="button" class="btn btn-outline-primary me-2">Log-In</a>
                    <a href="/user/form.jsp" type="button" class="btn btn-primary">Sign-up</a>
                </c:otherwise>
                </c:choose>
            </div>
        </header>
    </div>

    <div class="container" id="main">
            <header class="qna-header">
                <h2 class="qna-title">객체지향을 가장 잘 다룬 책이 뭐가 있나요?</h2>
            </header>
            <div class="content-main">
                <article class="article">
                    <div class="article-header">
                        <div class="article-header-thumb">
                            <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                        </div>
                        <div class="article-header-text">
                          <!-- 사용자 프로필 추가 할거면 span -> a 태그로 바꾸고 API 연결 -->
                            <span class="article-author-name">이영선</span>
                            <span class="article-header-time">
                              2025-03-27 22:11
                            </span>
                        </div>
                    </div>
                    <div class="article-doc">
                        <p>저는 지금 '객체지향의 사실과 오해' 라는 책을 읽고 있는데 정말 좋아요</p>
                        <p>이해가 쏙쏙 됩니다!</p>
                    </div>
                    <div class="article-util">
                        <ul class="article-util-list">
                            <li>
                              <!-- 수정, 삭제 API 연결 필요 -->
                                <a class="link-modify-article" href="/questions/423/form">수정</a>
                            </li>
                            <li>
                              <!-- 수정, 삭제 API 연결 필요 -->
                                <form class="form-delete" action="/questions/423" method="POST">
                                    <input type="hidden" name="_method" value="DELETE">
                                    <button class="link-delete-article" type="submit">삭제</button>
                                </form>
                            </li>
                            <li>
                                <a class="link-modify-article" href="../home.jsp">목록</a>
                            </li>
                        </ul>
                    </div>
                </article>
  
                <div class="qna-comment">
                    <div class="qna-comment-kuit">
                        <p class="qna-comment-count"><strong>2</strong>개의 의견</p>
                        <div>
                            <article class="article" id="answer-1405">
                                <div class="article-header">
                                    <div class="article-header-thumb">
                                        <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                                    </div>
                                    <div class="article-header-text">
                                        <span class="article-author-name">이윤정</span>
                                        <span class="article-header-time">
                                           2025-03-27 22:15
                                        </span>
                                    </div>
                                </div>
                                <div class="article-doc comment-doc">
                                    <p>오브젝트여</p>
                                </div>
                                <div class="article-util">
                                    <ul class="article-util-list">
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <a class="link-modify-article" href="/questions/1/answers/1/form">수정</a>
                                        </li>
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <form class="delete-answer-form" action="/questions/1/answers/1" method="POST">
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="delete-answer-button">삭제</button>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                            <article class="article" id="answer-1406">
                                <div class="article-header">
                                    <div class="article-header-thumb">
                                        <img src="../img/picture.jpeg" class="article-author-thumb" alt="">
                                    </div>
                                    <div class="article-header-text">
                                        <span class="article-author-name">함형주</span>
                                        <span class="article-header-time">
                                          2025-03-27 20:20
                                        </span>
                                    </div>
                                </div>
                                <div class="article-doc comment-doc">
                                    <p>스프링 입문을 위한 자바 객체 지향의 원리와 이해 추천합니다.</p>
                                </div>
                                <div class="article-util">
                                    <ul class="article-util-list">
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <a class="link-modify-article" href="/questions/1/answers/2/form">수정</a>
                                        </li>
                                        <li>
                                          <!-- 수정, 삭제 API 연결 필요 -->
                                            <form class="form-delete" action="/questions/1/answers/2" method="POST">
                                                <input type="hidden" name="_method" value="DELETE">
                                                <button type="submit" class="delete-answer-button">삭제</button>
                                            </form>
                                        </li>
                                    </ul>
                                </div>
                            </article>
                            <form class="submit-write">
                                <div class="form-group" style="padding:14px;">
                                    <textarea class="form-control" placeholder="Update your status"></textarea>
                                </div>
                                <button class="btn btn-primary pull-right" type="button">답변하기</button>
                                <div class="clearfix" />
                            </form>
                        </div>
                    </div>
                </div>
            </div>
          </div>
      </div>
    </div>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../js/scripts.js"></script>
  </body>
</html>