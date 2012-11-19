var direct = 'DIRECT';
//var http_proxy = 'SOCKS5 127.0.0.1:7777; SOCKS 127.0.0.1:7777; DIRECT';
var http_proxy = 'PROXY 127.0.0.1:8087';

var gfwed_list = [
	"adzerk.net",
	"akamai.net",
	"akamaihd.net",
	"amazon.com",
	"appspot.com",
	"archive.org",
	"bbc.com",
	"bbc.co.uk",
	"bbci.co.uk",
	"bitly.com",
    "bit.ly",
	"blogger.com",
	"blogspot.com",
	"blogspot.jp",
	"cloudfront.net",
	"cl.ly",
    "chicagotribune.com",
	"doubleclick.net",
	"facebook.com",
	"fbcdn.net",
	"feedburner.com",
	"feedsportal.com",
    "flickr.com",
    "staticflickr.com",
	"git-scm.com",
	"gmail.com",
	"goo.gl",
	"google.com",
	"googletagservices.com",
	"googleusercontent.com",
	"gravatar.com",
	"j.mp",
	"mediafire.com",
	"openvpn.net",
	"osfoora.com",
	"posterous.com",
	"quoracdn.net",
	"rapidshare.com",
	"revsci.net",
	"shawngrimes.me",
    "shell909090.com",
	"staticflickr.com",
    "sfileydy.com",
    "sns.mx",
	"t.co",
	"twimg.com",
	"twitpic.com",
	"twitter.com",
    "thepiratebay.se",
    "tumblr.com",
	"vimeo.com",
	"wordpress.com",
	"wsj.net",
	"yfrog.com",
	"youtube.com",
	"ytimg.com",
	"yimg.com",
	"instagr.am",
	"instagram.com"
];

var gfwed = {};
for (var i = 0; i < gfwed_list.length; i += 1) {
	gfwed[gfwed_list[i]] = true;
}

function host2domain(host) {
	var dotpos = host.lastIndexOf(".");
	if (dotpos === -1)
		return host;
	// Find the second last dot
	dotpos = host.lastIndexOf(".", dotpos - 1);
	if (dotpos === -1)
		return host;
	return host.substring(dotpos + 1);
};

function FindProxyForURL(url, host) {
	return gfwed[host2domain(host)] ? http_proxy : direct;
};
