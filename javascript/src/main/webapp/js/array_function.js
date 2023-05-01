/**
 * array_function.js
 */

 document.addEventListener('DOMContentLoaded', function() {
     const numbers = [1, 2, 3, 4, 5, 6, 7];
     // 배열 concat() 메서드: 배열에 새로운 원소를 끝에 추가. 원소가 추가된 새로운 배열을 리턴.
     // 배열 push() 메서드: 기존 배열의 끝에 원소를 추가. 리턴값은 없음. , 타입을 const로 해도 됨.
     
     // 1. 배열 numbers의 원소들 중에서 홀수들만 원소로 갖는 배열을 만들고 출력
     // > [1, 3, 5, 7]
     let odd = [];
     for(let n of numbers) {
         if(n % 2) {
            odd = odd.concat(n); 
         }
     }
     console.log(odd);
    
     odd = numbers.filter((x) => x % 2);
     console.log(odd);
     
     // 2. 배열 numbers의 원소를 제곱한 숫자들을 원소로 갖는 배열을 만들고 출력. 
     // > [1, 4, 9, 16, 25, 36, 49]
     let square = [];
     for(let n of numbers) {
         square = square.concat(n ** 2); // **; 거듭제곱 연산자 n^2
     }
      console.log(square);
      
      square = numbers.map((x) => x ** 2);
      console.log(square);
     
     // 3. 배열 numbers의 원소들 중에서 홀수의 제곱을 원소로 갖는 배열을 만들고 출력.
     // > [1, 9, 25, 49]
     let oddSquares = [];
     for(let n of numbers) {
         if(n % 2) {
            oddSquares = oddSquares.concat(n * n);
         }
     }
     console.log(oddSquares);
     
     oddSquares = numbers.filter((x) => x % 2).map((x) => x ** 2);
     console.log(oddSquares);
 });