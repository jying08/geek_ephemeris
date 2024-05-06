#!/bin/bash


cd ~/geek_ephemeris

git pull 2>&1>/dev/null

DATE=`date +"%d-%m"`
DAYOFYEAR=`date +%j`
DAYOFWEEK=`date +%u`
DAYOFMONTH=`date +%d`
MONTHNUMBER=`date +%m`
BIRTHDAY=`cat ~/geek_ephemeris/birthday`
#VALIDO QUE SEA DÍA 256 DEL AÑO
if test "$DAYOFYEAR" == "256";
then
       PROGRAMERDAY=`date +"%d-%m"` 
else
       
       PROGRAMERDAY="01-01-0001"
fi

#VALIDO QUE SEA ULTIMO VIERNES DE JULIO
if [ $MONTHNUMBER -eq 07 ] && [ $DAYOFWEEK -eq 5 ] && [ $DAYOFMONTH -gt 24 ]
then
	SYSADMINDAY=`date +"%d-%m"`
else

	SYSADMINDAY="01-01-0001"
fi

#VALIDO QUE SEA EL CUARTO VIERNES DE NOVIEMBRE
if [ $MONTHNUMBER -eq 11 ] && [ $DAYOFWEEK -eq 5 ] && [ $DAYOFMONTH -gt 21 -a $DAYOFMONTH -lt 29 ]
then
	SYSINGDAY=`date +"%d-%m"`
else
	SYSINGDAY="01-01-0001"
fi

#CASE PARA VER QUE DIBUJO MOSTRAR
case $DATE in
	27-02)
                cat ~/geek_ephemeris/welcomePictures/pokemon | lolcat -a -s 100
                echo ""
                echo "Feliz día de Pokemon" | lolcat -a -s 20
                echo ""
        ;;
	14-03)
		cat ~/geek_ephemeris/welcomePictures/pi2 | lolcat -a -s 100
		echo ""
		echo "Feliz día de Pi" | lolcat -a -s 20
		echo ""
	;;
	25-03)
                cat ~/geek_ephemeris/welcomePictures/gandalf2 | lolcat -a -s 100
                echo ""
		echo "Feliz día de Tolkien" | lolcat -a -s 20
		echo ""
        ;;
	31-03)
                cat ~/geek_ephemeris/welcomePictures/wbd | lolcat -a -s 100
                echo ""
                echo "Día mundial del backup - https://www.worldbackupday.com/es" | lolcat -a -s 20
                echo ""
        ;;
	02-04)
                cat ~/geek_ephemeris/welcomePictures/lego | lolcat -a -s 100
                echo ""
                echo "Feliz día mundial de LEGO" | lolcat -a -s 20
                echo ""
        ;;
	04-05)
                cat ~/geek_ephemeris/welcomePictures/starwars | lolcat -a -s 100
                echo ""
		echo "Feliz día de Star Wars" | lolcat -a -s 20
                echo "May the 4th - May the Force be with you" | lolcat -a -s 20
		echo ""
        ;;
	09-05)
                cat ~/geek_ephemeris/welcomePictures/goku2 | lolcat -a -s 100
                echo ""
                echo "Feliz día de Goku" | lolcat -a -s 20
                echo ""
        ;;
	10-05)
                cat ~/geek_ephemeris/welcomePictures/garrote | lolcat -a -s 100
                echo ""
		echo "Feliz día del garrote" | lolcat -a -s 20
		echo ""
        ;;
	25-05)
                cat ~/geek_ephemeris/welcomePictures/friki | lolcat -a -s 100
                echo ""
		echo "Feliz día del Orgullo Friki" | lolcat -a -s 20
		echo ""
        ;;
	25-08)
                cat ~/geek_ephemeris/welcomePictures/linux | lolcat -a -s 100
		echo ""
        ;;
	29-08)
                cat ~/geek_ephemeris/welcomePictures/joystick | lolcat -a -s 100
		echo ""
		echo "Feliz día mundial del Gamer" | lolcat -a -s 20
		echo ""
        ;;
	31-08)
                cat ~/geek_ephemeris/welcomePictures/nfs | lolcat -a -s 100
                echo ""
		echo "Lanzamiento de The Need for Speed " | lolcat -a -s 20
		echo ""
        ;;
	15-09)
                cat ~/geek_ephemeris/welcomePictures/batman | lolcat -a -s 100
                echo ""
		echo "Feliz día mundial de Batman" | lolcat -a -s 20
		echo ""
        ;;
	19-09)
                cat ~/geek_ephemeris/welcomePictures/pirata | lolcat -a -s 100
                echo ""
                echo "Feliz día Internacional de Hablar como un Pirata" | lolcat
                echo ""
        ;;
	22-09)
                cat ~/geek_ephemeris/welcomePictures/hobbit | lolcat -a -s 100
                echo ""
                echo "Feliz día del Hobbit" | lolcat -a -s 20
                echo ""
        ;;
	21-10)
                cat ~/geek_ephemeris/welcomePictures/backToTheFuture | lolcat -a -s 100
                echo ""
                echo "Feliz día de Volver al Futuro" | lolcat -a -s 20
                echo ""
        ;;
	18-12)
                echo "🏆ARGENTINA CAMPEON!!⭐⭐⭐" | lolcat -a -s 20
                echo ""
	;;
	$BIRTHDAY)
                cat ~/geek_ephemeris/welcomePictures/birthday | lolcat -a -s 100
                #echo ""
		#echo "Feliz cumpleaños!!" | lolcat
		echo ""
        ;;
	$SYSINGDAY)
		cat ~/geek_ephemeris/welcomePictures/books | lolcat -a -s 100
		echo ""
		echo "Feliz día internacional del Ingeniero de Sistemas" | lolcat -a -s 20
		echo ""
	;;
	$PROGRAMERDAY)
		cat ~/geek_ephemeris/welcomePictures/programerday | lolcat -a -s 100
		echo ""
		echo "Feliz día del programador" | lolcat -a -s 20
		echo ""
	;;	
	$SYSADMINDAY)
		cat ~/geek_ephemeris/welcomePictures/sysadminday | lolcat
                #echo ""
		#echo "Feliz día del SYSADMIN"
		echo ""
        ;;
	*)
		cat ~/geek_ephemeris/welcomePictures/submarine | lolcat -a -s 100 
       		echo "🤿 Cyclops: Welcome aboard captain. All systems online.🤿" | lolcat -a -s 20
		echo ""
	;;
esac

