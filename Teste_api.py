import speech_recognition as sr

# testando Api
def ouvir_mic():
    microfone = sr.Recognizer()

    with sr.Microphone() as source:
       
       #redução de ruido
        microfone.adjust_for_ambient_noise(source)

        print("Começe a Falar: ")

        audio = microfone.listen(source)

    try:
        
        frase = microfone.recognize_google(audio,language='pt-BR')
        print('Você disse: ' + frase)
    except sr.UnkownValueError:
        print("Voz nao reconhecida")
    
    return frase
ouvir_mic()

