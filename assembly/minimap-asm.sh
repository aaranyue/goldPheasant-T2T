
ref=$1
asm=$2
cpu=12

minimap2 --secondary=no -t $cpu -x asm5 $ref $asm | awk '$11>20000 && $10/$11>0.4' | sort -k6,6 -k8,8n > $ref.$asm.paf
