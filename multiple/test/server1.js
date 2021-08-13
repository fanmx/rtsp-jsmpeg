/*
 * @Description: 
 * @Project: Secrecy
 * @Author: michelle
 * @Date: 2021-08-04 20:08:40
 * @LastEditors: michelle
 * @LastEditTime: 2021-08-04 22:07:21
 * @Modified By: michelle
 * @FilePath: /视频调研/jsmpeg-ws-web/test/server1.js
 */
const Stream = require('../src/videoStream');

const options = {
    name: 'streamName',
   // url: 'rtmp://58.200.131.2:1935/livetv/hunantv',
    port: 5001,
};
stream = new Stream(options);
// stream.start();
// setTimeout(stream.stop.bind(stream), 10 * 1000);
