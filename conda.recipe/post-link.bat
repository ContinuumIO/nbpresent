"%PREFIX%\Scripts\pip" install -e git+git@github.com:ellisonbg/notebook.git@nbext-pain#egg=NotebookFortyTwo

"%PREFIX%\Scripts\jupyter" nbextension install --py="%PKG_NAME%" --overwrite --sys-prefix
"%PREFIX%\Scripts\jupyter" nbextension enable --py="%PKG_NAME%" --sys-prefix
"%PREFIX%\Scripts\jupyter" serverextension enable --py="%PKG_NAME%" --sys-prefix
"%PREFIX%\Scripts\pip" uninstall notebook
errorlevel 1 exit 1
