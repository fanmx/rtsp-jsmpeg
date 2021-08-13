/*
 * @Description: 
 * @Project: Secrecy
 * @Author: michelle
 * @Date: 2021-08-04 20:08:40
 * @LastEditors: michelle
 * @LastEditTime: 2021-08-05 10:22:39
 * @Modified By: michelle
 * @FilePath: /视频调研/jsmpeg-ws-web/test/server.js
 */
const Stream = require('../src/videoStream');

const options = {
    name: 'streamName1',
   // url: 'rtmp://58.200.131.2:1935/livetv/hunantv',
    port: 5000,
};
stream = new Stream(options);
// stream.start();
// setTimeout(stream.stop.bind(stream), 10 * 1000);

// const options1 = {
//     name: 'streamName1',
//    // url: 'rtmp://58.200.131.2:1935/livetv/hunantv',
//     port: 5001,
// };
// stream1 = new Stream(options1);

// const options2 = {
//     name: 'streamName2',
//    // url: 'rtmp://58.200.131.2:1935/livetv/hunantv',
//     port: 5002,
// };
// stream2 = new Stream(options2);
