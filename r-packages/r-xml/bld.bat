@rem :: Prevent interpretation of \? as escaped character.
@rem :: (where I'm not sure which character ? represents)
set PREFIXS=%PREFIX:\=/%
set LIB_XML=%PREFIXS%/Library/mingw-w64

"%R%" CMD INSTALL --build .
if errorlevel 1 exit 1

@rem Add more build steps here, if they are necessary.

@rem See
@rem http://docs.continuum.io/conda/build.html
@rem for a list of environment variables that are set during the build process.
