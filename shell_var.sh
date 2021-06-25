#!/bin/bash
SMART1=100 #변수 색 변해야 변수 인정 된 것.
echo $SMART1 # 등호 앞뒤로 띄어쓰기하면 인정 안 됨.
echo '$SMART1='$SMART1
echo '$SMART1='${SMART1:-200}
echo '$SMART2='${SMART2:--200}
echo '$SMART3='${SMART3:=300}
SMART4=
echo '$SMART4='$SMART4
echo '$SMART4='${SMART4:=400}
SMART5=
echo '$SMART5='${SMART5:+500}
SMART5=100
echo '$SMART5='${SMART5:+500}
SMART6=100
echo '$SMART6='${SMART6:?600}
SMART6=
echo '$SMART6='${SMART6:?600}
