percentage=$(echo " $(du -ks | awk -F ' ' '{print $1}')/50000 " | bc)
# -k shows result in kilobytes and -s shows only the total used space
echo "Using $percentage % of quota"