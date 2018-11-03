YESTERDAY_YEAR2=`(export TZ=TAIST+16; date +%y)`
YESTERDAY_YEAR4=`(export TZ=TAIST+16; date +%Y)`
YESTERDAY_MONTH=`(export TZ=TAIST+16; date +%m)`
YESTERDAY_DAY=`(export TZ=TAIST+16; date +%d)`

setdate=$YESTERDAY_YEAR4$YESTERDAY_MONTH$YESTERDAY_DAY

echo 'Pull File On ' $setdate
echo 'Listing Before Removal'

find /logs/papilogs/sg/PSPA_SG  -type f -mtime +30 -print
find /logs/papilogs/sg/PSPA_SG2 -type f -mtime +30 -print
#find /logs/papilogs/hk         -type f -mtime +30 -print


echo 'Removal Inprogress'
echo ''

find /logs/papilogs/sg/PSPA_SG  -type f -mtime +24 -print | xargs -I '{}' rm '{}'
find /logs/papilogs/sg/PSPA_SG2 -type f -mtime +24 -print | xargs -I '{}' rm '{}'
#find /logs/papilogs/hk                 -type f -mtime +24 -print | xargs -I '{}' rm '{}'

echo ''
echo 'Listing After Removal'
echo ''

find /logs/papilogs/sg/PSPA_SG  -type f -mtime +24 -print
find /logs/papilogs/sg/PSPA_SG2 -type f -mtime +24 -print
#find /logs/papilogs/hk  -type f -mtime +24 -print

echo ''
echo 'Listing Before Move'
echo ''

find /logs/papilogs/sg/PSPA_SG  -type f -mtime +8 -print
find /logs/papilogs/sg/PSPA_SG2 -type f -mtime +8 -print
#find /logs/papilogs/hk  -type f -mtime +8 -print

echo ''
echo 'Moving Inprogress'
echo ''

find /logs/papilogs/sg/PSPA_SG/*tar*  -type f -mtime +8 -print | xargs -I '{}' mv '{}'  /papinfsg
find /logs/papilogs/sg/PSPA_SG2/*tar* -type f -mtime +8 -print | xargs -I '{}' mv '{}'  /papinfsg
#find /logs/papilogs/hk/*tar*  -type f -mtime +8 -print | xargs -I '{}' mv '{}'  /papinfhk


echo ''
echo 'After Move'
echo ''

find /logs/papilogs/sg/*tar*  -type f  -mtime +8 -print
find /logs/papilogs/sg2/*tar* -type f  -mtime +8 -print
#find /logs/papilogs/hk/*tar*  -type f  -mtime +8 -print

echo ''
echo 'Starting To Pull'

scpg3 -r jboss@10.91.138.176:/logs/papilogs/sg/*$setdate*.gz /papinfsg
scpg3 -r jboss@10.91.138.177:/logs/papilogs/sg/*$setdate*.gz /papinfsg
#scpg3 -r jboss@10.91.138.178:/logs/papilogs/sg/*$setdate*.gz /papinfhk

echo ''
echo 'End Of Pull Operation'
