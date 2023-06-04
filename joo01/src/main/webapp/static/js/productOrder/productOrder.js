/**
 * productOrder.js
 * 배송지 정보 처리(주문자 정보와 같게, 새로 입력)
 * productOrder.jsp에 포함
 */


document.addEventListener('DOMContentLoaded', function () {
    
    const inputName = document.querySelector('input#name2').value;
    const inputPostCode = document.querySelector('input#postCode2').value;
    const inputAddr = document.querySelector('input#addr2').value;
    const inputDetailAddr = document.querySelector('input#detailAddr2').value;
    const inputPhone = document.querySelector('input#phone2').value;
    
    const sameOrderer = document.querySelector('input#flexRadioDefault1'); // 주문자 정보와 동일 라디오 버튼의 요소를 가져옴.
    const newInput = document.querySelector('input#flexRadioDefault2'); // 새로 입력 라디오 버튼의 요소를 가져옴.
    
    sameOrderer.addEventListener('click', () => {
        
        document.getElementById("name2").value = inputName;
        document.getElementById("postCode2").value = inputPostCode;
        document.getElementById("addr2").value = inputAddr;
        document.getElementById("detailAddr2").value = inputDetailAddr;
        document.getElementById("phone2").value = inputPhone;
    });
    
    newInput.addEventListener('click', () => {
       
        document.getElementById("name2").value = "";
        document.getElementById("postCode2").value = "";
        document.getElementById("addr2").value = "";
        document.getElementById("detailAddr2").value = "";
        document.getElementById("phone2").value = "";
    });
    
});

