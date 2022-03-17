npm run build; 
npm link;


# which nativefier;
ARCH="darwin-x64";
NAME="Google Calendar";

rm -r "/Applications/$NAME.app";

nativefier \
    https://calendar.google.com /Applications \
    --internal-urls "^http(s)?:\/\/(www|calendar|).?google\.com(?!\/url\?q=)" \
    --name "${NAME}" \
    --strict-regex \
    --user-agent firefox \
    --browserwindow-options '{"webPreferences": {"nativeWindowOpen": true}}' \
    --inject ./calendar.js;
        # -e 14.1.1 \

    

# cp -r "./${NAME}-${ARCH}/${NAME}.app" "/Applications/${NAME}" ;
cp -R "/Applications/$NAME-$ARCH/$NAME.app" "/Applications/"
rm -r "/Applications/$NAME-$ARCH/"

# cp -r "/Applications/${NAME}-${ARCH}/${NAME}.app" "/Applications/"





# npm run build; npm link; sh calendar.sh; /Applications/GCAL-darwin-x64/GCAL.app/Contents/MacOS/GCAL --verbose;
