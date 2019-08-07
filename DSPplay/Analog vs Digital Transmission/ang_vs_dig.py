# coding=utf-8
import matplotlib
import matplotlib.pyplot as plt
import numpy as np
import IPython
from scipy.io import wavfile
import time
from sklearn import preprocessing

#plt.rcParams["figure.figsize"] = (14,4)
rate, music = wavfile.read("music.wav")
#读到了双声道的声音，变成单声道
music = music[rate * 0:rate * 4]
music = preprocessing.scale(music)
left = music[:,0]
right = music[:,1]
sample_number = music.shape[0]
total_time = sample_number / rate
time_series = np.linspace(0,total_time,sample_number)
fig, ax = plt.subplots(1, 1)
ax.plot(time_series, music)
ax.set_title('Time*Amplitude')
ax.set_xlabel('Time/s')
ax.set_ylabel('Amplitude/dB')
plt.show()

print("rate = " + str(rate))
#print("music[0] = " , music[:,0])
print("a")
#print(np.max(music[:]))
#print(music.shape)
#print(music)
for i in range(10):
    IPython.display.Audio(left, rate=rate)
    IPython.display.Audio(right, rate=rate)
    time.sleep(1)
#plt.plot(music)
#print("Hello")