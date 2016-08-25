# -*- coding: utf-8 -*-

import requests
import json
import Adafruit_DHT
import smbus

def post_to_slack(text):
    payload = {
        "channel": "#xxxxx",
        "username": "raspi",
        "text": text,
        "iconemoji": ":ghost:"
    }
    headers = {'content-type': 'application/json'}
    requests.post("https://hooks.slack.com/services/XXXXX", data=json.dumps(payload), headers=headers)


def temperature_and_humidity():
    humidity, temperature = Adafruit_DHT.read_retry(Adafruit_DHT.DHT11, 4)
    if humidity and temperature:
        return temperature, humidity
    else:
        return 0.0, 0.0

def lux():
    bus = smbus.SMBus(1)
    addr = 0x23

    try:
        lux = bus.read_i2c_block_data(addr, 0x11)
        return float(lux[1]* 10)
    except Exception as e:
        return 0.0

if __name__ == '__main__':
    t, h = temperature_and_humidity()
    l = lux()
    text = "おつかれさまです。ただいまの執務エリアは気温 {0} deg C, 湿度 {1} %, 明るさ {2} Lux です。定時だ。帰れ。残業される方はお仕事頑張ってください。".format(t, h, l)
    post_to_slack(text)