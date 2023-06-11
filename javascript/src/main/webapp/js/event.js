/**
 * event.js
 */

document.addEventListener('DOMContentLoaded', function() {
    
    const itemInput = document.querySelector('input#itemInput');
    const btnInput = document.querySelector('button#btnInput');
    const itemList = document.querySelector('ul#itemList');
    
    btnInput.addEventListener('click', function() {
        // input에 입력된 값을 읽음.
        const value = itemInput.value;
        // console.log(value);
        // input에 입력된 값으로 li 요소를 만듦.
        const item = `<li>${value}</li>`;
        
        // li 요소를 ul에 추가.
        itemList.innerHTML += item;
        
        // input의 값을 지움.
        itemInput.value = '';
        
        // input에 포커스를 줌.
        itemInput.focus();
    });
    
    const itemInput2 = document.querySelector('input#itemInput2');
    const itemList2 = document.querySelector('ul#itemList2');
    
    itemInput2.addEventListener('keydown', function(e) {
            // console.log(e); // -> e: KeyboardEvent 객체
            // 모든 이벤트 핸들러 함수(콜백)은 이벤트 객체를 argument로 전달받음.
        if (event.keyCode === 13) {
        const value2 = itemInput2.value;
        const item2 = `<li>${value2}</li>`
        itemList2.innerHTML += item2;
        itemInput2.value = '';
        itemInput2.focus();
        }
    });
    
    const username = document.querySelector('input#username');
    const age = document.querySelector('input#age');
    const result = document.querySelector('div#result');

    username.addEventListener('change', function() {
         updateNameAndAge();
    });
    
    age.addEventListener('change', function() {
        updateNameAndAge();
    });
    
    function updateNameAndAge() {
            const valueName = username.value;
            const valueAge = age.value;
            const item3 = `<b>name</b>: ${valueName} <br>
                           <b>age</b>: ${valueAge}`
        result.innerHTML = item3;
        }
    
    
    
    
})