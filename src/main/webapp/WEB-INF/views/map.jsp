<!-- OpenLayers Simple Map with an OSM source -->
<!-- Related API documentation : ol.Map, ol.View, ol.layer.Tile, ol.source.OSM -->
<!DOCTYPE html>
<html>
	<head>
		<title>OpenLayers Simple Map</title>
		<link rel="stylesheet" href="https://openlayers.org/en/v4.6.4/css/ol.css" type="text/css">
		<!-- The line below is only needed for old environments like Internet Explorer and Android 4.x -->
		<script src="https://cdn.polyfill.io/v2/polyfill.min.js?features=requestAnimationFrame,Element.prototype.classList,URL"></script>
		<script src="https://openlayers.org/en/v4.6.4/build/ol.js"></script>
	</head>
	<body>
		<!-- 지도가 띄워질 영역 생성을 위한 엘리먼트(DIV) 지정 -->
		<div id="map" class="map"></div>
		<script>
			// Map : 웹 지도 서비스를 제공하기 위해 기본이 되는 클래스
			// 지도를 생성하고 조작하기 위한 프로퍼티 및 함수로 구성되어 있음
			// Layer, 컨트롤, 팝업 등을 등록하기 위한 기본 컨테이너가 됨
			var map = new ol.Map({					
				layers : [
					new ol.layer.Tile({
						source : new ol.source.OSM()
					})
				],
				target : 'map',
				view : new ol.View({
					center: [0, 0],
					zoom : 2
				})
			});
		</script>
	</body>
</html>