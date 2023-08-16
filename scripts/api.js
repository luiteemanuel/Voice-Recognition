document.addEventListener("DOMContentLoaded", () => {
  // buscando os elementos do no html
  const startBtn = document.getElementById("startBtn");
  const enviaBtn = document.getElementById("envia");
  const resultElem = document.getElementById("result");
  const texto = document.getElementById("texto");


  let recognition;
   // função para capturar a fala com a lib SpeechRecognition
  function startRecognition() {
    recognition = new (window.SpeechRecognition ||
      window.webkitSpeechRecognition)();
    recognition.lang = "pt-BR";
    recognition.continuous = true;
    recognition.interimResults = true;
    recognition.onstart = () => {
      startBtn.disabled = true;
      resultElem.textContent = "Ouvindo...";
    };
    recognition.onresult = (event) => {
      const result = event.results[event.results.length - 1][0].transcript;
      texto.value = result;
    };
    recognition.onend = () => {
      startBtn.disabled = false;
      resultElem.textContent = "Fala encerrada.";
      setTimeout(() => {
        recognition.stop();
        salvarTxt();
      }, 5000);
    };
    recognition.start();
  }
  // salvar fala em Txt
  function salvarTxt() {
    const transcriptionText = texto.value;
    const blob = new Blob([transcriptionText], { type: "text/plain" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = "Sua Fala.txt";
    a.click();
    URL.revokeObjectURL(url);
  }
  // função para chamar o envio do email
  function sendFormData(formData) {
    const xhr = new XMLHttpRequest();
    xhr.open("POST", "../envia.php", true);
    xhr.onreadystatechange = function () {
      if (xhr.readyState === XMLHttpRequest.DONE) {
        if (xhr.status === 200) {
          console.log("Email Enviado.");
        } else {
          console.error("Erro ao enviar:", xhr.responseText);
        }
      }
    };

    xhr.send(formData);
  }
  // evento para inicar a fala
  startBtn.addEventListener("click", () => {
    startRecognition();
  });
  // evento para enviar o email
  enviaBtn.addEventListener("click", () => {
    const formData = new FormData();
    formData.append("send", true);
    formData.append("texto", texto.value);
    formData.append("action", "enviar_email"); 
    sendFormData(formData);
  });
});
