<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="UTF-8">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>title</title>
<link href="randomAlbum.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="//fonts.googleapis.com/css?family=font1|font2|etc"
	type="text/css">
<script src="https://kit.fontawesome.com/2c7fc28a2f.js"></script>
</head>
<body>
	<div id="container">
		<div id="toggleContainer">
			<label
				style="color: white; box-sizing: border-box; font-family: 'Ubuntu', sans-serif; font-weight: bold;"></label>
			<div id="toggle">
				<div id="outer3">
					<div id="slider3"></div>
				</div>
				<label
					style="color: white; box-sizing: border-box; font-family: 'Ubuntu', sans-serif; font-weight: bold;"></label>
			</div>
		</div>
		<div id="galleryView">
			<div id="galleryContainer">
				<div id="leftView"></div>
				<button id="navLeft" class="navBtns">
					<i class="fas fa-arrow-left fa-3x"></i>
				</button>
				<a id="linkTag">
					<div id="mainView"></div>
				</a>
				<div id="rightView"></div>
				<button id="navRight" class="navBtns">
					<i class="fas fa-arrow-right fa-3x"></i>
				</button>
			</div>
		</div>
		<div id="tilesView">
			<div id="tilesContainer"></div>
		</div>
	</div>


	</div>
</body>

<script type="text/javascript">
	document.getElementById("outer3").addEventListener("click", toggleState3);

	function toggleState3() {
		let galleryView = document.getElementById("galleryView")
		let tilesView = document.getElementById("tilesView")
		let outer = document.getElementById("outer3");
		let slider = document.getElementById("slider3");
		let tilesContainer = document.getElementById("tilesContainer");
		if (slider.classList.contains("active")) {
			slider.classList.remove("active");
			outer.classList.remove("outerActive");
			galleryView.style.display = "flex";
			tilesView.style.display = "none";

			while (tilesContainer.hasChildNodes()) {
				tilesContainer.removeChild(tilesContainer.firstChild)
			}
		} else {
			slider.classList.add("active");
			outer.classList.add("outerActive");
			galleryView.style.display = "none";
			tilesView.style.display = "flex";

			for (let i = 0; i < imgObject.length - 1; i++) {
				let tileItem = document.createElement("div");
				tileItem.classList.add("tileItem");
				tileItem.style.background = "url(" + imgObject[i] + ")";
				tileItem.style.backgroundSize = "contain";
				tilesContainer.appendChild(tileItem);
			}
		}
		;
	}

	let imgObject = [
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/507/074/81507074_1594973911303_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/500/190/81500190_1595223816956_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/486/282/81486282_1593149417445_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/491/701/81491701_1593584698644_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/009/688/81009688_1512548445712_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/494/130/81494130_1594017964026_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/487/607/81487607_1593415876116_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/434/107/81434107_1588747979387_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/428/715/81428715_1587972077151_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/398/219/81398219_1585214325118_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/449/172/81449172_1590049611530_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/379/985/81379985_1583393846510_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/297/613/81297613_1574066356132_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/343/969/81343969_1578901334224_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/352/464/81352464_1580457691124_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/031/556/81031556_1524793395076_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/455/382/81455382_1590654643727_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/435/206/81435206_1589358597371_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/337/646/81337646_1577086446015_1_600x600.JPG",
			"https://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/080/832/600/80832600_1466415901146_1_600x600.JPG", ];

	let mainImg = 0;
	let prevImg = imgObject.length - 1;
	let nextImg = 1;

	function loadGallery() {

		let mainView = document.getElementById("mainView");
		mainView.style.background = "url(" + imgObject[mainImg] + ")";

		let leftView = document.getElementById("leftView");
		leftView.style.background = "url(" + imgObject[prevImg] + ")";

		let rightView = document.getElementById("rightView");
		rightView.style.background = "url(" + imgObject[nextImg] + ")";

		let linkTag = document.getElementById("linkTag")
		linkTag.href = imgObject[mainImg];

	};

	function scrollRight() {

		prevImg = mainImg;
		mainImg = nextImg;
		if (nextImg >= (imgObject.length - 1)) {
			nextImg = 0;
		} else {
			nextImg++;
		}
		;
		loadGallery();
	};

	function scrollLeft() {
		nextImg = mainImg
		mainImg = prevImg;

		if (prevImg === 0) {
			prevImg = imgObject.length - 1;
		} else {
			prevImg--;
		}
		;
		loadGallery();
	};

	document.getElementById("navRight").addEventListener("click", scrollRight);
	document.getElementById("navLeft").addEventListener("click", scrollLeft);
	document.getElementById("rightView").addEventListener("click", scrollRight);
	document.getElementById("leftView").addEventListener("click", scrollLeft);
	document.addEventListener('keyup', function(e) {
		if (e.keyCode === 37) {
			scrollLeft();
		} else if (e.keyCode === 39) {
			scrollRight();
		}
	});

	loadGallery();
</script>
</html>