{\rtf1\ansi\ansicpg1252\cocoartf1345\cocoasubrtf380
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural

\f0\fs24 \cf0 1. Drag ENTIRE CorePlot directory into project root\
2. Add CorePlot-CocoaTouch.xcodeproj to project\
3. Under BUILD PHASE, under Target Dependencies add the xcodeproj file\
4. Under Link Binary With Libraries, add Accelerate, QuartzCore, and the libCorePlot-CocoaTouch.a libraries\
5. Under Build Settings search \'93Header Search Paths\'94 and add an entry for $\{PROJECT_DIR\}/CorePlot_1.5.1/Source/framework (set recursive to true so that it searches all subdirs, and set Always Search User Paths to true).\
6. In Build Settings add an entry to Other Link Flags for -ObjC}