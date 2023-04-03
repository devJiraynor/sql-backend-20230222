USE SJH_BOARD;

-- 회원가입
INSERT INTO USER 
(email, password, nickname, tel_number, 
address, address_detail, consent_personal_information)
VALUES 
('jiraynor@naver.com', sha2('P!ssw0rd', 512), 'jiraynor', 
'010-1111-2222', '부산광역시', '부산진구', true);

-- 로그인
-- 패스워드 암호화가 되어있지 않을 때
SELECT * FROM USER
WHERE email = 'jiraynor@naver.com'
AND password = 'P!ssw0rd';
-- 패스워드 암호화가 되어 있을 때
SELECT * FROM USER
WHERE email = 'jiraynor@naver.com';

-- 게시물 작성
INSERT INTO Board (title, content, board_image_url, write_datetime, writer_email)
VALUES ('Test Title', 'Test Content', null, now(), 'jiraynor@naver.com');

-- 게시물 보기
-- 게시물 (게시물제목, 작성자 이메일, 작성자 프로필 사진, 작성자 닉네임,
-- 작성일, 내용, 게시물 사진, 좋아요 수, 댓글 수)
-- 좋아요 리스트 (유저 프로필 사진, 유저 닉네임)
-- 댓글 리스트 (유저 프로필 사진, 유저 닉네임, 작성 시간, 댓글 내용)
SELECT B.board_number
FROM Board B, Liky L, Comment C, User U
WHERE B.board_number = 1
AND B.writer_email = U.email
AND B.board_number = L.board_number
AND B.board_number = C.board_number




