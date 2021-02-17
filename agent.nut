#require "ws2812.class.nut:3.0.0"

hardware.pin1.configure(DIGITAL_OUT, 1);

// Select the SPI bus
spi <- hardware.spi257;

// Instantiate LED array with 5 pixels
pixels <- WS2812(spi, 1);

pixels
  .set(0, [0,0,10])
  .draw()

