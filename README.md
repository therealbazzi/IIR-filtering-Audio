# IIR-filtering-Audio
An IIR filter to remove background audio. We first listen to the polluted audio file. The first part imports the audio as below. We set sampling, notch and Nyquist frequencies as below:
https://github.com/therealbazzi/IIR-filtering-Audio/blob/93d001deb354108a89012b51a720294dba01d13b/main.m#L5-L17

Then an IIR filter is defined with appropriate zeros and poles, which is then used to filter the audio signal
https://github.com/therealbazzi/IIR-filtering-Audio/blob/93d001deb354108a89012b51a720294dba01d13b/main.m#L20-L41

The zeros and poles are given as such

<img width="528" alt="Screen Shot 2022-07-15 at 8 46 34 PM" src="https://user-images.githubusercontent.com/58386327/179269879-f0c92552-c737-47ab-9b83-736eb2d79d20.png">

and the transfer function is designed accordingly

<img width="546" alt="Screen Shot 2022-07-15 at 8 47 02 PM" src="https://user-images.githubusercontent.com/58386327/179269962-bb28b3e8-7e9e-42b1-9f20-36b45e131da4.png">


Happy audio coding ^^
