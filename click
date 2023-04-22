<div>
  <iframe id="groove-embed" width="100%" height="240" src="https://www.mikeslessons.com/groove/GrooveEmbed.html?TimeSig=4/4&Div=16&Tempo=60&Measures=1&MetronomeFreq=4&H=|sxxxXxxxXxxxXxxx|&S=|x---x---x---x---|&K=|----------------|&Stickings=|----------------|" frameborder="0" ></iframe>
</div>

<div>
  <button id="tempo-60" class="tempo-btn active" onclick="changeTempo(60)">60 BPM</button>
  <button id="tempo-70" class="tempo-btn" onclick="changeTempo(70)">70 BPM</button>
  <button id="tempo-80" class="tempo-btn" onclick="changeTempo(80)">80 BPM</button>
  <button id="tempo-90" class="tempo-btn" onclick="changeTempo(90)">90 BPM</button>
  <button id="tempo-100" class="tempo-btn" onclick="changeTempo(100)">100 BPM</button>
  <button id="tempo-110" class="tempo-btn" onclick="changeTempo(110)">110 BPM</button>
</div>

<script>
  function changeTempo(tempo) {
    var grooveEmbed = document.getElementById("groove-embed");
    var grooveSrc = grooveEmbed.src;
    grooveSrc = grooveSrc.replace(/Tempo=\d+/, "Tempo=" + tempo);
    grooveEmbed.src = grooveSrc;
    var activeBtn = document.querySelector(".tempo-btn.active");
    activeBtn.classList.remove("active");
    var newBtn = document.querySelector("#tempo-" + tempo);
    newBtn.classList.add("active");
    grooveEmbed.contentWindow.postMessage({ type: "play" }, "*");
  }
</script>

<style>
  .tempo-btn {
    background-color: #ddd;
    border: none;
    color: black;
    padding: 10px 20px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 4px;
  }
  .tempo-btn.active {
    background-color: #4CAF50;
    color: white;
  }
</style>
