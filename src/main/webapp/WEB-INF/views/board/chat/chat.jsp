<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>
<style>
body {
	margin-top: 20px;
}
/*************** 1.Variables ***************/

/* ------------------ Color Pallet ------------------ */

/*************** 2.Mixins ***************/

/************************************************
    ************************************************
										Search Box
	************************************************
************************************************/
.chat-search-box {
	-webkit-border-radius: 3px 0 0 0;
	-moz-border-radius: 3px 0 0 0;
	border-radius: 3px 0 0 0;
	padding: .75rem 1rem;
}

.chat-search-box .input-group .form-control {
	-webkit-border-radius: 2px 0 0 2px;
	-moz-border-radius: 2px 0 0 2px;
	border-radius: 2px 0 0 2px;
	border-right: 0;
}

.chat-search-box .input-group .form-control:focus {
	border-right: 0;
}

.chat-search-box .input-group .input-group-btn .btn {
	-webkit-border-radius: 0 2px 2px 0;
	-moz-border-radius: 0 2px 2px 0;
	border-radius: 0 2px 2px 0;
	margin: 0;
}

.chat-search-box .input-group .input-group-btn .btn i {
	font-size: 1.2rem;
	line-height: 100%;
	vertical-align: middle;
}

@media ( max-width : 767px) {
	.chat-search-box {
		display: none;
	}
}

/************************************************
	************************************************
									Users Container
	************************************************
************************************************/
.users-container {
	position: relative;
	padding: 1rem 0;
	border-right: 1px solid #e6ecf3;
	height: 100%;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-direction: column;
	flex-direction: column;
}

/************************************************
	************************************************
											Users
	************************************************
************************************************/
.users {
	padding: 0;
}

.users .person {
	position: relative;
	width: 100%;
	padding: 10px 1rem;
	cursor: pointer;
	border-bottom: 1px solid #f0f4f8;
}

.users .person:hover {
	background-color: #ffffff;
	/* Fallback Color */
	background-image: -webkit-gradient(linear, left top, left bottom, from(#e9eff5),
		to(#ffffff));
	/* Saf4+, Chrome */
	background-image: -webkit-linear-gradient(right, #e9eff5, #ffffff);
	/* Chrome 10+, Saf5.1+, iOS 5+ */
	background-image: -moz-linear-gradient(right, #e9eff5, #ffffff);
	/* FF3.6 */
	background-image: -ms-linear-gradient(right, #e9eff5, #ffffff);
	/* IE10 */
	background-image: -o-linear-gradient(right, #e9eff5, #ffffff);
	/* Opera 11.10+ */
	background-image: linear-gradient(right, #e9eff5, #ffffff);
}

.users .person.active-user {
	background-color: #ffffff;
	/* Fallback Color */
	background-image: -webkit-gradient(linear, left top, left bottom, from(#f7f9fb),
		to(#ffffff));
	/* Saf4+, Chrome */
	background-image: -webkit-linear-gradient(right, #f7f9fb, #ffffff);
	/* Chrome 10+, Saf5.1+, iOS 5+ */
	background-image: -moz-linear-gradient(right, #f7f9fb, #ffffff);
	/* FF3.6 */
	background-image: -ms-linear-gradient(right, #f7f9fb, #ffffff);
	/* IE10 */
	background-image: -o-linear-gradient(right, #f7f9fb, #ffffff);
	/* Opera 11.10+ */
	background-image: linear-gradient(right, #f7f9fb, #ffffff);
}

.users .person:last-child {
	border-bottom: 0;
}

.users .person .user {
	display: inline-block;
	position: relative;
	margin-right: 10px;
}

.users .person .user img {
	width: 48px;
	height: 48px;
	-webkit-border-radius: 50px;
	-moz-border-radius: 50px;
	border-radius: 50px;
}

.users .person .user .status {
	width: 10px;
	height: 10px;
	-webkit-border-radius: 100px;
	-moz-border-radius: 100px;
	border-radius: 100px;
	background: #e6ecf3;
	position: absolute;
	top: 0;
	right: 0;
}

.users .person .user .status.online {
	background: #9ec94a;
}

.users .person .user .status.offline {
	background: #c4d2e2;
}

.users .person .user .status.away {
	background: #f9be52;
}

.users .person .user .status.busy {
	background: #fd7274;
}

.users .person p.name-time {
	font-weight: 600;
	font-size: .85rem;
	display: inline-block;
}

.users .person p.name-time .time {
	font-weight: 400;
	font-size: .7rem;
	text-align: right;
	color: #8796af;
}

@media ( max-width : 767px) {
	.users .person .user img {
		width: 30px;
		height: 30px;
	}
	.users .person p.name-time {
		display: none;
	}
	.users .person p.name-time .time {
		display: none;
	}
}

/************************************************
	************************************************
									Chat right side
	************************************************
************************************************/
.selected-user {
	width: 100%;
	padding: 0 15px;
	min-height: 64px;
	line-height: 64px;
	border-bottom: 1px solid #e6ecf3;
	-webkit-border-radius: 0 3px 0 0;
	-moz-border-radius: 0 3px 0 0;
	border-radius: 0 3px 0 0;
}

.selected-user span {
	line-height: 100%;
}

.selected-user span.name {
	font-weight: 700;
}

.chat-container {
	position: relative;
	padding: 1rem;
}

.chat-container li.chat-left, .chat-container li.chat-right {
	display: flex;
	flex: 1;
	flex-direction: row;
	margin-bottom: 40px;
}

.chat-container li img {
	width: 48px;
	height: 48px;
	-webkit-border-radius: 30px;
	-moz-border-radius: 30px;
	border-radius: 30px;
}

.chat-container li .chat-avatar {
	margin-right: 20px;
}

.chat-container li.chat-right {
	justify-content: flex-end;
}

.chat-container li.chat-right>.chat-avatar {
	margin-left: 20px;
	margin-right: 0;
}

.chat-container li .chat-name {
	font-size: .75rem;
	color: #999999;
	text-align: center;
}

.chat-container li .chat-text {
	padding: .4rem 1rem;
	-webkit-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 4px;
	background: #ffffff;
	font-weight: 300;
	line-height: 150%;
	position: relative;
}

.chat-container li .chat-text:before {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	top: 10px;
	left: -20px;
	border: 10px solid;
	border-color: transparent #ffffff transparent transparent;
}

.chat-container li.chat-right>.chat-text {
	text-align: right;
}

.chat-container li.chat-right>.chat-text:before {
	right: -20px;
	border-color: transparent transparent transparent #ffffff;
	left: inherit;
}

.chat-container li .chat-hour {
	padding: 0;
	margin-bottom: 10px;
	font-size: .75rem;
	display: flex;
	flex-direction: row;
	align-items: center;
	justify-content: center;
	margin: 0 0 0 15px;
}

.chat-container li .chat-hour>span {
	font-size: 16px;
	color: #9ec94a;
}

.chat-container li.chat-right>.chat-hour {
	margin: 0 15px 0 0;
}

@media ( max-width : 767px) {
	.chat-container li.chat-left, .chat-container li.chat-right {
		flex-direction: column;
		margin-bottom: 30px;
	}
	.chat-container li img {
		width: 32px;
		height: 32px;
	}
	.chat-container li.chat-left .chat-avatar {
		margin: 0 0 5px 0;
		display: flex;
		align-items: center;
	}
	.chat-container li.chat-left .chat-hour {
		justify-content: flex-end;
	}
	.chat-container li.chat-left .chat-name {
		margin-left: 5px;
	}
	.chat-container li.chat-right .chat-avatar {
		order: -1;
		margin: 0 0 5px 0;
		align-items: center;
		display: flex;
		justify-content: right;
		flex-direction: row-reverse;
	}
	.chat-container li.chat-right .chat-hour {
		justify-content: flex-start;
		order: 2;
	}
	.chat-container li.chat-right .chat-name {
		margin-right: 5px;
	}
	.chat-container li .chat-text {
		font-size: .8rem;
	}
}

.chat-form {
	padding: 15px;
	width: 100%;
	left: 0;
	right: 0;
	bottom: 0;
	background-color: #ffffff;
	border-top: 1px solid white;
}

ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.card {
	border: 0;
	background: #f4f5fb;
	-webkit-border-radius: 2px;
	-moz-border-radius: 2px;
	border-radius: 2px;
	margin-bottom: 2rem;
	box-shadow: none;
}

.chatbox {
	width: 700px;
}
</style>
<title>Warau</title>
</head>
<body>

	<c:import url="/WEB-INF/views/include/top_menu.jsp" />
	
	<div class="videobox">
		<video width="100%" height="auto" autoplay loop muted>
			<source src="${root }img/video/chat1.mp4" type="video/mp4">
		</video>

	<div class="container chatbox container4" id="chat-box3">

		<!-- Page header start -->
		<div class="page-title">
			<div class="row gutters">
				<div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
					<input type="text"
						id="receiver-id" placeholder="????????? ???????????? ???????????????" />
					<button type="button" class="btn btn-primary" id="connect-button">Connect</button>
				</div>
			</div>
			<div class="row status" id="status" style='color:red; font-weight:bold'></div>
		</div>
		<!-- Page header end -->

		<!-- Content wrapper start -->
		<div class="content-wrapper">

			<!-- Row start -->
			<div class="row gutters">

				<div class="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">

					<div class="card m-0">

						<!-- Row start -->
						<div class="row no-gutters">
							<div class="col-12">
								<div class="selected-user">
									<span><span class="name">Warau Chat</span>(<span id="myId">${chatId }</span>)</span>
								</div>
								<div class="chat-container" id="chat-box2">
									<ul class="chat-box chatContainerScroll" id="chat-box">
									</ul>
									<div class="form-group mt-3 mb-0">
										<input type="text" class="form-control" placeholder="????????? ??????"
											id="sendMessageBox">
									</div>
								</div>
							</div>
						</div>
						<!-- Row end -->
					</div>
				</div>
			</div>
			<!-- Row end -->
		</div>
		<!-- Content wrapper end -->
	</div>
	</div>
	<script src="https://unpkg.com/peerjs@1.3.2/dist/peerjs.min.js"></script>
	<script>
    let peer = null;
    let lastPeerId = null;
    let conn = null;
    let myId = $('#myId').text();


    function init(){
      peer = new Peer(myId);

      peer.on('open', function(id){
        if(peer.id === null){
          peer.id = lastPeerId;
        }else {
          lastPeerId = peer.id;
        }
      });

      // peer.on('connection', function(con2){
      //   con2.on('open',function(){
      //     con2.send("does not accept incoming connection");
      //   });
      //   setTimeout(function(){
      //     con2.close();
      //   },500);
      // });
      peer.on('connection', function(con2){
        if(conn && conn.open) {
            con2.on('opne', function(){
            con2.send('?????? ?????? ????????? ????????? ?????????.');
            setTimeout(function(){
              con2.close();
            },500);
          });
        }

        conn = con2;
        $('#status').html(conn.peer + " ?????? ?????? ???????????????.");
        ready();
      });

      peer.on('disconnected', function(){
        peer.id = lastPeerId;
        peer._lastServerId = lastPeerId;
        peer.reconnect();
      });

      peer.on('close', function(){
        conn = null;
        $('#status').html('????????? ??????????????????.');
      });

      peer.on('error', function(err){
        alert(err);
      });
    }

    function join(){
      if(conn){
        conn.close();
      }

      conn = peer.connect($('#receiver-id').val()); //????????? ?????????
      
      conn.on('open', function(){
        $('#status').html('?????????????????????.');
      });

      conn.on('data', function(data){
        addMessage(data, "right");
      });
    }

    function ready(){
      conn.on('data', function(data){
        addMessage(data, "right");
      });

      conn.on('close', function(){
        $('#status').html('Connection reset. Awaiting connecttion...');
        conn = null;
      });
    }
    
    function updateScroll(){
        var element = document.getElementById("#chat-box");
        element.scrollTop = element.scrollHeight;
    }

    function addMessage(msg, side){
      var now = new Date();
      var h = now.getHours();
      var m = now.getMinutes();
      var s = now.getSeconds();

      if(h<10) h = "0" + h;
      if(m<10) m = "0" + m;
      if(s<10) s = "0" + s;


      var msgHtml = [];
      if(side == 'left'){
        msgHtml.push('<li class="chat-left">');
          msgHtml.push('<div class="chat-avatar">');
            msgHtml.push('<img src="${root }img/pet/chat2.png" alt="Retail Admin">');
            msgHtml.push('<div class="chat-name"></div>');
          msgHtml.push('</div>');
          msgHtml.push('<div class="chat-text">'+ msg +'</div>');
          msgHtml.push('<div class="chat-hour">'+ h +':'+ m +':' + s +'<span class="fa fa-check-circle"></span></div>');
        msgHtml.push('</li>');
      }else {
        msgHtml.push('<li class="chat-right">');
          msgHtml.push('<div class="chat-hour">'+ h +':'+ m +':' + s +'<span class="fa fa-check-circle"></span></div>');
          msgHtml.push('<div class="chat-text">'+ msg +'</div>');
            msgHtml.push('<div class="chat-avatar">');
              msgHtml.push('<img src="${root }img/pet/chat.png" alt="Retail Admin">');
              msgHtml.push('<div class="chat-name"></div>');
              msgHtml.push('</div>');
          msgHtml.push('</li>');
      }

      $('#chat-box').append(msgHtml.join(""));
      $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight);
      updateScroll ();
    }

    $(document).ready(function(){
      init();
      $('#connect-button').click(function(){
        join();
      });

      $('#sendMessageBox').keydown(function(key){
        if(key.keyCode === 13){
          if(conn && conn.open){
            var msg = $('#sendMessageBox').val();
            $('#sendMessageBox').val('');
            conn.send(msg);
            addMessage(msg,"left");
            $('#chat-box').scrollTop($('#chat-box')[0].scrollHeight);
            updateScroll ();
            
          }else{
            $('#status').html('Connection is closed')
          }
        }
      });
    });
    
	
    
  </script>
</body>
</html>






