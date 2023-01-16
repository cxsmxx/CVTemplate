# Add ftp password as argument
filename="stoklasa-vojtech-sw-dev.pdf"
curl \
--request POST 'https://demo.gotenberg.dev/forms/chromium/convert/url' \
--form 'url="http://ftp.vstkl.xyz/cv/index.html"' \
-o $filename &&
curl -T $filename ftp://ftp.vstkl.xyz/ftp.vstkl.xyz/cv/$filename --user 4181465:$1
