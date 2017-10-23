FILE(
        WRITE "${TARGET_FILE}"
        "configure -platform ${PLATFORM} ${BUILD_TYPE} -shared"
		" -opengl desktop"
        " -system-zlib -system-libpng -system-libjpeg"
		" -skip qt3d -skip qtactiveqt -skip qtandroidextras -skip qtcanvas3d"
		" -skip qtcharts -skip qtconnectivity -skip qtdatavis3d -skip qtdeclarative"
		" -skip qtdoc -skip qtgamepad -skip qtgraphicaleffects -skip qtlocation"
		" -skip qtmacextras -skip qtmultimedia -skip qtnetworkauth -skip qtpurchasing"
		" -skip qtquickcontrols -skip qtquickcontrols2 -skip qtremoteobjects -skip qtscript"
		" -skip qtscxml -skip qtsensors -skip qtserialbus -skip qtserialport"
		" -skip qtspeech -skip qtsvg -skip qtvirtualkeyboard -skip qtwayland"
		" -skip qtwebchannel -skip qtwebengine -skip qtwebsockets -skip qtwebview"
		" -skip qtwinextras -skip qtx11extras -skip qtxmlpatterns"
        " -nomake examples -nomake tests"
        " -opensource -confirm-license -no-ltcg"
        " -I \"${JPEG_INCLUDE_DIR}\" -I \"${ZLIB_INCLUDE_DIR}\""
        " -I \"${PNG_INCLUDE_DIR}\" -L \"${JPEG_LINK_DIR}\" -L \"${ZLIB_LINK_DIR}\""
        " -L \"${PNG_LINK_DIR}\""
        "\n"
        "${MAKE_COMMAND}\n"
)