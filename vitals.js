import {onCLS, onINP, onLCP, onFCP, onTTFB} from 'https://unpkg.com/web-vitals@5?module';

function send(metric) {
  const body = JSON.stringify(metric);
  navigator.sendBeacon('https://reportd.natwelch.com/analytics/subalpinedrift', body)
    || fetch('https://reportd.natwelch.com/analytics/subalpinedrift', {body, method: 'POST', keepalive: true});
}

onCLS(send);
onFCP(send);
onINP(send);
onLCP(send);
onTTFB(send);
