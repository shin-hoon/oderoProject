
$(function(){
	var i=0;
	var u=0;
	var d=0;
	
	$('.reply_reply').click(function(){
		var no=$(this).attr("value");
		if(i==0){
			$(this).text("취소");
			$('#in'+no).show();
			i=1;
		}
		else{
			$(this).text("댓글");
			$('#in'+no).hide();
			i=0;
		}
		if(u==1){
			$('.reply_update').text("수정");
			$('#up'+no).hide();
			u=0;
		}
		if(d==1){
			$('.reply_delete').text("삭제");
			$('#del'+no).hide();
			d=0;
		}
	});
	
	
	$('.reply_update').click(function(){
		var no=$(this).attr("value");
		if(u==0){
			$(this).text("취소");
			$('#up'+no).show();
			u=1;
		}
		else{
			$(this).text("수정");
			$('#up'+no).hide();
			u=0;
		}
		if(i==1){
			$('.reply_reply').text("댓글");
			$('#in'+no).hide();
			i=0;
		}
		if(d==1){
			$('.reply_delete').text("삭제");
			$('#del'+no).hide();
			d=0;
		}
	});

	
	$('.reply_delete').click(function(){
		var no=$(this).attr("value");
		if(d==0){
			$(this).text("취소");
			$('#del'+no).show();
			d=1;
		}
		else{
			$(this).text("삭제");
			$('#del'+no).hide();
			d=0;
		}
		if(u==1){
			$('.reply_update').text("수정");
			$('#up'+no).hide();
			u=0;
		}
		if(i==1){
			$('.reply_reply').text("댓글");
			$('#in'+no).hide();
			i=0;
		}
	});
	
	
	$('#btnSubmit').click(function(){
		var name = $('#submit-name').val();
		var pwd = $('#submit-pwd').val();
		var content = $('#submit-content').val();
		
		if(name.trim() == ""){
			alert("이름을 입력하세요");
			$('#submit-name').focus();
			return false;
		}
		if(pwd.trim() == ""){
			alert("비밀번호를 입력하세요");
			$('#submit-pwd').focus();
			return false;
		}
		if(content.trim() == ""){
			alert("내용을 작성하세요");
			$('#submit-content').focus();
			return false;
		}

		$.ajax({
			type:'post',
			url:'qnaContentCommentInsert.do',
			data:$('#submit').serialize(),
			success:function(data){
					$('#submit').html(data);
			}
		});  // end ajax
	}); // end #btnsubmit
	
	
	
	$('.replySubmit').click(function(){
		var no = $(this).attr("data-no");
		var who = $(this).attr("data-who");
		var dp = $(this).attr("data-pwd");
		var dn = $(this).attr("data-name");
		var dc = $(this).attr("data-content");
		var pwd = $("#"+dp+no).val();
		var name = $("#"+dn+no).val();
		var content = $("#"+dc+no).val();
		
		if(who == "d-del"){
			if(pwd.trim() == ""){
				alert("비밀번호를 입력하세요");
				$("#"+dp+no).focus();
				return false;
			}
			
			$.ajax({
				type:'post',
				url:'qnaContentCommentDelete_ok.do',
				data:$('#'+who+no).serialize(),
				success:function(data){
					if(data.trim() =="실패"){
						alert("비밀번호가 틀립니다.");
						$("#"+dp+no).focus();
					}
					else{
						$('#'+who+no).html(data);
					}
				}
			});  // end    ajax
			
		} // end    if
		else if(who == "u-up"){
			
			if(name.trim() == ""){
				alert("이름을 입력하세요");
				$("#"+dn+no).focus();
				return false;
			}
			else if(pwd.trim() == ""){
				alert("비밀번호를 입력하세요");
				$("#"+dp+no).focus();
				return false;
			}
			else if(content.trim() == ""){
				alert("내용을 작성하세요");
				$("#"+dc+no).focus();
				return false;
			}
			
			$.ajax({
				type:'post',
				url:'qnaContentCommentUpdate.do',
				data:$('#'+who+no).serialize(),
				success:function(data){
					if(data.trim() =="실패"){
						alert("비밀번호가 틀립니다.");
						$("#"+dp+no).focus();
					}
					else{
						$('#'+who+no).html(data);
					}
				}
			});  // end    ajax
		} // end    else if
		else if(who == "i-in"){
			
			if(name.trim() == ""){
				alert("이름을 입력하세요");
				$("#"+dn+no).focus();
				return false;
			}
			else if(pwd.trim() == ""){
				alert("비밀번호를 입력하세요");
				$("#"+dp+no).focus();
				return false;
			}
			else if(content.trim() == ""){
				alert("내용을 작성하세요");
				$("#"+dc+no).focus();
				return false;
			}
			
			$.ajax({
				type:'post',
				url:'qnaContentCommentNewInsert.do',
				data:$('#'+who+no).serialize(),
				success:function(data){
						$('#'+who+no).html(data);
				}
			});  // end    ajax
			
		}
		
		/*$('#'+who+no).submit();*/
		
	}); // end click
}); // end $(function)












/**
 * 
 */

var oEditors = [];

var sLang = "ko_KR"; // 언어 (ko_KR/ en_US/ ja_JP/ zh_CN/ zh_TW), default = ko_KR

// 추가 글꼴 목록
//var aAdditionalFontSet = [["MS UI Gothic", "MS UI Gothic"], ["Comic Sans MS", "Comic Sans MS"],["TEST","TEST"]];

nhn.husky.EZCreator.createInIFrame({
	oAppRef : oEditors,
	elPlaceHolder : "ir1",
	sSkinURI : "qnaBoard/SmartEditor2Skin.jsp",
	htParams : {
		bUseToolbar : true, // 툴바 사용 여부 (true:사용/ false:사용하지 않음)
		bUseVerticalResizer : true, // 입력창 크기 조절바 사용 여부 (true:사용/ false:사용하지 않음)
		bUseModeChanger : true, // 모드 탭(Editor | HTML | TEXT) 사용 여부 (true:사용/ false:사용하지 않음)
		//bSkipXssFilter : true,		// client-side xss filter 무시 여부 (true:사용하지 않음 / 그외:사용)
		//aAdditionalFontList : aAdditionalFontSet,		// 추가 글꼴 목록
		fOnBeforeUnload : function() {
			//alert("완료!");
		},
		I18N_LOCALE : sLang
	}, //boolean
	fOnAppLoad : function() {
		//예제 코드
		//oEditors.getById["ir1"].exec("PASTE_HTML", ["로딩이 완료된 후에 본문에 삽입되는 text입니다."]);
	},
	fCreator : "createSEditor2"
});

function pasteHTML() {
	var sHTML = "<span style='color:#FF0000;'>이미지도 같은 방식으로 삽입합니다.<\/span>";
	oEditors.getById["ir1"].exec("PASTE_HTML", [ sHTML ]);
}

function showHTML() {
	var sHTML = oEditors.getById["ir1"].getIR();
	alert(sHTML);
}

function submitContents(elClickedObj) {
	oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD", []); // 에디터의 내용이 textarea에 적용됩니다.

	// 에디터의 내용에 대한 값 검증은 이곳에서 document.getElementById("ir1").value를 이용해서 처리하면 됩니다.
	
		var name = $('#name').val();
		var subject = $('#subject').val();
		var ir1 = $('#ir1').val();
		var pwd = $('#pwd').val();
		
		if(subject.trim() == ""){
			alert("제목을 입력하세요");
			$('#subject').focus();
			return false;
		}
		if(name.trim() == ""){
			alert("이름을 입력하세요");
			$('#name').focus();
			return false;
		}
		if(ir1.trim() == "<p><br></p>"){
			alert("내용을 작성하세요");
			$('#ir1').focus();
			return false;
		}
		if(pwd.trim() == ""){
			alert("비밀번호를 입력하세요");
			$('#pwd').focus();
			return false;
		}
		
	try {
		/*elClickedObj.form.submit();*/
		$('#formSubmit').submit();
	} catch (e) {
	}
}

function setDefaultFont() {
	var sDefaultFont = '궁서';
	var nFontSize = 24;
	oEditors.getById["ir1"].setDefaultFont(sDefaultFont, nFontSize);
}



