import serial
import re
import time
import mido
import operator


def conv_str_2_dic(str):
    res = re.search(r'note_(.*) channel=(.*) note=(.*) velocity=(.*) time=(.*)', str)
    dic = {
        'noteType': res.group(1),
        'note': int(res.group(3)),
        'time': int(res.group(5))
    }
    # print(dic)
    return dic


def conv_note_2_send(note):
    # 计1 = C为base_key = 0，本歌为1 = F
    base_key = 3
    # 根据全全半全全全半列表
    # 大字组
    if note == 60:
        return 1
    # 全
    elif note == 62:
        return 2
    # 全
    elif note == 64:
        return 3
    # 半
    elif note == 65:
        return 4
    # 全
    elif note == 67:
        return 5
    # 全
    elif note == 69:
        return 6
    # 全
    elif note == 71:
        return 7
    # 半
    # 小字组
    elif note == 72:
        return 11
    # 全
    elif note == 74:
        return 12
    # 全
    elif note == 76:
        return 13
    # 半
    elif note == 77:
        return 14
    # 全
    elif note == 79:
        return 15
    # 全
    elif note == 81:
        return 16
    # 全
    elif note == 83:
        return 17
    # 半
    # 小字一组
    elif note == 84:
        return 21
    # 全
    elif note == 86:
        return 22
    # 全
    elif note == 88:
        return 23
    # 半
    elif note == 89:
        return 24
    # 全
    elif note == 91:
        return 25
    # 全
    elif note == 93:
        return 26
    # 全
    elif note == 95:
        return 27
    else:
        print(note)
        return 0


def play(dic):
    if dic['noteType'] == 'on':
        # +3是因为本歌为F调，下位机以C调制作
        hex_str = bytes.fromhex("%.2d" % conv_note_2_send(dic['note']))
        ser.write(hex_str)
    elif dic['noteType'] == 'off':
        # bpm=100  八分音符为半拍，时长为1/2/100min = 0.3s 被计作240 故延迟需除以800
        time.sleep(dic['time'] / 800)
        hex_str = bytes.fromhex("28")
        ser.write(hex_str)


def temp_alarm(ser):
    mid = mido.MidiFile("/Users/kai/Music/GarageBand/星辰大海-副歌.mid")
    for i, track in enumerate(mid.tracks):
        for msg in track[7:-1]:
            play(conv_str_2_dic(str(msg)))
    hex_str = bytes.fromhex("00")
    ser.write(hex_str)


try:
    port = "/dev/tty.usbserial-14430"  # CH340
    baudrate = 9600
    ser = serial.Serial(port=port, baudrate=baudrate, timeout=5)
    while True:
        read = ser.readline().decode("utf-8")
        print(read)
        if operator.eq(read, 'TempAlarm!!\n'):
            temp_alarm(ser)
            time.sleep(10)

except:
    print("serial port open failed!")
    pass
