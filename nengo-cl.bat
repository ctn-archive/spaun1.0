@echo off
IF [%1]==[] (
    java -Xms100m -Xmx800m -cp .;nengo-1403.jar;lib/Blas.jar;lib/colt.jar;lib/commons-collections-3.2.jar;lib/formsrt.jar;lib/Jama-1.0.2.jar;lib/jcommon-1.0.0.jar;lib/jfreechart-1.0.1.jar;lib/jmatio.jar;lib/jung-1.7.6.jar;lib/jython.jar;lib/log4j-1.2.16.jar;piccolo.jar;lib/piccolox.jar;lib/qdox-1.6.3.jar;lib/ssj.jar org.python.util.jython -i ./python/startup_cl.py
) ELSE (
    java -Xms100m -Xmx800m -cp .;nengo-1403.jar;lib/Blas.jar;lib/colt.jar;lib/commons-collections-3.2.jar;lib/formsrt.jar;lib/Jama-1.0.2.jar;lib/jcommon-1.0.0.jar;lib/jfreechart-1.0.1.jar;lib/jmatio.jar;lib/jung-1.7.6.jar;lib/jython.jar;lib/log4j-1.2.16.jar;piccolo.jar;lib/piccolox.jar;lib/qdox-1.6.3.jar;lib/ssj.jar org.python.util.jython -c "execfile('./python/startup_cl.py'); execfile('%1')"
)

