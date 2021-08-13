###
 # @Description: 视频流多路推送
 # @Project: Secrecy
 # @Author: michelle
 # @Date: 2021-08-04 14:46:46
 # @LastEditors: michelle
 # @LastEditTime: 2021-08-13 15:58:03
 # @Modified By: michelle
 # @FilePath: /video/rtsp-jsmpeg/single/ffmpeg.sh
### 
#!/ffmpeg.sh

# ffmpeg -i "rtsp://admin:hhuav123456@192.160.70.117:554/h264/ch1/main/av_stream" -f flv -r 25 -s 640x360 -an rtmp://139.109.23.175/vod/002?sign=1609344000-b4093aa5b98784a55bb05cee1c0d9081 &
# ffmpeg -i "rtsp://admin:hhuav123456@192.160.70.120:554/h264/ch1/main/av_stream" -f flv -r 25 -s 640x360 -an rtmp://139.109.23.175/vod/001?sign=1609344000-8a312b9438333bb48c4cdf79b4b8e793 &

# rtsp://admin:jd123456@172.16.154.108
# rtsp://admin:jd123456@172.16.154.63
# rtsp://admin:jd123456@172.16.154.64
# rtsp://admin:jd123456@172.16.154.65
# rtsp://admin:jd123456@172.16.154.77
# rtsp://admin:jd123456@172.16.154.78
#-i "rtsp://admin:jd123456@172.16.154.64" -i "rtsp://admin:jd123456@172.16.154.65"

# 视频流测试
ffmpeg -i "rtsp://admin:jd123456@172.16.154.65" -q 0 -f mpegts -codec:v mpeg1video -s 640x360 http://127.0.0.1:8081/supersecret/live1
ffmpeg -i "rtsp://admin:jd123456@172.16.154.108" -q 0 -f mpegts -codec:v mpeg1video -s 640x360 http://127.0.0.1:8081/supersecret/live2
ffmpeg -i "rtsp://admin:jd123456@172.16.154.63" -q 0 -f mpegts -codec:v mpeg1video -s 640x360 http://127.0.0.1:8081/supersecret/live3
ffmpeg -i "rtsp://admin:jd123456@172.16.154.108" -i "rtsp://admin:jd123456@172.16.154.63" -i "rtsp://admin:jd123456@172.16.154.64" -i "rtsp://admin:jd123456@172.16.154.65" -an -f mpegts -codec:v mpeg1video -s http://127.0.0.1:8081/supersecret "[0:v]pad=iw*2:ih*2[a];[a][1:v]overlay=w[b];[b][2:v]overlay=0:h[c];[c][3:v]overlay=w:h" out.mp4
# ffmpeg -i 流1 -i 流2 -i 流3 -i 流4 -an -f flv -filter_complex"[0:v]pad=iw*2:ih*2[a];[a][1:v]overlay=w[b];[b][2:v]overlay=0:h[c];[c][3:v]overlay=w:h" -f flv 输出流
# -an是消除声音
# -f是指定输出格式，格式为flv
# -filter_complex 是拼接参数，
# 后面的参数格式[0:v] [1:v]是输入的第几个视频流，编号根据前面的输入流，依次往下排就好
# 第一个pad=iw*2:ih*2[a]pad用作边界扩充,设置画布（画布就是边界扩充后的大小）一共有多大，这里iw*2表示横者有2个第一个视频流大小，ih*2表示竖着者有2个第一个视频流大小，[a]表示这是这个视频流的别称，方便后面使用。
# [a][1:v]overlay=w[b]第二个视频流[1:v]接在[a]上，视频流的左上角在画布的坐标是(w,0)没写h就默认是0
# 后面以此类推[a][1:v]``[b][2:v]……依次写就好，然后后面的overlay=w和h根据在画布的绝对位置

# npm install -g ws
# npm install ws
# npm install http-server -g
# node websocket-relay.js supersecret 8081 8082
# http-server

