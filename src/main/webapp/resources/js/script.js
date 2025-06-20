console.log("안녕");

function ArticleSave_submitForm(form) {
  // trim() : 좌우 공백 제거
  form.subject.value = form.subject.value.trim();

  if (form.subject.value.length == 0) {
    alert("제목을 입력해주세요.");
    return;
  }

  form.content.value = form.content.value.trim();

  if (form.content.value.length == 0) {
    alert("내용을 입력해주세요.");
    return;
  }

  form.submit();
}

function articleDelete__init() {
	const deleteBtn = document.getElementById("delete-button");

  deleteBtn.addEventListener("click", function () {
		if (confirm("정말 삭제하시겠습니까?")) this.nextElementSibling.submit();
	});
}

articleDelete__init(); // 함수 실행