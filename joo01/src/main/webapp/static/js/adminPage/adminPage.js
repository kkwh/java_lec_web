/**
 * admin.jsp 화면 설정 adminPage
 */

 
document.addEventListener('DOMContentLoaded', function(){
	
	// 개발자 화면의 드롭select.option의 value를 확인하고, 표시할 화면 선택
	const chooseMenu = document.querySelector('#chooseMenu');
	
	chooseMenu.addEventListener('click', function(){
		
		alert(`클릭${chooseMenu.value}`);
		
	});
	
	
});
