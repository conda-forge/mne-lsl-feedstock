METADATA_VERSION=$(pip show mne-lsl | grep Version | awk '{print $2}')
echo "Got mne-lsl version $METADATA_VERSION from pip show"
echo "Want version $PKG_VERSION"
if [ "$METADATA_VERSION" != "$PKG_VERSION" ]; then
    echo "Version does not match, failing test"
    exit 1
fi
