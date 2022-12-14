<%--C:\theme-boomerang-master\theme-boomerang-master\services-1--%>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="main.java.dao.AccountRepository" %>
<%@ page import="main.java.dto.Account" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Boomerang - Template</title>
</head>

<body>
<%@include file="header.jsp"%>
<%
    AccountRepository dao = AccountRepository.getInstance();
    ArrayList<Account> listOfAccounts = dao.getAllAccounts();
%>

<!-- Wrapper-->
<div class="wrapper">
    <!-- Hero-->
    <section class="module-cover parallax text-center" data-background="assets/images/module-8.jpg" data-overlay="0.5">
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>계좌</h1>
                    <p>계좌별 잔액</p>
                </div>
            </div>
        </div>
    </section>
    <!-- Hero end-->

    <!-- Features-->
    <section class="module">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-9 m-auto text-center">
                    <%!
                        Integer balanceSum = 0;
                    %>
                    <%
                        for(int i = 0; i < listOfAccounts.size(); i++) {
                            Account account = listOfAccounts.get(i);
                            balanceSum += account.getBalance();
                        }
                    %>
                    <h1>총 자산 <br><%=balanceSum%> 원</h1>
                    <p class="lead">계좌 <br> 495,145 원</p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="space" data-MY="60px"></div>
                </div>
            </div>
            <div class="row">
            <%
                for(int i = 0; i < listOfAccounts.size(); i++) {
                    Account account = listOfAccounts.get(i);
//                }
            %>
                <div class="col-md-4">
                    <div class="feature">
                        <div class="feature-thumb"><img src="assets/images/card/<%=account.getFilename()%>" alt=""></div>
                        <div class="feature-content">
                            <h6><%=account.getAccountName()%>></h6>
                            <p><%=account.getBalance()%> 원</p>
                            <p><%=account.getBank()%></p>
                            <a class="feature-link" href="./account.jsp?id=<%=account.getAccountId()%>">자세히</a>
                        </div>
                    </div>
                </div>
            <%
                }
            %>
            </div>
        </div>
    </section>
    <!-- Features end-->

    <!-- Modal-->
    <section class="module">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-6">
                    <p class="m-b-30"><img src="assets/images/main/about-4.jpg" alt=""></p>
                </div>
                <div class="col-lg-5 offset-lg-1">
                    <h2>계좌 등록해봐</h2>
                    <p class="lead m-b-30">금융사기신고번호는 xxx번</p>
                    <button class="btn btn-circle btn-outline-brand m-b-30" type="button" data-toggle="modal" data-target="#modal-1">계좌 등록!!</button>
                </div>
            </div>
            <!-- Modal-->
            <div class="modal fade" id="modal-1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">계좌 등록!!</h5>
                            <button class="close" type="button" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">×</span></button>
                        </div>
                        <div class="modal-body">
                            <!-- Checkout-->
                                    <div class="row">
                                        <div class="col-md-8 m-auto">
                                            <form action="processAddCard.jsp" enctype="multipart/form-data" method="post">
                                                <div class="row form-row">
                                                    <div class="col-md-6 form-group">
                                                        <input class="form-control" type="text" placeholder="계좌이름" name="accountName">
                                                    </div>
                                                    <div class="col-md-6 form-group">
                                                        <input class="form-control" type="text" placeholder="은행" name="bank">
                                                    </div>
                                                </div>
                                                <div class="row form-row">
                                                    <div class="col-md-12 form-group">
                                                        <input class="form-control" type="text" placeholder="현재 잔액" name="balance">
                                                    </div>
                                                    <div class="col-md-12 form-group">
                                                        <input class="form-control" type="file" placeholder="카드 사진" name="filename" type="file">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                            <!-- Checkout end-->
                        </div>
                        <div class="modal-footer">
                            <button class="btn btn-secondary" type="button" data-dismiss="modal">Close</button>
                            <button class="btn btn-primary" type="button" href="addCard.jsp">Save changes</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Modal-->

    <!-- Footer-->
    <footer class="footer">
        <div class="footer-widgets">
            <div class="container">
                <div class="row">
                    <div class="col-md-3">
                        <!-- Text widget-->
                        <aside class="widget widget-text">
                            <div class="widget-title">
                                <h6>About Us</h6>
                            </div>
                            <div class="textwidget">
                                <p>Map where your photos were taken and discover local points of interest. Map where your photos.</p>
                                <p>
                                    Location: 12 London Avenue, Suite 18<br>
                                    E-mail: support@theme.com<br>
                                    Phone: 8 800 123 4567<br>
                                </p>
                                <ul class="social-icons">
                                    <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                                    <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                                    <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                                    <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
                                </ul>
                            </div>
                        </aside>
                    </div>
                    <div class="col-md-3">
                        <!-- Recent entries widget-->
                        <aside class="widget widget-recent-entries">
                            <div class="widget-title">
                                <h6>Recent Posts</h6>
                            </div>
                            <ul>
                                <li><a href="#">Map where your photos were taken and discover local points.</a><span class="post-date">May 8, 2018</span></li>
                                <li><a href="#">Map where your photos were taken and discover local points.</a><span class="post-date">April 7, 2018</span></li>
                                <li><a href="#">Map where your photos were taken and discover local points.</a><span class="post-date">September 7, 2018</span></li>
                            </ul>
                        </aside>
                    </div>
                    <div class="col-md-3">
                        <!-- Twitter widget-->
                        <aside class="widget twitter-feed-widget">
                            <div class="widget-title">
                                <h6>Twitter Feed</h6>
                            </div>
                            <div class="twitter-feed" data-twitter="double_theme" data-number="1"></div>
                        </aside>
                    </div>
                    <div class="col-md-3">
                        <!-- Recent works-->
                        <aside class="widget widget-recent-works">
                            <div class="widget-title">
                                <h6>Portfolio</h6>
                            </div>
                            <ul>
                                <li><a href="#"><img src="assets/images/widgets/1.jpg" alt=""></a></li>
                                <li><a href="#"><img src="assets/images/widgets/2.jpg" alt=""></a></li>
                                <li><a href="#"><img src="assets/images/widgets/3.jpg" alt=""></a></li>
                                <li><a href="#"><img src="assets/images/widgets/7.jpg" alt=""></a></li>
                                <li><a href="#"><img src="assets/images/widgets/8.jpg" alt=""></a></li>
                                <li><a href="#"><img src="assets/images/widgets/6.jpg" alt=""></a></li>
                            </ul>
                        </aside>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bar">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="copyright">
                            <p>© 2018 Boomerang, All Rights Reserved. Design with love by <a href="#">2theme</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- Footer end-->
</div>
<!-- Wrapper end-->
<!-- Off canvas-->
<div class="off-canvas-sidebar">
    <div class="off-canvas-sidebar-wrapper">
        <div class="off-canvas-header"><a class="off-canvas-close" href="#"><span class="ti-close"></span></a></div>
        <div class="off-canvas-content">
            <!-- Text widget-->
            <aside class="widget widget-text">
                <div class="textwidget">
                    <p class="text-center"><img src="assets/images/logo-light-2.png" alt="" width="80px"></p>
                    <p class="text-center">See how users experience your website in realtime to see changes.</p>
                </div>
            </aside>
            <!-- Recent portfolio widget-->
            <aside class="widget widget-recent-works">
                <ul>
                    <li><a href="#"><img src="assets/images/widgets/1.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/2.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/3.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/4.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/5.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/6.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/7.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/8.jpg" alt=""></a></li>
                    <li><a href="#"><img src="assets/images/widgets/9.jpg" alt=""></a></li>
                </ul>
            </aside>
            <!-- Social Icons-->
            <ul class="social-icons text-center">
                <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                <li><a href="#"><i class="fab fa-instagram"></i></a></li>
                <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                <li><a href="#"><i class="fab fa-pinterest-p"></i></a></li>
            </ul>
        </div>
    </div>
</div>
<!-- Off canvas end-->

<!-- To top button--><a class="scroll-top" href="#top"><i class="fas fa-angle-up"></i></a>

<!-- Scripts-->
<script src="assets/js/custom/jquery.min.js"></script>
<script src="assets/js/custom/popper.min.js"></script>
<script src="assets/js/bootstrap/bootstrap.min.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA0rANX07hh6ASNKdBr4mZH0KZSqbHYc3Q"></script>
<script src="assets/js/custom/plugins.min.js"></script>
<script src="assets/js/custom/custom.min.js"></script>
</body>
</html>