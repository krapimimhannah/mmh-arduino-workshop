# Setup Instructions

## Arduino
1. Download the [Arduino IDE] (https://www.arduino.cc/en/Main/Software)
2. Open Arduino
3. Go to: File > Examples > Firmata > Standard Firmata
4. Check the following settings _before_ uploading to your board
    a. Tools > Board > "Arduino Genuine Uno"
    b. Tools > Port > "/dev/cu.usbmodem1421"
3. Upload to the file to your Arduino

#### For more [troubleshooting] (https://www.arduino.cc/en/Guide/Troubleshooting#upload)

## Processing
1. Download the [Processing IDE] (https://processing.org/download/)
2. Download [Arduino for Processing] (http://playground.arduino.cc/Interfacing/Processing)
3. Follow the Setup Instructions
3. Open Processing
4. Go to: Processing > File > Examples > Contributed Libraries > Arduino Input
5. Run the sketch: see the output list and look for "cu.submodem1421"
    a. Arduino.list()[1]

## Baby Steps:
We've provided a few simple startup scripts to get you on your way to hacking away with Arduino! We are going to cover

(a) reading in analog input from an Arduino into Processing
(b) debugging // how to use print statements to see what you are getting from your Arduino
(c) how to use some different Processing libraries to translate that into sound // visuals
