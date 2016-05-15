// Assignments from Week 6, Javascript
// May 9 - May 13, 2016

// Fix this loop so that it enumerates all of the key/value pairs.
//
// var a = { one: 1, two: 2, three: 3, four: 4, five: 5 };
// for (var i = 0, len = a.length; i < len; i++ ){
//   console.log(i, a[i]);
// }
// JSON objects have no length, so a.length is undefined and the
// loop doesn’t execute. There’s another type of for loop that helps
// us easily loop over all of the objects in a collection.

var a = { one: 1, two: 2, three: 3, four: 4, five: 5 };

for (var i in a) {
  console.log(i, a[i]);
}

// Often, we get very large and uncomfortable JSON objects (basically,
// JavaScript hashes/objects) back from an API. Let’s practice
// working with one such object.
//
// You’re going to want this file: https: gist.github.com/seansellek/fae4a5e6f09612cfe9c5
//
// In it, we’ve stored the result of calling iTunes API for all music videos by
// Beyoncé (you can see for yourself here: https://itunes.apple.com/search?term=beyonce&entity=musicVideo).
//
// Your task is to print the names of each of her music videos onto the screen.

for (i=0; i < videos.results.length; i++) {
    console.log(videos.results[i]["trackName"]);
}

videos.results.forEach(function(video) {
  console.log(video.trackName);
});

var results = videos.results
for( video in results) {
  console.log(results[video].trackName);
}
