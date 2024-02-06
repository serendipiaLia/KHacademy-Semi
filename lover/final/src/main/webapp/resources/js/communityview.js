


/**
 * 
 */
const commentInput = document.getElementById('input-comment');
const commentBtn = document.getElementsByClassName('submit-comment')[0];
const commentList = document.getElementsByClassName('comments')[0];

commentInput.addEventListener('keypress', function(e) {
	if (commentInput.value) {
		if (e.which === 13) {
			var newComment = document.createElement('li')
			newComment.innerHTML = `<span><span class="point-span userID">thisisyourhyung </span>` + this.value + `</span><img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">`;
			commentList.appendChild(newComment);
			this.value = "";
		}
	}
})

commentBtn.addEventListener('click', function() {
	if (commentInput.value) {
		var newComment = document.createElement('li')
		newComment.innerHTML = `<span><span class="point-span userID">thisisyourhyung</span>` + commentInput.value + `</span><img class="comment-heart" src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png" alt="하트">`;
		commentList.appendChild(newComment);
		commentInput.value = "";
	}
})

commentInput.addEventListener('keyup', function(event) {
	if (commentInput.value) {
		commentBtn.disabled = false;
	}
	else {
		commentBtn.disabled = true;
	}
})
function toggleHeart1() {
	var heartIcon = document.getElementById("heartIcon1");

	// Toggle the 'filled' class to change the appearance
	if (heartIcon.classList.contains("filled")) {
		heartIcon.src = "https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png";
		heartIcon.classList.remove("filled");
	} else {
		heartIcon.src = "../resources/images/instaheart.png"; // Replace with the path to your filled heart image
		heartIcon.classList.add("filled");
	}
}
function toggleHeart2() {
	var heartIcon = document.getElementById("heartIcon2");

	// Toggle the 'filled' class to change the appearance
	if (heartIcon.classList.contains("filled")) {
		heartIcon.src = "https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/bearu/heart.png";
		heartIcon.classList.remove("filled");
	} else {
		heartIcon.src = "../resources/images/instaheart.png"; // Replace with the path to your filled heart image
		heartIcon.classList.add("filled");
	}
}


// 페이지 로드 시 조회수 증가 함수
function increaseViewCount() {
	var viewCountElement = document.getElementById('viewCount');
	// 조회수를 가져온다고 가정하고 임의의 수 (예: 123)로 설정
	var currentCount = 123; // 이 부분은 서버에서 실제 조회수를 가져와야 함 구현x 
	viewCountElement.textContent = '조회수: ' + currentCount;
}

// 페이지 로드 시 조회수 증가
window.onload = increaseViewCount;

board.js