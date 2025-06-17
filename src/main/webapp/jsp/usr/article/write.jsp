<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<style>
  * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
  }

  body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      min-height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 20px;
  }

  .container {
      background: white;
      border-radius: 20px;
      box-shadow: 0 20px 40px rgba(0, 0, 0, 0.1);
      padding: 40px;
      width: 100%;
      max-width: 600px;
      backdrop-filter: blur(10px);
  }

  h1 {
      color: #333;
      text-align: center;
      margin-bottom: 30px;
      font-size: 2rem;
      font-weight: 700;
      position: relative;
  }

  h1::after {
      content: '';
      position: absolute;
      bottom: -10px;
      left: 50%;
      transform: translateX(-50%);
      width: 60px;
      height: 4px;
      background: linear-gradient(135deg, #667eea, #764ba2);
      border-radius: 2px;
  }

  .form-group {
      margin-bottom: 25px;
  }

  label {
      display: block;
      margin-bottom: 8px;
      color: #555;
      font-weight: 600;
      font-size: 0.95rem;
  }

  input[type="text"], textarea {
      width: 100%;
      padding: 15px 20px;
      border: 2px solid #e1e5e9;
      border-radius: 12px;
      font-size: 1rem;
      transition: all 0.3s ease;
      background: #fafbfc;
      font-family: inherit;
  }

  input[type="text"]:focus, textarea:focus {
      outline: none;
      border-color: #667eea;
      background: white;
      box-shadow: 0 0 0 3px rgba(102, 126, 234, 0.1);
      transform: translateY(-2px);
  }

  textarea {
      resize: vertical;
      min-height: 150px;
      line-height: 1.6;
  }

  .button-group {
      text-align: center;
      margin-top: 35px;
  }

  button {
      background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
      color: white;
      border: none;
      padding: 15px 40px;
      border-radius: 50px;
      font-size: 1.1rem;
      font-weight: 600;
      cursor: pointer;
      transition: all 0.3s ease;
      box-shadow: 0 8px 20px rgba(102, 126, 234, 0.3);
      position: relative;
      overflow: hidden;
  }

  button::before {
      content: '';
      position: absolute;
      top: 0;
      left: -100%;
      width: 100%;
      height: 100%;
      background: linear-gradient(90deg, transparent, rgba(255,255,255,0.2), transparent);
      transition: left 0.5s;
  }

  button:hover {
      transform: translateY(-3px);
      box-shadow: 0 12px 25px rgba(102, 126, 234, 0.4);
  }

  button:hover::before {
      left: 100%;
  }

  button:active {
      transform: translateY(-1px);
  }

  /* 반응형 디자인 */
  @media (max-width: 768px) {
      .container {
          padding: 30px 20px;
          margin: 10px;
      }

      h1 {
          font-size: 1.7rem;
      }

      input[type="text"], textarea {
          padding: 12px 16px;
      }

      button {
          padding: 12px 30px;
          font-size: 1rem;
      }
  }

  /* 입력 필드 애니메이션 */
  .form-group {
      position: relative;
  }

  .form-group::before {
      content: '';
      position: absolute;
      bottom: 0;
      left: 0;
      width: 0;
      height: 2px;
      background: linear-gradient(135deg, #667eea, #764ba2);
      transition: width 0.3s ease;
  }

  .form-group:focus-within::before {
      width: 100%;
  }

  /* 플레이스홀더 스타일 */
  ::placeholder {
      color: #999;
      opacity: 1;
  }
</style>

<script>
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
</script>

<div class="container">
  <h1>게시물 작성</h1>

  <form onsubmit="ArticleSave_submitForm(this); return false;">
    <div>
      <label for="subject">제목</label>
      <input type="text" id="subject" name="subject" placeholder="제목을 입력해주세요.">
    </div>
    <div>
      <label for="content">내용</label>
      <textarea id="content" name="content" placeholder="내용을입력해주세요."></textarea>
    </div>
    <div class="button-group">
      <button type="submit">작성</button>
    </div>
  </form>
</div>