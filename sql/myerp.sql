/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.19 : Database - myerp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myerp` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myerp`;

/*Table structure for table `act_ge_bytearray` */

DROP TABLE IF EXISTS `act_ge_bytearray`;

CREATE TABLE `act_ge_bytearray` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTES_` longblob,
  `GENERATED_` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_BYTEARR_DEPL` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_BYTEARR_DEPL` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_bytearray` */

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('402',1,'leaveBill.png','401','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0Ã\0\0¸\0\0\0/ã}Š\0\0$zIDATxœíİolS×ıÇqk…á¡MÍ´n‰ö¤®ö\0?ØˆµV\n†ƒ4âIÛjiUãí³4©UëªiêÂ&Ê´–EÓÚ¡©Ctk™µ‰ß<UK¥]VH—±@3ş„\0¥u·ê¡f$ä’Øñùİ\\ÃåâÄÆvâœswŞ/}ûŞë{rÔïùÔ¯=\0\0 VÙ\'\0\0\0\\Œ$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0\0€Ú‘$\0\0@íH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0jG’\0\0\0µ#I\0J0#‘HlÜ¸1o\n…Bæ=ñx<“ÉÈ>A\0˜IÌfbğz½f†0sCW×==oj×«¯mØğT$ihhX±bE,“}²\0PŒ$H388Í\0a&†Él®|õíÛ¿fÍ÷@oo¯ì€[H€f,ØÓóÆ3„³X¹råÚµk\rÃ=\0˜F’\0š\"‘HGGGUÂY¿ß²%¦ÓiÙC\0’°°Ì±bÅŠx<^sŒ°ßì0“J¥d€îHÀ‚ŠD\"sö;f˜àm\0r‘$€…ÓÙÙ9—75fVW×p8,{X\0´F’\0Èàà` ˜ÇQ¨GytëÖ­²@_$	`˜1âĞáyOÃgÏİ{¯÷8\0ÈB’\0B\"‘‡Ãó#\nõøã?Ú¼y³ì!ĞIXÁ`°ÚKGTõ²DSS“ì!ĞI¨»L&ÓĞĞP§Q¨–––şş~Ù #’Pw±X,\ZÖ5I<³iSGG‡ìĞI¨»µk×nİºµ®IbOÏÁ`Pö@èˆ$Ô](ªä;ºæR§‡†î½×\'{ \0tD’\0ê®NŸÿtÖÕÑ1¯×+{ \0tD’\0ê®©©iøì¹º&	³<şs ­¨;¿ßÿÖ‰$	\0ÿ“h=@İÕõbü\0¹H@İE£Ñ—¶m«k’èÛ·¿¥¥Eö@èˆ$ÔİæÍ›üGuMfRY³æû²\n@G$	 îR©”Ïç«k’hkkëîî–=P\0:\"I\0¡®tyut¬¡¡¯ IXu}ƒãÙç3.{ˆ\04E’\0‚a>Ÿ¯W•¸::vï½¾t:-{ˆ\04E’\0H<¸½$\0ü!I\0çÛ>ØÕµccÄ[\'N477_“=2\0ú\"I\0\'“É´´´Ì×Ÿ^^¼4bÆˆÓCC²‡@k$	`A%“I3L˜ËÿÜcÄ·|p×«¯É\0İ‘$€…688ØÜÜÜ·oÿ\\ŞÔ0ã1€\nH€™LfåÊ•6<uñÒHUâêèØ³Ï=Wx‹Dö \0`\ZIÃ03I,[æ7“™*‰/mÛfnÿøã?2ó‡ìÓ€H€Létú‰\'hhhøöƒšAáĞá¢ô`Ş³}ûÿ=ÜŞnn³fÍ÷S©”ìS€Û$\0ùÃH$Ñh´¹¹Ùs;ó3FÄãñL&#û4`$	@Efª}\n\0P’ \"‡ÿ6¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPI€[Ğ­\0‘$\0¸İ\nPE<7„×ë\ræ¦¦&óçÒ¥K“É¤ìS€’H€*vîÜé™¡µµ5‘HÈ>5\0(‰$¨Â0Œ%K–8cÄòåË›šš2™ŒìS€’H€BÖ¯_¿hÑ\";I¬[·®££CöI@9$	@-…ÑŞŞîóùÃ}F\0PIPËŞ½{/^l&‰P(Ä_H\0PIPÎªU«\nIBö‰\0À‘$\0å¤Ói3IğáO\0®@’\0TÄ•©\0¸İ\n¸Å0Œx<‰D‚Á Ïç›yuM˜c7áp8‹ñT\0å‘$€º»»ÍÔŒÛ·oßÓÓszhh2›Õ³Ì±›¿®®®5kÖ˜¿3OÈ\0ê\"I\0Âüßîh4ÚÖÖ6|vx2;I9ëâ¥‹f09étZöDPIº3cD xiÛ‹“Ù	ªTízuWKKK*•’=]\0”C’€î¢Ñ¨#®SåkOÏî•+¿&{º\0(‡$­uww·µ­Îæª’zò§?Ù´éiÙ“@-$	èË0ŸÏwö\\*›§*©Ñ±››—s¡\0N$	è+‹E£Ñlîš]­¡oVø9Iç^ZÕ¦M¿äKÅ\08‘$ ¯p8Üµão·bÄê¶…xJœÊŠ·\'ÄÑ	qh4·yÇ¯Ÿ»r`RüÇÑwMì¾.~×wü‘µJ_Ô¥Ôáş@  {ê\0(„$}ùış\'dsc…òx<£BŒåÅ•œ¸<)®	ñãŸ=åùÄ§W¬ŸËŠá	1|]¤q:\'^~ó¨õ²Ä˜†5:6âõzeO\0…$ ¯†††K#ç²¹ÑB™áàÚ”˜˜š~(—ŸşùÊkÿøâ—¾üógÍ	q5\'®dÅå¬È±ûà1+IŒêY®ä\rÀ\0}Yiàª]æ?Çrbd\\LNİØ “ÉüöùşÍóÃç§/Ê”Í‹I+aì?|´h_­Š$À‰\0}Yià¿vM\'‰)qñšøhTd…˜œ˜ğ/[æñÜåñxúî\Zç‡í«U‘$\08Ñ /+\r\\±«ğîÆÈ¸8U\\¸.x¯±±ñ®EŸüÔİ÷D¾w[’8xx h_­Š$À‰\0}Yi c—ùÏñ¼¸lL¿&qñºè9˜üJóı÷|şw7|ö…?¿|]ˆÑ	qmbzÇ¾şƒEûjU$	\0NtèË\\s¹í*,f˜¸’OŠóW³û§š¿ú@ë×¿qaB|dˆ†™f–è;p°h_­Š$À‰\0}¥`ëÊcïœ:t<Ù?˜Ü7ÜwääşcCÿ<ğö›ÇÏì8ùïw÷y·ÿèÉã§>Øò‡m·?,}E\'I\0Pú²’Äeg=öØ£•\\àò;=T´£VE’\0àDG€¾¬$1BU[$	\0Ntèk:IL]¢ª-’\0\':ôe%‰‹TµE’\0àDG€¾¬$qª¶H\0œèĞ—•$>¢ª-’\0\':ôe%‰4Um‘$\08Ñ /’IÀÜÑ /+I|HU[$	\0NtèË\\§¦ÎSÕI€ú²’Ä9ªÚ\"I\0p¢#@_V’8KU[$	\0NtèËJÃõ(ûÈE_ØQ~ãJxÇûë7(çSÈ:\0\n¡#@_Ö¢ûA=Ê>²ó)œw–Wæ€¥ªğ8ó5:ÙS@!tè«kmÑB^~iŸ5gÌz¨Ê#BıIÀ¬èĞ—µè¾_²ì|Š¢§›ùìe6(sûÎÙG½F\'{ê\0(„\0}M¯µùT=êÆB~óÆ­¥İ±ı³Ì=%_“¸ıYŠºNƒr>…ì© :ôe-ºgæ½n.ğå6(ºQt»ü£³Ş.8æt…ç’=u\0BG€¾¬µö½ù­Â1íŸ³­îÅÏ¼]şÑjo×cŒ²§€BèĞ—µÜÕ£ì#n”y¢2”}w£ø‰fn_§¡HöÔPú²–ÛÓõ(ûÈ…Õ½ÜÆ•pÖû?+?æ\\F\'{ê\0(„\0}YËí©zTáÈöÏROd?TfçËÁ¾íH-uZá‰dO\0…Ğ ¯z,·³®åEw–ZìË„€2Iâ·I\0êŠ\0}™+b>’ª¶H\0œèĞ—•$Ş¥ª-’\0\':ôe%‰$Um‘$\08Ñ /+I¼CU[$	\0NtèËëõÉçß¦ª*’\0\':ôåóùÎœy=Ÿ?AUU$	\0Ntè+\nı½{k^¼EU^ï$_ñûı²§€BHĞWgggGÇ¤¯Íîª?Å‰F£²§€BHĞW*•òûï7åÅqªÂ\n‡W%	ÙS@!$	hmã´µyqŒª¤ş\Zÿu$’=i\0ÔB’€ÖÃèïÿ‹G©ò•N÷øı÷e2}²\'\r€ZHĞ]2™–%“	!©ReÆ3rõö¾({º\0(‡$ˆşş~3LtvşPˆ#ÔÌJ$óû}½½”=Q\0TD’\0¦†ÑÑ\rïÅ~‘Nïb€Êdşÿ*i‡ƒæmÙS@Q$	à–ŞŞŞhô[MMŸóÀãihøL$²Ú²§€ÒH€Š¸f\0· I\0*òpEj\0.A·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TÇÍ\0áõz€y£©©Éü¹téÒd2)ûÔ\0 $’ Š;wzfhmmM$²O\r\0J\"I\0ª0cÉ’%Î±|ùò¦¦¦L&#ûÔ\0 $’ õë×/Z´ÈNëÖ­ëèè}R\0PIPKccc!F´··û|>Ã0dŸ\0”C’\0Ô²wïŞÅ‹›I\"\nñ\0ÔG’\0”³jÕªB’}\"\0pg$	@9étÚL|ø€+$\0qe*\0nA·n1#G\"‘`0èóùf^İAæØÍß@8Åb|@y$	à†îîns5cÄöíÛ÷ôôœ\ZšÌfõ,sìæo ««kÍš5æïÄÌ²\'€ºH€0ÿ·;\Z¶µµ\rŸÌNRÎºxé¢™\'Ì_N:–=Q\0TD’€îÌ^Úöâdv‚*U»^İÕÒÒ’J¥dO\0å$ »h4jÅˆëTùÚÓ³{åÊ¯É.\0Ê!I@kİİİmm«³9ƒª¤üéO6mzZö¤PIú2Ãçó=—ÊæÆ©Jjtìãææå\\è€IúŠÅbÑh4›»fWkè›~NÒ¹—VµiÓ/ùR1\0N$	è+wíøÛ­±ºíC!ŞŸ§²âí	qtB\ZÍmŞñÆëç®˜ÿ1ÄCô]»¯‹ßõdí£Òu)ux ?È:\0\n!I@_~¿ÿÄ‰#ÙÜX¡<Ï¨cyq%\'.OŠkBüøgOy>ñé«Ãç²bxB_)CœÎ‰—ß<j½,1¦ax½^ÙS@!$	è«¡¡áÒÈ¹ln´Pf8¸6%&¦¦Êå§¾òÚ?¾ø¥/ÿü™gsB\\Í‰+Yq9+2Bì>xÌJ£z–‡+yp #@_V\Z¸j—ùÏ±œ“S76Èd2¿}ş…§óüğùé‹2eóbÒJû-ÚW«\"I\0p¢#@_V\Zø¯]ÓIbJ\\¼&>\ZY!&\'&üË–y<wy<Ş‡¾»Æ¹ã¡#EûjU$	\0NtèËJWì*¼»12.Î_®‹C\'Şkll¼kÑ\'?u÷=‘ïİ–$(ÚW«\"I\0p¢#@_V\ZÈØeşs</.Ó¯I\\¼.z&¿Ò|ÿ=ŸÿÂİ\rŸ}áÏ/_btB\\›˜Ş±¯ÿ`Ñ¾ZI€ú2WÄ\\îc»\n¤&®dÅÇ“âüÕìşã©æ¯>Ğúõo\\˜â‚!F&„™%ú,ÚW«\"I\0p¢#@_Ei ØºòØ;§Oö&÷\r$÷9¹ÿØĞ?¼ıæñ3{Nş{àİ}GŞí?zòø©¶üaÛÃíK_ÑI\0T@G€¾¬$qÙY=öh%¸üÎCí¨U‘$\08Ñ /+IŒPÕI€úšNS—¨j‹$À‰\0}YIâ\"Um‘$\08Ñ /+I\\ ª-’\0\':ôe%‰¨j‹$À‰\0}YI\"MU[$	\0Ntè‹$A’\00wtèËJRÕI€ú2WÄ©©óTµE’\0àDG€¾¬$qª¶H\0œèĞ—•$ÎRÕI€ú²’ÄğÜ«pœ™_Ï1s›Yw¬üş\n·±šyc¾Æ+{ê\0(„\0}Yëës¯™Ç)sÏlãÎœuÇRÇq>W™Îe¼²§€BèĞ×¼¬¯•,Û¥*u•Ç‹¢G‹‚IÀ #@_Öúúş\\Ê>‚óÆÍ…¼ä63ªğş\n·™õ¬*<l…£–=u\0BG€¾¦WÖ|j.u+7Üü§ó¡RÛÜöÊA‰Ã–ºYŞÚ˜mwû¡2ÏUÛ¨eO\0…Ğ /kq=3÷*gæÑì{œİñIK­ÌqŠ6¾™f?y¯ì© :ôe­¯ïÍ±\n±Şş:Á­\rœV~À™•~Mb–§˜yc^Š$À‰\0}YëëĞ\\Ê±rßvg™mî¸q©‡Ê<Zê ¥tî£–=u\0BG€¾¬õõô¼ÔÍ¬pãvù-+üçÌã”}Mb–ƒnØÌ×xI\0œèĞ—µ²šK9òÛî,µåÌGÿœ¹c™3¬ä¡¢\'ûxíÃÊ:\0\n¡#@_óµ²¥ŠÛ_*¸µœ—ÚrÖmfFJ’DQ²)Š$	\0õ@G€¾Ì1Ÿ?IU[$	\0NtèËJïRÕI€ú²’D’ª¶H\0œèĞ—•$Ş¡ª-’\0\':ôåõzÇÇäóoSUI€úòù|gÎ¼ÏŸ ª*’\0\':ô\n…şŞ½5/Ş¢*¯w’¯øı~ÙS@!$	è«³³³£ãÒ×fwÕŸbÏD£QÙS@!$	è+•Jùı÷‡òâ8Ua…Ã«‰„ì© ’´¶qÚÚ¼8FURÿ:	É4\0j!I@k†aƒô÷ÿEˆ£TùJ§{üşû2™>Ù“@-$	è.™LË’É„ƒT©2c„¹z{_”=]\0”C’\0D¿&:;(Äjf%Ïùı¾ŞŞ?Ê(\0*\"I\0ÓÃèèˆƒ÷Çb¿H§w1@e2ÿŠÇ‰´…ÃAó¶ì) (’pKooo4ú­¦¦ÏÍúáºihøL$²Ú²§€ÒH€Š¸f\0· I\0*òpEj\0.A·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TD’\0àt+@E$	\0nA·TÇÍ\0áõz€y£©©Éü¹téÒd2)ûÔ\0 $’ Š;wzfhmmM$²O\r\0J\"I\0ª0cÉ’%Î±|ùò¦¦¦L&#ûÔ\0 $’ õë×/Z´ÈNëÖ­ëèè}R\0PIPKccc!F´··û|>Ã0dŸ\0”C’\0Ô²wïŞÅ‹›I\"\nñ\0ÔG’\0”³jÕªB’}\"\0pg$	@9étÚL|ø€+$\0qe*\0nA·n1#G\"‘`0èóùf^İAæØÍß@8Åb|@y$	à†îîns5cÄöíÛ÷ôôœ\ZšÌfõ,sìæo ««kÍš5æïÄÌ²\'€ºH€0ÿ·;\Z¶µµ\rŸÌNRÎºxé¢™\'Ì_N:–=Q\0TD’€îÌ^Úöâdv‚*U»^İÕÒÒ’J¥dO\0å$ »h4jÅˆëTùÚÓ³{åÊ¯É.\0Ê!I@kİİİmm«³9ƒª¤üéO6mzZö¤PIú2Ãçó=—ÊæÆ©Jjtìãææå\\è€IúŠÅbÑh4›»fWkè›~NÒ¹—VµiÓ/ùR1\0N$	è+wíøÛ­±ºíC!ŞŸ§²âí	qtB\ZÍmŞñÆëç®˜ÿ1ÄCô]»¯‹ßõdí£Òu)ux ?È:\0\n!I@_~¿ÿÄ‰#ÙÜX¡<Ï¨cyq%\'.OŠkBüøgOy>ñé«Ãç²bxB_)CœÎ‰—ß<j½,1¦ax½^ÙS@!$	è«¡¡áÒÈ¹ln´Pf8¸6%&¦¦Êå§¾òÚ?¾ø¥/ÿü™gsB\\Í‰+Yq9+2Bì>xÌJ£z–‡+yp #@_V\Z¸j—ùÏ±œ“S76Èd2¿}ş…§óüğùé‹2eóbÒJû-ÚW«\"I\0p¢#@_V\Zø¯]ÓIbJ\\¼&>\ZY!&\'&üË–y<wy<Ş‡¾»Æ¹ã¡#EûjU$	\0NtèËJWì*¼»12.Î_®‹C\'Şkll¼kÑ\'?u÷=‘ïİ–$(ÚW«\"I\0p¢#@_V\ZÈØeşs</.Ó¯I\\¼.z&¿Ò|ÿ=ŸÿÂİ\rŸ}áÏ/_btB\\›˜Ş±¯ÿ`Ñ¾ZI€ú2WÄ\\îc»\n¤&®dÅÇ“âüÕìşã©æ¯>Ğúõo\\˜â‚!F&„™%ú,ÚW«\"I\0p¢#@_Ei ØºòØ;§Oö&÷\r$÷9¹ÿØĞ?¼ıæñ3{Nş{àİ}GŞí?zòø©¶üaÛÃíK_ÑI\0T@G€¾¬$qÙY=öh%¸üÎCí¨U‘$\08Ñ /+IŒPÕI€úšNS—¨j‹$À‰\0}YIâ\"Um‘$\08Ñ /+I\\ ª-’\0\':ôe%‰¨j‹$À‰\0}YI\"MU[$	\0Ntè‹$A’\00wtèËJRÕI€ú2WÄ©©óTµE’\0àDG€¾¬$qª¶H\0œèĞ—•$ÎRÕI€ú²’Äp]«üS8­|ËRÍ¼Q¿AÉ:\0\n¡#@_ÖŠûA]Ëù³>]áÎ™İñ[Äfvæú\rJöÔPúªÓŠ{Çµ¿’ÍÊŸ›?œ{‘$\0HAG€¾¬÷ıºVá)f}¢Êï,s¿ó¡¢õI€úš^kó©ù­;¿+áØrÖİ+9Ô¬»ØÍÜfŞÇ({ê\0(„\0}YËí™ºV™§(fÙ·Ômû8Îûë=.’\0\':ôe­¸ïÕ¯ìãß\\ì«Ş½tÚ¸mƒ™OWïqÉ:\0\n¡#@_ÖŠ;T§º}á/¹ıÓycæ?Kİu÷º«p|ÙS@!tèËZqO×£\nG.:¾óŸEÌ¼Q¸]ú5‰YksÖgŸßÑÉ:\0\n¡#@_ÖZ{j~ëæB~ãvÑCE·gİ`Ö³*sªÎ§s¡£³ŸHöÔPúªßZë\\Úo-a–µæ&‰;–$`Ğ /sEÌçORÕI€ú²’Ä»TµE’\0àDG€¾¬$‘¤ª-’\0\':ôe%‰w¨j‹$À‰\0}y½Şññ#ùüÛTUE’\0àDG€¾|>ß™3¯çó\'¨ªŠ$À‰\0}…B¡¿woÍ‹·¨Êëä+~¿_öÔPIúêìììèøôµÙ]õ§Ø3ÑhTöÔPIúJ¥R~ÿ}ãÆ¡¼8NUXáğªD\"!{ê\0(„$­mœ¶6/Q•Ô_ã¿DB²\'\r€ZHĞšaÁàııâ(U¾Òé¿ÿ¾L¦Oö¤PIºK&“À²d2!Ä UªÌaF®ŞŞeO\0å$\0Ñßßo†‰ÎÎ\nq„šY‰Äs~¿¯·÷²\'\n€ŠHÀ4Ã0::¢Áàı±Ø/ÒéİBP™Ì¿âñ_E\"mápĞ¼-{Š\0(Š$ÜÒÛÛ~«©és3¿ï[C\r\rŸ‰DV›aBö´\0P\ZIP×l\0à$	@E®H\rÀ%èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€ŠH\0Ü‚n¨ˆ$À-èV€*âñ¸ ¼^o 0o455™?—.]šL&eŸ\Z\0”D’\0T±sçNÏ­­­‰DBö©@I$	@†a,Y²Ä#–/_ŞÔÔ”ÉddŸ\Z\0”D’\0²~ıúE‹ÙIbİºu²O\n\0Ê!I\0jill,ÄˆöövŸÏg†ì3€rH€Zöîİ»xñb3I„B!şB€úH€rV­ZUH²O\0îŒ$(\'N›I‚p’ \"®LÀ-èV€ÃH$7n‡ÃÁ›B¡yO,K§Ó²O\0fG’\0$3„™f^“ªH Øºu+å\0 \Z’ MooïŠ+î˜!œ|>è\0 ’ aÑhtæ«O>ùÓ®®{zŞ°kÃ†§ÚÚÚŠ¶‡Ã\\ø€\"HÀBK§ÓE/E<şøN\rMfs¥êâ¥‘ßoÙRøN/ûÅ‰ÁÁAÙC\0’°°R©”ì@\n…Êgˆ¢<±aÃSö¾^¯·¿¿_ö€\0è$,Ã0œ¯F<³iS…ÂYÛ·ÿŸ™!ìW&øX\0¹HÀÂ‰D\"vŒèêÚQCŒ(Ô¡Ã\r\r\r…ãƒAÙÃ 5’°@‰Ä_pÖ®W_³¶yófÙƒ /’°@€ı·sŒ…²ÿf¢©©‰ëL\0…$,„x<nÿ™äğÙsó’$®ÙŸæxâ‰\'d€¦HÀBƒö>ç%Fê¥mÛ\n‡mhh=D\0š\"I\0u—Édì¿i˜¯$ìº÷ŞŸ)ííí•=P\0:\"I\0u‹ÅìÏYÌoŒ0ë‘G-¼££Cö@èˆ$ÔİÚµkçë#3kOÏ…ƒ¯X±Bö@èˆ$Ô](*,ö»^}mŞ“Äé¡!û*U²\n@G$	 îìÏ:<0ïIÂ,û0d€h=@İÙŸÕ¬ü+6ª*ûø²\n@G´ îü~a¥ëÄ‰z$	ûk8d€h=@İÙ“ØÓóÆ¼Çˆ‹—F¸¤\0‰H@İE£ÑÂbÿû-[æ=I¼uâDáà@@ö@èˆ$Ô]ggga±_³æûó$Ù´©pğH$\"{ \0tD’\0ê.™LÚo@\\›ß$±råÊÂÁc±˜ìĞIX>ßkZwuí˜Ça_LÂ”Édd€HÀBèèè(¬÷ÍÍÍóø²Ä·|°pØp8,{ˆ\04E’\0B&“±¯ú0_×ÌîÛ·ß~AbppPöhŠ$,Í›7V}¯×;÷ƒ\Z²£ÉÚµke€¾HÀÂY±bEaí7CÀ\\®wyut¬¹¹Ù>T:–=2\0ú\"I\0\'•J544Ø	 ¶¯á>{Î^¯···Wö°\0h$,(sá·ÿ¸ÁÌÕ^«ªoß~ûM\rÓæÍ›e€îHÀBK$ö+…OsTòmãÃgÏ=ÜŞîq F\0PI ™LÚ_ëeç‰\ršù_f€øı–-mmmÎÍ Â›\Z\0A’\0äÈd27n´¿Æ³HKKK©‡\"‘b	@$	@&3ØßïuGÁ`°¿¿_ö)ÀmH€|†aÄãq3R¢ôàóùÂáğÖ­[y€šH\0\0 v$	\0\0P;’\0\0¨I\0\0Ô$\0\0j÷ÿ„SM¸ÑÈ\0\0\0\0IEND®B`‚',0),('403',1,'leaveBill.bpmn','401','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"LeaveBill\" name=\"LeaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤ç”³è¯·\" activiti:assignee=\"${inputUser}\" activiti:formKey=\"workflowAction_audit.action\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"ç»çºªäººå®¡æ‰¹\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"è€æ€»å®¡æ‰¹\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_LeaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"LeaveBill\" id=\"BPMNPlane_LeaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"230.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"310.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"400.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"307.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"307.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"230.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"307.0\" y=\"285.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"310.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"307.0\" y=\"365.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"400.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('502',1,'leaveBill2.png','501','‰PNG\r\n\Z\n\0\0\0\rIHDR\0\0â\0\0Ì\0\0\0ÏZ³\0\0,¸IDATxœíİlwıÇñhk©W1-ˆA\ræÁ³4›ÔüEİ\"\Z#³Ä´šıQ,Ml­&F…¤ -ˆ­DF„ÆÔÁ6,P¿Mi-íamG(mú#MÛuóúcõÖóúk.MÚkâ$ŸïÅŞnîÙqìæÎŸûøó|è­ÊqÎç;|ïÏ«çi\0\0\0Ô\"{\0\0\0*#¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0`F*•êêêŠF£áD\"óšd2™Ëådo \0H@L$3Ó‰G|>ŸPÌPÒÛ»aó–—‹õü/>ôĞÃ±X¬µµµ½½=‘HÈŞX\0h(b\n ÍĞĞP86Ó‰GÆòãÕkÛö+V|/\nõ÷÷ËŞp\0hb\n Gww·™96oyyÆ€RZ»÷.^¼xåÊ•†aÈŞ\0p1h43aÄb±ÎÎÎºJiıá‰\'Âáp6›•½+\0à.b\nĞPfFiooO&“×œQ¬×€Ìõd2Ù;\0.\"¦\0\r‹ÅfŸQ¬€Ì¤Â«?\0š1hœîîîÙ¼ÖS^½½¢Ñ¨ìİ\0·S€\Z\Z\n…Bf”bİwßıëÖ­“½s\0à\nb\nĞ fFÙ½gĞñ˜rüÄÉ[n	ğÒ€¦DL\Z!•JE£QÇ3J±|ğ‡===²w\0œGL\Z!×û)uPñûı²w\0œGL\\—ËåZ[[]Ê(ÅZ´hÑÀÀ€ì\0‡S\0×%‰x<îjLytíÚÎÎNÙ;\n\0#¦\0®[¹råºuë\\)›·¼‡eï(\08Œ˜¸.‰ÔòÇgSG½å–€ì\0‡S\0×¹ôQäÒº8<âóùdï(\08Œ˜¸Îï÷?qÒÕ˜bVK‡3€fC_\\_=x˜\0õ¢¯®sõKSxo\n€&FL\\ÇŸ~æWcÊ¶í;-Z${GÀaÄÀu===>øCWcŠƒV¬øì\0‡S\0×e2™@ àjLéèèèëë“½£\0à0b\nĞ®¾‹öâğHkk+$@ó!¦\0àêë>¿}ì1så²w\0œGL\ZÁ0Œ@ àÆ·§\\¹å–@6›•½‹\0à<b\nĞ ÉdòîåË9•\0µ#¦\0óí;ïìíİà`FyõàÁ¶¶¶‹Ã#²÷\0\\AL\Z\'—Ë-Z´È©÷Ò9{ÎÌ(G•½[\0àb\nĞPétÚL*f¶˜}Fùöw>ÿÂ‹²w\0\\DL\Zmhh¨­­mÛö³y­ÇÌ:d\0M˜HËå/^üĞCŸ9{®®€rqxä·=V|åHöN\0€ëˆ)€†a˜1å¶Û‚fì0ÃG-åég1—ğÁšáFöæ@#S\0™²ÙìêÕ«[[[¿}çf\nÙ½gĞMÌkÖ¯ÿ¿»—/7—Y±â{™LFö&@ãS\0ùÃH¥Rñx¼­­­åjæ5fFI&“¹\\Nöf@£S\0/2#‹ìM\0\0ùˆ)€µ´pl\01ğ$b\n\0b\nàMÄ\0ÄÀ›ˆ)\0 ˆ)€7S\0@S\0o\"¦\0€ ¦\0ŞDL\0AL¼‰˜\0‚˜x1\01ğ&b\n\0b\nàMÄ\0ÄÀ›ˆ)\0 ˆ)€7S\0@S\0o\"¦\0€ ¦\0ŞDL\0AL¼‰˜\0‚˜x1\01ğ&b\n\0b\nàMÄ\0ÄÀ›ˆ)\0 ˆ)€7S\0@S\0o\"¦\0€ ¦\0ŞDL\0AL¼‰˜\0‚˜x1\01ğ&b\n\0b\nàMÄ\0ÄÀ›ˆ)\0 ˆ)€7S\0@S\0o\"¦\0€ ¦\0ŞDL\0AL¼‰˜\0‚˜x1\01ğ&b\n\0b\nàMÄ\0ÄÀ;’É¤™N|>_(2/øı~óßùóç§ÓiÙ›\0rS\0¯Ø¸qcK™%K–¤R)Ù›\0rS\0¯0cŞ¼y¥eáÂ…~¿?—ËÉŞ4\0ƒ˜xÈš5kæÌ™cÅ”U«VuvvÊŞ(\0†˜xË‚Šeùòå@À0Ù[\0ÒS\0oÙºuëÜ¹sÍ˜‰DxW\n\0ÍS\0ÏYºti1¦ÈŞ\0Œ˜xN6›5c\nŸC\0b\nàE|½\0b\nPÊ0Œd2‹ÅÂáp (ÿM˜ûn>Ñh4‘Hğqh\0S€÷õõõ™Ó³™QÖ¯_¿yË–#Gåóz–¹ïæ#ĞÛÛ»bÅ\nó11ÃŠìÁ )b\n r¹\\<ïèè8~âøX~Œ*­3gÏ˜aÅ|p²Ù¬ì b\ntgf”P(ôô3OåG©éêù_´hQ&“‘=\\\0ôBLîâñx!£\\¡ª×æ-›/şªìá b\n´Ö×××Ñ±,?nPµÔO~úãµk‘=h\04BL¾Ã\'Nfòã—©Zjxä½¶¶…|¡€†!¦@_‰D\"çÇ/Yµ$òÍ\Z?²[z+­jíÚ_ò×41úŠF£½şşaFYÖñoMˆÃyñÚ¨Ø7*v÷lxù¥“v‰ÿ\Zb§!¶]›®ˆßo;pßÊû¥\')µgp \nÉ:\0º ¦@_Á`ğàÁ½ùñ‘bµ´´12).Œ‹ócâ’?úÙÃ-×}´}Yôd^Ç¯ˆŒ!Œ‹g_ÙW8¡2¢a\rœóù|²‡€.ˆ)ĞWkkëÙs\'óãÃÅ2“Ç¥	1:1õ«ñÉ©Ÿ{ñŸŸşÂ—~şèoÇ…¸8..äÅù¼È	±i×şBLÖ³Zø\"\0B»¾\nQã¢Uæ#ãâÜe16ñş¹\\îw?ùÈo?~jê›Íò“b¬_vìÙg»­VELĞ0´è«5şgÕTL™g.‰w‡E^ˆ±ÑÑàm·µ´\\ßÒâ»ë»+Jo¸{p¯í¶Z1@ÃĞn ¯BÔ¸`UñEŸs—Å©‹âô±ûà›,¸~ÎGn¸éæØ=WÅ”]{m·Õªˆ)\0\Z†v}¢FÎ*óÇË“â¼1u6åÌ±eWúËm·ßü‰OŞÔú±\'ÿòì!†GÅ¥Ñ©nØe»­VELĞ0´èËœnÇÇß³ª8ûšIåB^¼7&N]Ìï8iûÊK¾şÓ£â]Cœ6Ä¹Qa•m;wÙn«US\04íú²Eğ’Åû_?¼û@z`(½}0½}ï¡ûşkçk¯8¶uğĞßØ¾÷}‡~û‰?>s÷ò»¥Çb\n€¦G»¾\n1å|i=ğÀıµ|íwîºËvC­Š˜ ah7ĞW!¦œ£ê-b\n€†¡İ@_S1eâ,UoS\04íú*Ä”3T½ELĞ0´è«SNSõ1@ÃĞn ¯BLy—ª·ˆ)\0\Z†vƒ&—L&3™LÅ_bJ–ª·¦‹)Uj\0¸6Ä4³C‡?B|ã7öööÚ~KLq$¦är¹{î¹§ø8êSŸ\"©\0p1ÍÌ0Œë®»®8ƒÎ;÷‹_übé$Zˆ)ïPõViLY·nÏç+>Âæ¿ßŸÍf%Œ4€&ELA“3\'ÎÒof»á†î½÷^3¾ˆBL™˜8EÕ[Å˜’N§?ÿùÏ—>¶ííí@@ö€h*Ä”f`Nºııı]]]á˜³E-ß¦Š‰‰“T½e>næsLöĞ)Ã<­Ó<Hûúúr¹œì(ƒ˜¢63D£QŸÏWì€ıàı–›nºÉš0¢æc•N§ÅûgSNPõVKálŠùûÚ×¾öÙÏ~Özxo¼ñÆP(${À=Ç| ¬Ó<H#‘Hkk«ù$L¥R²7\rP\01EUÙl¶øÿ3š]æ[‹3h0üş÷¿oş›L&­ßbÊq7ÊZ³í?ÖU–¬q…Õ¯tol÷b=†}}}·ÜrËg>ó™âÎ›7¯ø‚\Zª+şÃLuÅÄ`:Ä%™sƒ9ãšNö†xİ[o½åóùÌÿ¿ÎÎNÛÉöÂ¤ş¶e­¹ô.¦»»Z6£úm§{¹Á½½+}Í\\ÒÕÕõ¹Ï}ÎœtÍ‡††\Z;È\n3+óA+Î\0lˆ)êI¥Ráp˜—·kd>\\‰D¢â«`‰)å¹aÆw3Ì¸X½iÆÕ˜Rd>ÂæãÌ¹½z™!/‹™ì\r<Š˜¢s20ÿûEFqDaRËÙª)>üU½«šñr-÷ëÆ>Êº¦b&ó?²7ğ\"ÚbÚÛÛigN™šË\'3n”µf{t˜f1Ûåê¿µ­|º›¸WÄÇ™ÿıƒ¼­(G»QI*•ŠF£²·¢y&õcnT-k._ÆvMµ}®¾ÉŒ‹9¾w²‡®	­^½º§§GöV\0C»QI$éëë“½Í£0‘¿éF}Ş¬Ş_Àú·ú55^¶í‹{»V\\¹ì¡kBét:ÊŞ\nÀsh7ÊÈf³~¿_öV4•Â\\~ÔÙ*‰#W]Yeùé(½rÆË•òÃ»Vz§²‡®9ñ’.Pv£^ñq\\a.?âFYk.^(‰Õ.¿~úWs*ßÑŒëtjïd]sâu íF´0ÇæòÃn”µæâ…*wTeÒ+g¼\\)Ê¸²kÅû’=tÍ‰ÿŠ\0åh7Ê‡Ã|Ÿ›³äÆ[˜¨-¦û•u+ÛÄñö íF¼ní8sºœ<äx£Cñ‚õ£¥t*·-¿~ºåË¨²~§vPöĞ5§L&ÃŸ˜lh7Ê0ûPĞY…¹ü\rªŞ\"¦¸‡Ç°áPFkk+_>ë¬BLISõS©{xl	eĞ¿Wˆ)¯SõOE÷ğØ6Ê 9Îçó]¾¼wrò5ª®â©è[À†CBô/ÇcÇ^šœ<HÕU<İÃcØpH(ƒşå¸H$ò¾u“âUªöz=ıšu‡9`Ã!¡ú—ãº»»;;ï•>ñ«UN<\ZÇe]Óâ0l8$”Aÿr\\&“	o½lì¨\Z+\Z]šJ¥d]Óâ0l8$”AÿrC×”•“b?UKı-ùëX,\"{Ğš‡9`Ã!¡ú—Ã‡ïø«û¨ê•Ín	oÍå¶É´fÆaØpH(ƒşå’t:\nİ–N§„¢¦+3£˜y®¿ÿ)ÙÃÕä8Ì	eĞ¿Ü300`&•îî±—*¯Tê±`0Ğßÿ\'ÙÕü8Ì	eĞ¿\\eFgg<¾=‘øE6»IˆA*—ûw2ù«X¬#\Z\r›—e‘8Ì	eĞ¿\Z ¿¿?ÿ–ßÿñ´´´¶Ş‹-3“ŠìaÑH‡9p5	eĞ¿´Âw“è‰Ã°áPıK+·wÀ†CBô/­0ÜzbÜ	eĞ¿´Âpë‰ql8$”AÿÒ\nÃ­\'Æ°áPıK+·wÀ†CBô/­0ÜzbÜ	eĞ¿´Âpë‰ql8$”AÿÒ\nÃ­\'Æ°áPıK+·wÀ†CBô/­0ÜzbÜ	eĞ¿´Âpë‰ql8$”AÿÒ\nÃ­\'Æ°áPıK+·wÀ†CBô/­0ÜzbÜ	eĞ¿´Âpë‰ql8$”AÿÒ\nÃ­\'Æ°áPıK+·wÀ†CBô/­0ÜzªwÜK—ç9ƒ¦ÄÓZô ­0Üzª>î-%l7±]S…{¸§¬2è/Za¸õTã¸Û«şã5¬ğ²Ê ¿h…áÖÓŒã^ñÜIÅk®mı€×ğ”UıE+·ê)ÓIéÛk=<¯ ²Ê ¿h…áÖÓ5œM©²’*\0Uğ”UıE+·j‰)¥\'Hf<›2İ@<e•AÑ\nÃ­§ÚÇ½Æ˜Â‹>POYeĞ_š^2™4GÙçó…B!ó‚ßï7ÿ?~:–½ihZóŠoOá-´hV<e•Aiz7n,ÿ–‹%K–¤R)Ù›†™ñM\'Õß<;ãJh#POYeĞ_šaóæÍ+Í(.ôûı¹\\Nö¦¡Aê}ÑGLs6¥\nÇ·pOYeĞ_t°fÍš9sæX3ÊªU«:;;eo\Z§Æ}¬hRı½)×¶~ÀSxÊ*ƒş¢‰§ŸåË—Ã0do\Z‡Ã°áPıK[·n;w®9Ü‘H„w¥è†Ã°áPıKK—.-ÆÙ‚Fã0l8$”AÿÒG6›5‡›Ï!kˆÃ°áPıK+·wÀ†CBô¯0#™LÆb±p8ª°³‰™ûn>Ñh4‘HğqèFjá0®Æ!¡ú—ÛúúúÌéÙÌ(ë×¯ß¼eË‘£GÇòy=ËÜwóèíí]±b…ù˜˜aEöàè‚Ã°áPıË=¹\\.wtt?q|,?F•Ö™³gÌ°b>8ÙlVö@5?sÀ†CBô/—˜%\n=ıÌScùQjºzş…ç-Z”ÉddW“ã0l8$”AÿrI</d”+TõÚ¼eÓâÅ_•=\\MÃ°áPıË\r}}}ËòãUKıä§?^»öÙƒÖÌ8Ì	eĞ¿gF 8q2“¿LÕRÃ#ïµµ-ä]ÜÃaØpH(ƒşå¸D\"Çóã—¬ZùfÙ-½•Vµví/ùkˆîá0l8$”Aÿr\\4\Zíİğ÷3Ê²w„xkBÎ‹×FÅ¾Q±{x¼gÃË/¼°sLü×;\r±í’ØtEü~ÛûVŞ/=1H©=ƒ¡PHöĞ5-sÀ†CBô/ÇƒÁƒ÷æÇGŠe>ÂÃBŒLŠãâü˜¸$Ä~öpËum_=™ÇGÅñ+\"cˆ#ãâÙWöN¨ŒhXÃ#ç|>Ÿì¡kZæ€\r‡„2è_kmm={îd~|¸Xæ#|iBŒNLıj|rêßç^üç§¿ğ¥Ÿ?úÛq!.‹yq>/rBlÚµ¿S†õ,Šîá±l8$”Aÿr\\!j\\´Êüqd\\œ»,Æ&Ş_ —Ëıîñ\'ùÍãÇOM}³Y~RŒâË=ûl·Õªx*º‡Ç°áPıËq…¨ñ?«¦bÊ„8sI¼;,òBŒo»­¥åú–ß]ß]QzÃİƒ{m·Õªx*º‡Ç°áPıËq…¨qÁªâ‹>ç.‹SÅé+b÷Á7,XpıœÜpÓÍ±{®Š)»öÚn«UñTt-`Ã!¡ú—ã\nQ#g•ùãåIqŞ˜:›ræŠØ²+ıå¶ÛoşÄ\'ojıØ“yöŠÃ£âÒèÔ\r·\rì²İV«â©è’l6ë÷ûeoà-´e078Î|HÇÇß³ªø›IåB^¼7&N]Ìï8iûÊK¾şÓ£â]Cœ6Ä¹Qa•m;wÙn«UñTtI&“	²·ğÚ2˜g‹\Zá%‹÷¿~x÷ôÀPzû`zûŞC;öı×Î×^9plëà¡ÿ¾±}ïû8üö|æîåwKÄ”&Ó××‰Ddoà-´e078®SÎ—ÖÜ_ËWĞ~ç®»l7Ôªx*º¤«@öV\0ŞB»Qsƒã\n1åUoñTtI$éëë“½€·Ğn”ÁÜà¸©˜2q–ª·x*º!›ÍÃ0doà-´e078®SÎPõOE7ôôô¬^½ZöV\0C»Qsƒã\n1å4UoñTtœa@ ›ÍÊŞÀsh7Ê`np\\!¦¼KÕ[<Ç‰„ì­\0¼ˆv£æÇbJ–ª·x*:«§§gåÊ•²·ğ(Ú2˜GL!¦ÈeF<\'£\0UĞn”ÁÜà¸BLy‡ª·x*Î^.—ëéé	¼ÖTG»QsƒãÌ‡tbâUoñT¼fıııİİİÑhÔ(«W¯æ=³ÀŒh7Ê`np\\!¦œ¤ê-óq‡Ãµ|]/lÌÇ­³³3•Jår9ÙO@\rÌ|Êh!¦8­e*¦œ ê-Š\0\Z†v£æÇbÊñÙW-ë©ë¾f³BëúòNOE\0\rC»Qsƒã\nó÷Û³/k=¶3üõ.S¾°íÊêÊï¨ÊÚf¹¿²‡€.h7Ê`npœ#ó÷t‘bÆeê½¾úÖÖSŒe²‡€.h7Ê¨wn(]y¥¢Â´ıÖlÊZCéªl«­¸Ìt×T¿~ÆeJÎ¬T¸ßÙï¯µÙC@´eTŸJOşÛnb»¦\n÷6Ş›¦¦íÉÌlêÃXPrõïtËØ®ëúé”ßÖöÛÙïlé]È:\0º İ(£Æ¹Á¶Xõ¯aıÍ¤0s›}Yë)]¡må¥Ë\\ *¯­Ê¯j¼l»GGöÔZ¡ì¡ Ú2fœ*;©xÍµ­¿ù&ï7gYÖJÊ×VñW3ŞiqŠ‹U=›rÕ2Õ7lö»,{è\0è‚v£ŒzcJÅtRzÁRãú›Oaş>:›º:(\\õ£µòòeª¯°âåê¿µİWù•³ÜÍòÍ=t\0tA»QÆ5œM©²’*ôQ˜¿8^ÕW[ûoË—¬z6Å~«òî ì¡ Ú2j‰)¥\'Hf<›2İ}æïÃ³¯‚Â‡?VYÆöÛê7¬qáŠ—­»³]ãÈşÊ:\0º İ(£ö¹¡Æ˜RšiêZÓ˜ı´m(Óe‹*YdÆqÍ×—#b\n\0åĞn”QËÜ`(UòÊµ­¿É˜»<9yÈ©ªøZL-K¯©¾æÚ¯´®/] úö\\ÃÊ:\0º İ(£úÜ0İyÛ­ˆ)¥\nÓöT½¥áS€,´eÔû¢˜ælJo³ÇbJšª·4|ª\0…v£Œ\Z_ô±¢IÅs*œM)Uˆ)¯Sõ–†O\0²Ğn”ÁÜà8ŸÏwùòŞÉÉ×¨ºŠ§\"€†¡İ(ƒ¹Áq@àØ±—&\'RuOE\0\rC»Qsƒã\"‘È?úÖMŠW©ÚëõôsÁ`PöĞĞ3Ÿ2ˆ)ëîîîì¼WúÄ¯Vı9ñh<—=t\0tÁÌ§bŠã2™L0xëec÷¤8@ÕXÑèÒT*%{è\0è‚™OÄ7tMY9)öSµÔß’¿Å\"²\r€F˜ù”ALqƒaáğbU½²Ù-Áà­¹Ü6Ùƒ@#Ì|Ê ¦¸$N‡B·¥Ó)!†¨éÊÌ(fëïJöpĞ3Ÿ2ˆ)î0“Jw÷„ØK•W*õX0èïÿ“ì f>eS\\eFgg<¾=‘øE6»IˆA*—ûw2ù«X¬#\Z\r›—e\01ó)ƒ˜Ò\0ıııñø·üşWÿãGšhm½1[f&ÙÃ@_Ì|Êh!¦è„ï&\0ALQ1E+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´Âp€ ¦(„yK+7\0bŠB˜·´2ãp[”_¨²<Ï\"\0j¡g)ƒ	F+.Å”ZÖ\0ŞAÃR³‹VfSÊOœ´TâüF€ÓhUÊ`^ÑÊŒ§F¬¨1c^©x\0”@ÏRŒVê:›R1µ”.IL (z–2˜`´rm/úTÌ(¢Ò‹>No/\0¸‚n¥¦­ÔS¦{Ñ§ÊÚxP=KL0Z©å½)¶%‰)\0š=KL0ZqêÉ¼è@it+e0µh¥Ş˜Rıü\ngS\0(Š¥&­ÔûIQ)¸T\\ØñM\0÷Ğ³”ÁÓô’É¤9Ê>Ÿ/\n™ü~¿ùïüùóÓé´mÉé>c<İk:å/úğt Z•2˜WšŞÆËÃÄ’%KR©”ìM\09˜ù”ALiz†aÌ›7¯4£,\\¸Ğï÷çr9Ù›\0r0ó)ƒ˜¢ƒ5kÖÌ™3ÇŠ)«V­êìì”½Q\0 \r3Ÿ2ˆ)šX°`A1£,_¾<†!{‹\0@\Zf>eS4±uëÖ¹sçšÃ‰DxW\n\0Í1ó)ƒ˜¢¥K—cŠì\r\0É˜ù”ALÑG6›5‡»üsÈ\0 f>eS´Âp€ ¦(„y«ÃH&“±X,ŠßŠ¦sßÍG \Z&	>\r@\"f>e´S\\Ö××gNÏfFY¿~ıæ-[=:–ÏëYæ¾›@ooïŠ+ÌÇÄ+²€¦˜ù”ALqO.—‹ÇãÇOËQ¥uæì3¬˜N6›•=P\0´ÃÌ§bŠKÌŒ\n…~æ©±ü(5]=ÿÂó‹-Êd2²‡€^˜ù”ALqI</d”+TõÚ¼eÓâÅ_•=\\\0ôÂÌ§bŠúúú::–åÇ\rª–úÉO¼ví#²\r€F˜ù”ALqœa@àÄÉL~ü2UK\r¼×Ö¶/tĞ0Ì|Ê ¦8.‘HÄãñüø%«–D¾YãGvKo¥U­]ûKş\Z\"€†aæS1ÅqÑh´wÃß?Ì(Ë:Şâ­	q8/^ûFÅîáñ\r/¿tòÂÎ1ñ_Cì4Ä¶KbÓñûmî[y¿ôÄ ¥ö„B!ÙC@Ì|Ê ¦8.<¸7?>R,óbdR\\çÇÄ%!~ô³‡[®ûhû²èÉ¼8>*_CÏ¾²¯pBeDÃ\Z9çóùd\0]0ó)ƒ˜â¸ÖÖÖ³çNæÇ‡‹e>Â—&ÄèÄÔ¯Æ\'§ş}îÅ~ú_úù£¿ââ¸¸çó\"\'Ä¦]û1eXÏâ© ah7Ê`np\\!j\\´Êüqd\\œ»,Æ&Ş_ —Ëıîñ\'ùÍãÇOM}³Y~RŒâË=ûl·Õªx*hÚ2˜Wˆ\Zÿ³j*¦Lˆ3—Ä»Ã\"/ÄØèhğ¶ÛZZ®oiñİõİ¥7Ü=¸×v[­Š§\"€†¡İ(Ãçó†!{+šJ!j\\°ªø¢Ï¹ËâÔEqúŠØ}ğÍ\\?ç#7Ütsì«bÊ®=ƒ¶ÛjUÄ\0\rC»QF à«ÊUˆ\Z9«Ì/OŠóÆÔÙ”3WÄ–]é/·İ~ó\'>ySëÇüË³W„—F§n¸m`—í¶Z1@ÃĞn”\n…†††doES1§Ûññ÷¬*Î¾fR¹ï‰Só;dÚ¾rÇ’¯ãô¨x×§\rqnT˜AeÛÎ]¶ÛjUÄ\0\rC»QF8îïï—½MÅ5ÂKïığîé¡ôöÁôö½‡vì?ú¯¯½ràØÖÁCÿ|cûŞ7ö:pøí\'şøÌİËï–ˆ)\0šíFñx<‘HÈŞŠ¦Rˆ)çKëî¯å+h¿s×]¶jUÄ\0\rC»QFñ›İeoES)Ä”sT½ELĞ0´e¤Óé`0({+šÊTL™8KÕ[Ä\0\rC»Q	ï¢uV!¦œ¡ê-b\n€†¡İ¨¤§§gõêÕ²·¢ybÊiªŞ\"¦\0hÚJÃÙlVö†4‰BLy—ª·ˆ)\0\Z†v£˜şşşp8,{+šD!¦d©z‹˜ ah7êéêêâ¥GSˆ)\0<v£¤ÎÎÎH$’ËådoˆÚ\n1åªŞ\"¦\0hÚªúúú@WWoU¹fæt;1qŠª·ˆ)\0\Z†v£°\\.gÆ3¬D\"ó‚K_¥ßïD\"Ñå°C\n1å$UoS\04íFy†aôõõ\'ïZ¾è½^Ne‚x<îTLq*9bÊ	ªŞ\"¦\0hÚ\rôUˆ)Ç]­*wQş«º¶]_~ÁÕ’=t\0tA»¾\n3úÛ®Vé]”ß]•ßÎx–Ëv«ò®î”ì¡ Ú\rôåÒŒ^=XÌ˜BjIµÄ÷ò\n1@ÃĞn ¯ÂDş–«U¼‹ò;šî®ëº¾$Ù|¸@ù7vJöĞĞíúššÈ\'3®Öû1¢ÒõÓ-o»må3.eËÛ~ëê®S\04íú*ÌåÇœ­*ÙâƒñşbÓİüÚ.—^pc¿l){è\0è‚v}¦ó7İ«*ë¯šcê^¦ô¾ÜŞ©â]È:\0º İ@_…ı¨KõA€¸êšz×Pıré]”_pu×d\0]Ğn ¯ÂŒ~Ä*®ÙZÿy¢ÚÂ/O6Å¾|ù÷Š˜ ah7ĞWaF?ìxY«-I~UşcÅej¼l­°âÍßAÙC@´èË‰|º<Q=¦T¹²zæ°E¢éR1€¢h7Ğ—9İNNrµÊ_¯)^9İUÖ3İÊË˜qm³ß)ÙC@´è«0‘¿AÕ[Ä\0\rC»¾\n1%MÕ[Ä\0\rC»¾\n1åuªŞ\"¦\0hÚ\rôåóù._Ş;9ù\ZUWS\04íú\nÇ½49yª«ˆ)\0\Z†v}E\"‘ô­›¯Rµ×ëéç‚Á ì¡ b\nôÕİİİÙy¯ô‰_­úsâÑx<.{è\0è‚˜}e2™`ğÖËÆîIq€ª±¢Ñ¥©TJöĞĞ1Zëš²rRì§j©¿%‹Ed\Z\0S 5Ã0Âá;ş*Ä>ªze³[‚Á[s¹m²\r€Fˆ)Ğ]:…nK§SBQÓ•™QÌ<×ßÿ”ìá b\n Ì¤Òİı!öRå•J=úûÿ${ \0h‡˜L1£³3ßHü\"›İ$Ä •Ëı;™üU,Ö†ÍË²‡€ˆ)À‡úûûãñoùı/ÿËÆ\Zjm½1[f&ÙÃ@_ÄÀ‹øn\0ÄÀ›ZøBz\0 ¦\0ŞDL\0AL¼‰˜\0‚˜x1\01ğ&b\n\0b\nàMÄ\0ÄÀ›ˆ)\0 ˆ)€7S\0@S\0o\"¦\0€ ¦\0ŞDL\0AL¼‰˜\0‚˜x1\01ğ&b\n\0b\nàMÄ\0ÄÀ›ˆ)\0 ˆ)€7S\0@S\0o\"¦\0€ ¦\0ŞDL\0AL¼‰˜\0‚˜xÓŒ1ÅZ üB•åI?\0ÔBÏ¼È¥˜RËšÀ;hX€Í&¦”Ÿ8i©Äù\0§Ñª\0/šñÔˆ5fÌ+/\0€èY€Õu6¥bj)]’˜@Qô,À‹®íEŸŠETzÑÇéí\0WĞ­\0/ª%¦L÷¢O•µP\0¨…xQ-ïM±-ILĞ|èY€9õd^ô 4ºàÉdÒ>Ÿ/\n™ü~¿ùïüùóÓétùÂå?æ“>\0š=ğŠ7–ŸöX²dI*•*_¸ü³åÁ¥âÂ®î\08‹x…aóæÍ+Í(.ôûı¹\\Î¶ätŸ1î5òôC^ Zà!kÖ¬™3g•$V­ZÕÙÙ){£\0@\Zb\nà-,(f”åË—Ã0do\0HCL¼eëÖ­sçÎ5cJ$©ø®\0Ğ1ğœ¥K—cŠì\r\0Éˆ)€çd³Y3¦Tü2\0h…˜xŸÄ\0AL<Â0ŒT*ÕÕÕFÃˆD\"æ5‰D\"›ÍÊŞ@\0€˜Hf¦3šTüj“R¡Phİºu|ğ€Vˆ)€4ıııííí3”R@€ÿ\0Ğ1À0Œx<^~¾ä\'?ùioï†Í[^¶ê¡‡îèè°-FË¿š\0š1h´l6k;‰òàƒ?<rôèX~|º:söÜx¢øÇ­Ó*CCC²w\0ÜEL\Z*“É˜	ÃJ‘H¤z@±…•‡zØº­Ïç½C\0à\"b\nĞ8†a”GytíÚ\ZJi­_ÿf@±Î©ğ! \0MŒ˜4N,³2Joï†kÈ(ÅÚ½g°µµµ¸p8,{·\0À-Ä AR©Ô,Ï£”Öó/¼h­­§§GöÎ€+ˆ)@ƒ„B!ëı(³Ì(Å²Ş§â÷ûù>\0M‰˜4B2™´Ş÷züÄIGbÊÅáë³?«W¯–½‹\0à<b\nĞápØúì±#¥XO?óLqµ­­­²w\0œGL\\—Ëå¬÷‘8u*Åª[nyÿãÍııı²w\0FL\\—H$¬Oå8›QÌºï¾û‹+ïìì”½£\0à0b\nàº•+W:õŸòÚ¼ååâÊÛÛÛeï(\08Œ˜¸.‰“Äó/¼èxL9rô¨õUo²w\0FL\\g}y÷AÇcŠYÖ_dï(\08Œ¾¸ÎúØpí¾§®²Ö/{GÀaô5ÀuÁ`°#^=xĞ˜bı‰Ù;\n\0£¯®³¾4eó–—Ï(gÎã«S\04+b\nàºx<^Lxâ	ÇcÊ«W\n…dï(\08Œ˜¸®»»»˜$V¬øã1åÑµk‹+Åb²w\0FL\\—N§­×e.8S/^\\\\y\"‘½£\0à0b\nĞÀû_ißÛ»ÁÁŒb}iŠ)—ËÉŞK\0p1h„ÎÎÎb˜hkksğ„Ê·ï¼³¸Úh4*{ÀyÄ r¹œõí&N}eş¶í;¬S)CCC²w\0œGL\Z¤§§§)|>ßì?™|äèQ+÷¬\\¹RöÎ€+ˆ)@ã´··ƒ…™0fó´‡GÚÚÚ¬Ue³YÙ{\0® ¦\0“ÉdZ[[­xqmâçø‰“VFñù|ııı²w\0ÜBL\ZÊLÖJÌQï¾mÛ¾Ãz­ÇÔÓÓ#{‡\0ÀEÄ ÑR©”uN¥øÙŸç_x±–“(w/_ŞR‚Œ éS\0	Òé´õ÷­°òĞC—ÿmB3üá‰\':::J6S¯õ\0Ğ1#—ËuuuYÜØfÑ¢EÓı*‹ñY\0š ¦\02™ÃúÃ„3\n‡Ã²7\0\Z‡˜ÈgF2™4óJ(²E“@ F×­[Ç\0\Z\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0\"¦\0\0\0ú¹Ïó°A‡^\0\0\0\0IEND®B`‚',0),('503',1,'leaveBill2.bpmn','501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"BusLeave\" name=\"è¯·å‡æµç¨‹\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"æäº¤ç”³è¯·\" activiti:assignee=\"${inputUser}\" activiti:formKey=\"workflowAction_audit.action\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"ç»çºªäººå®¡æ‰¹\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"è€æ€»å®¡æ‰¹\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow3\" name=\"æ‰¹å‡†\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"æ‰¹å‡†\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'æ‰¹å‡†\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"é©³å›\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"é©³å›\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'é©³å›\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_BusLeave\">\n    <bpmndi:BPMNPlane bpmnElement=\"BusLeave\" id=\"BPMNPlane_BusLeave\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"230.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"327.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"420.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"307.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"307.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"230.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"307.0\" y=\"285.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"327.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"307.0\" y=\"382.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"420.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"360.0\" y=\"257.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"475.0\" y=\"257.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"475.0\" y=\"167.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"255.0\" y=\"354.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"355.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"167.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"255.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

/*Table structure for table `act_ge_property` */

DROP TABLE IF EXISTS `act_ge_property`;

CREATE TABLE `act_ge_property` (
  `NAME_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `VALUE_` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  PRIMARY KEY (`NAME_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ge_property` */

insert  into `act_ge_property`(`NAME_`,`VALUE_`,`REV_`) values ('next.dbid','601',7),('schema.history','create(5.13)',1),('schema.version','5.13',1);

/*Table structure for table `act_hi_actinst` */

DROP TABLE IF EXISTS `act_hi_actinst`;

CREATE TABLE `act_hi_actinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin NOT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CALL_PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ACT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `ASSIGNEE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_ACT_INST_START` (`START_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_ACT_INST_PROCINST` (`PROC_INST_ID_`,`ACT_ID_`),
  KEY `ACT_IDX_HI_ACT_INST_EXEC` (`EXECUTION_ID_`,`ACT_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_actinst` */

/*Table structure for table `act_hi_attachment` */

DROP TABLE IF EXISTS `act_hi_attachment`;

CREATE TABLE `act_hi_attachment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `URL_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_attachment` */

/*Table structure for table `act_hi_comment` */

DROP TABLE IF EXISTS `act_hi_comment`;

CREATE TABLE `act_hi_comment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `MESSAGE_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `FULL_MSG_` longblob,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_comment` */

/*Table structure for table `act_hi_detail` */

DROP TABLE IF EXISTS `act_hi_detail`;

CREATE TABLE `act_hi_detail` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TIME_` datetime NOT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_DETAIL_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_ACT_INST` (`ACT_INST_ID_`),
  KEY `ACT_IDX_HI_DETAIL_TIME` (`TIME_`),
  KEY `ACT_IDX_HI_DETAIL_NAME` (`NAME_`),
  KEY `ACT_IDX_HI_DETAIL_TASK_ID` (`TASK_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_detail` */

/*Table structure for table `act_hi_identitylink` */

DROP TABLE IF EXISTS `act_hi_identitylink`;

CREATE TABLE `act_hi_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_TASK` (`TASK_ID_`),
  KEY `ACT_IDX_HI_IDENT_LNK_PROCINST` (`PROC_INST_ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_identitylink` */

/*Table structure for table `act_hi_procinst` */

DROP TABLE IF EXISTS `act_hi_procinst`;

CREATE TABLE `act_hi_procinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `START_TIME_` datetime NOT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `START_USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `END_ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `PROC_INST_ID_` (`PROC_INST_ID_`),
  UNIQUE KEY `ACT_UNIQ_HI_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_HI_PRO_INST_END` (`END_TIME_`),
  KEY `ACT_IDX_HI_PRO_I_BUSKEY` (`BUSINESS_KEY_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_procinst` */

/*Table structure for table `act_hi_taskinst` */

DROP TABLE IF EXISTS `act_hi_taskinst`;

CREATE TABLE `act_hi_taskinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `START_TIME_` datetime NOT NULL,
  `CLAIM_TIME_` datetime DEFAULT NULL,
  `END_TIME_` datetime DEFAULT NULL,
  `DURATION_` bigint(20) DEFAULT NULL,
  `DELETE_REASON_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `DUE_DATE_` datetime DEFAULT NULL,
  `FORM_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_taskinst` */

/*Table structure for table `act_hi_varinst` */

DROP TABLE IF EXISTS `act_hi_varinst`;

CREATE TABLE `act_hi_varinst` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VAR_TYPE_` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `REV_` int(11) DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_HI_PROCVAR_PROC_INST` (`PROC_INST_ID_`),
  KEY `ACT_IDX_HI_PROCVAR_NAME_TYPE` (`NAME_`,`VAR_TYPE_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_hi_varinst` */

/*Table structure for table `act_id_group` */

DROP TABLE IF EXISTS `act_id_group`;

CREATE TABLE `act_id_group` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_group` */

/*Table structure for table `act_id_info` */

DROP TABLE IF EXISTS `act_id_info`;

CREATE TABLE `act_id_info` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `USER_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `VALUE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PASSWORD_` longblob,
  `PARENT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_info` */

/*Table structure for table `act_id_membership` */

DROP TABLE IF EXISTS `act_id_membership`;

CREATE TABLE `act_id_membership` (
  `USER_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `GROUP_ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`USER_ID_`,`GROUP_ID_`),
  KEY `ACT_FK_MEMB_GROUP` (`GROUP_ID_`),
  CONSTRAINT `ACT_FK_MEMB_GROUP` FOREIGN KEY (`GROUP_ID_`) REFERENCES `act_id_group` (`ID_`),
  CONSTRAINT `ACT_FK_MEMB_USER` FOREIGN KEY (`USER_ID_`) REFERENCES `act_id_user` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_membership` */

/*Table structure for table `act_id_user` */

DROP TABLE IF EXISTS `act_id_user`;

CREATE TABLE `act_id_user` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `FIRST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `LAST_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PWD_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PICTURE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_id_user` */

/*Table structure for table `act_re_deployment` */

DROP TABLE IF EXISTS `act_re_deployment`;

CREATE TABLE `act_re_deployment` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOY_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_deployment` */

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('401','è¯·å‡ç”µå­æµ',NULL,'2015-06-24 21:58:08'),('501','è¯·å‡æµç¨‹',NULL,'2015-06-24 22:45:58');

/*Table structure for table `act_re_model` */

DROP TABLE IF EXISTS `act_re_model`;

CREATE TABLE `act_re_model` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATE_TIME_` timestamp NULL DEFAULT NULL,
  `LAST_UPDATE_TIME_` timestamp NULL DEFAULT NULL,
  `VERSION_` int(11) DEFAULT NULL,
  `META_INFO_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EDITOR_SOURCE_EXTRA_VALUE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_MODEL_SOURCE` (`EDITOR_SOURCE_VALUE_ID_`),
  KEY `ACT_FK_MODEL_SOURCE_EXTRA` (`EDITOR_SOURCE_EXTRA_VALUE_ID_`),
  KEY `ACT_FK_MODEL_DEPLOYMENT` (`DEPLOYMENT_ID_`),
  CONSTRAINT `ACT_FK_MODEL_DEPLOYMENT` FOREIGN KEY (`DEPLOYMENT_ID_`) REFERENCES `act_re_deployment` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE` FOREIGN KEY (`EDITOR_SOURCE_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_MODEL_SOURCE_EXTRA` FOREIGN KEY (`EDITOR_SOURCE_EXTRA_VALUE_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_model` */

/*Table structure for table `act_re_procdef` */

DROP TABLE IF EXISTS `act_re_procdef`;

CREATE TABLE `act_re_procdef` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `CATEGORY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `KEY_` varchar(255) COLLATE utf8_bin NOT NULL,
  `VERSION_` int(11) NOT NULL,
  `DEPLOYMENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DGRM_RESOURCE_NAME_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `HAS_START_FORM_KEY_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_PROCDEF` (`KEY_`,`VERSION_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_re_procdef` */

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`) values ('BusLeave:1:504',1,'http://www.activiti.org/test','è¯·å‡æµç¨‹','BusLeave',1,'501','leaveBill2.bpmn','leaveBill2.png',NULL,0,1),('LeaveBill:1:404',1,'http://www.activiti.org/test','LeaveBillProcess','LeaveBill',1,'401','leaveBill.bpmn','leaveBill.png',NULL,0,1);

/*Table structure for table `act_ru_event_subscr` */

DROP TABLE IF EXISTS `act_ru_event_subscr`;

CREATE TABLE `act_ru_event_subscr` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `EVENT_TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EVENT_NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACTIVITY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `CONFIGURATION_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `CREATED_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_EVENT_SUBSCR_CONFIG_` (`CONFIGURATION_`),
  KEY `ACT_FK_EVENT_EXEC` (`EXECUTION_ID_`),
  CONSTRAINT `ACT_FK_EVENT_EXEC` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_event_subscr` */

/*Table structure for table `act_ru_execution` */

DROP TABLE IF EXISTS `act_ru_execution`;

CREATE TABLE `act_ru_execution` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BUSINESS_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `SUPER_EXEC_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `ACT_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `IS_ACTIVE_` tinyint(4) DEFAULT NULL,
  `IS_CONCURRENT_` tinyint(4) DEFAULT NULL,
  `IS_SCOPE_` tinyint(4) DEFAULT NULL,
  `IS_EVENT_SCOPE_` tinyint(4) DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  `CACHED_ENT_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  UNIQUE KEY `ACT_UNIQ_RU_BUS_KEY` (`PROC_DEF_ID_`,`BUSINESS_KEY_`),
  KEY `ACT_IDX_EXEC_BUSKEY` (`BUSINESS_KEY_`),
  KEY `ACT_FK_EXE_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_EXE_PARENT` (`PARENT_ID_`),
  KEY `ACT_FK_EXE_SUPER` (`SUPER_EXEC_`),
  CONSTRAINT `ACT_FK_EXE_PARENT` FOREIGN KEY (`PARENT_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_EXE_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `ACT_FK_EXE_SUPER` FOREIGN KEY (`SUPER_EXEC_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_execution` */

/*Table structure for table `act_ru_identitylink` */

DROP TABLE IF EXISTS `act_ru_identitylink`;

CREATE TABLE `act_ru_identitylink` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `GROUP_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `USER_ID_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_IDENT_LNK_USER` (`USER_ID_`),
  KEY `ACT_IDX_IDENT_LNK_GROUP` (`GROUP_ID_`),
  KEY `ACT_IDX_ATHRZ_PROCEDEF` (`PROC_DEF_ID_`),
  KEY `ACT_FK_TSKASS_TASK` (`TASK_ID_`),
  KEY `ACT_FK_IDL_PROCINST` (`PROC_INST_ID_`),
  CONSTRAINT `ACT_FK_ATHRZ_PROCEDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_IDL_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TSKASS_TASK` FOREIGN KEY (`TASK_ID_`) REFERENCES `act_ru_task` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_identitylink` */

/*Table structure for table `act_ru_job` */

DROP TABLE IF EXISTS `act_ru_job`;

CREATE TABLE `act_ru_job` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `LOCK_EXP_TIME_` timestamp NULL DEFAULT NULL,
  `LOCK_OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `EXCLUSIVE_` tinyint(1) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROCESS_INSTANCE_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `RETRIES_` int(11) DEFAULT NULL,
  `EXCEPTION_STACK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `EXCEPTION_MSG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `DUEDATE_` timestamp NULL DEFAULT NULL,
  `REPEAT_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_TYPE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `HANDLER_CFG_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_FK_JOB_EXCEPTION` (`EXCEPTION_STACK_ID_`),
  CONSTRAINT `ACT_FK_JOB_EXCEPTION` FOREIGN KEY (`EXCEPTION_STACK_ID_`) REFERENCES `act_ge_bytearray` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_job` */

/*Table structure for table `act_ru_task` */

DROP TABLE IF EXISTS `act_ru_task`;

CREATE TABLE `act_ru_task` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `REV_` int(11) DEFAULT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_DEF_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `PARENT_TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DESCRIPTION_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TASK_DEF_KEY_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `OWNER_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `ASSIGNEE_` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `DELEGATION_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PRIORITY_` int(11) DEFAULT NULL,
  `CREATE_TIME_` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DUE_DATE_` datetime DEFAULT NULL,
  `SUSPENSION_STATE_` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_TASK_CREATE` (`CREATE_TIME_`),
  KEY `ACT_FK_TASK_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_TASK_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_TASK_PROCDEF` (`PROC_DEF_ID_`),
  CONSTRAINT `ACT_FK_TASK_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCDEF` FOREIGN KEY (`PROC_DEF_ID_`) REFERENCES `act_re_procdef` (`ID_`),
  CONSTRAINT `ACT_FK_TASK_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_task` */

/*Table structure for table `act_ru_variable` */

DROP TABLE IF EXISTS `act_ru_variable`;

CREATE TABLE `act_ru_variable` (
  `ID_` varchar(64) COLLATE utf8_bin NOT NULL,
  `REV_` int(11) DEFAULT NULL,
  `TYPE_` varchar(255) COLLATE utf8_bin NOT NULL,
  `NAME_` varchar(255) COLLATE utf8_bin NOT NULL,
  `EXECUTION_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `PROC_INST_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `TASK_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `BYTEARRAY_ID_` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `DOUBLE_` double DEFAULT NULL,
  `LONG_` bigint(20) DEFAULT NULL,
  `TEXT_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  `TEXT2_` varchar(4000) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ID_`),
  KEY `ACT_IDX_VARIABLE_TASK_ID` (`TASK_ID_`),
  KEY `ACT_FK_VAR_EXE` (`EXECUTION_ID_`),
  KEY `ACT_FK_VAR_PROCINST` (`PROC_INST_ID_`),
  KEY `ACT_FK_VAR_BYTEARRAY` (`BYTEARRAY_ID_`),
  CONSTRAINT `ACT_FK_VAR_BYTEARRAY` FOREIGN KEY (`BYTEARRAY_ID_`) REFERENCES `act_ge_bytearray` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_EXE` FOREIGN KEY (`EXECUTION_ID_`) REFERENCES `act_ru_execution` (`ID_`),
  CONSTRAINT `ACT_FK_VAR_PROCINST` FOREIGN KEY (`PROC_INST_ID_`) REFERENCES `act_ru_execution` (`ID_`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `act_ru_variable` */

/*Table structure for table `applyform` */

DROP TABLE IF EXISTS `applyform`;

CREATE TABLE `applyform` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `applyDate` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  CONSTRAINT `applyform_ibfk_1` FOREIGN KEY (`type`) REFERENCES `applytype` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `applyform` */

insert  into `applyform`(`id`,`type`,`content`,`remark`,`applyDate`,`username`,`state`) values (1,1,'è¯·å‡å›å®¶','å›å®¶æ¢äº²','2015-06-23 22:01:29','admin',0),(2,1,'å‡ºå·®','å›½å¤–å‡ºå·®','2015-06-23 22:01:55','admin',0);

/*Table structure for table `applytype` */

DROP TABLE IF EXISTS `applytype`;

CREATE TABLE `applytype` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `applytype` */

insert  into `applytype`(`id`,`type`,`remark`) values (1,'è¯·å‡ç”³è¯·',NULL),(2,'ç”Ÿäº§ä»»åŠ¡',NULL);

/*Table structure for table `busleave` */

DROP TABLE IF EXISTS `busleave`;

CREATE TABLE `busleave` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `days` int(11) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `leaveDate` datetime DEFAULT NULL,
  `state` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

/*Data for the table `busleave` */

insert  into `busleave`(`id`,`days`,`content`,`remark`,`leaveDate`,`state`,`username`) values (7,4,'è¯·å‡å›å®¶','df','2015-06-24 22:57:02',0,'admin'),(8,1,'è¯·å‡å¤–å‡º','å¤–å‡ºé‡‡è´­','2015-06-24 22:58:05',0,'admin'),(10,2,'è¯·å‡å›å®¶','å•Š','2015-06-24 23:29:41',0,'admin');

/*Table structure for table `device` */

DROP TABLE IF EXISTS `device`;

CREATE TABLE `device` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `deviceName` varchar(40) NOT NULL,
  `deviceVersion` varchar(20) NOT NULL,
  `deviceType` varchar(20) NOT NULL,
  `deviceCount` int(11) NOT NULL,
  `ischeckout` int(11) NOT NULL,
  `manufacturers` varchar(100) DEFAULT NULL,
  `manufacturersPhone` varchar(30) DEFAULT NULL,
  `productDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `outDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deviceStatus` varchar(20) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `device` */

insert  into `device`(`id`,`deviceName`,`deviceVersion`,`deviceType`,`deviceCount`,`ischeckout`,`manufacturers`,`manufacturersPhone`,`productDate`,`outDate`,`deviceStatus`,`remark`) values (4,'ç”µé˜»','v0001','0',300,0,'åˆ©å°”è¾¾','13888888888','2015-06-13 16:50:41','2015-06-10 21:57:40','0','ç”¨äºâ€¦â€¦â€¦â€¦â€¦â€¦'),(5,'æ˜¾ç¤ºå™¨','050120001150112','1',23,1,'ä¸‰æ˜Ÿ','13999999999','2015-03-13 12:57:37','2017-03-13 12:57:37','1','sdvsdvsdvds'),(7,'ä¸»æ¿','v111110909','1',13,0,'æŠ€å˜‰','02988888888','2015-03-13 12:57:37','2017-03-13 12:57:37','0','aaaaaaaaaaaaaaa'),(8,'ç”µæ± ','dc0000021','0',23,0,'ä¸‰æ˜Ÿ','13999999999','2015-03-13 12:57:37','2017-03-13 12:57:37','0','aaa');

/*Table structure for table `log` */

DROP TABLE IF EXISTS `log`;

CREATE TABLE `log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `action` varchar(30) DEFAULT NULL,
  `actionTime` varchar(30) DEFAULT NULL,
  `userIP` varchar(30) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

/*Data for the table `log` */

insert  into `log`(`id`,`username`,`module`,`action`,`actionTime`,`userIP`,`operTime`) values (1,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','117','10.108.1.58','2015-06-08 19:21:58'),(2,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','54','10.108.1.58','2015-06-08 19:21:58'),(3,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','66','192.168.1.104','2015-06-08 19:21:58'),(4,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','163','192.168.1.104','2015-06-08 23:25:20'),(5,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','163','192.168.1.104','2015-06-08 23:26:05'),(6,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','107','192.168.1.104','2015-06-09 21:38:48'),(7,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','5','192.168.1.104','2015-06-09 21:39:19'),(8,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','4','192.168.1.104','2015-06-09 21:39:29'),(9,'admin','ç”¨æˆ·ç®¡ç†','updateæ“ä½œ','8','192.168.1.104','2015-06-09 21:40:09'),(10,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','25','192.168.1.104','2015-06-09 21:40:09'),(11,'admin','ç”¨æˆ·ç®¡ç†','updateæ“ä½œ','4','192.168.1.104','2015-06-09 21:40:21'),(12,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','4','192.168.1.104','2015-06-09 21:40:21'),(13,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','29','192.168.1.104','2015-06-09 21:40:30'),(14,'test','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','5','192.168.1.104','2015-06-09 21:40:56'),(15,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','58','192.168.1.104','2015-06-09 21:41:43'),(16,'admin','è§’è‰²ç®¡ç†','updateç”¨æˆ·çš„è§’è‰²','3','192.168.1.104','2015-06-09 21:41:50'),(17,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','166','192.168.1.104','2015-06-09 22:01:57'),(18,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','147','192.168.1.104','2015-06-09 22:04:00'),(19,'test','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','66','192.168.1.104','2015-06-09 22:25:02'),(20,NULL,NULL,'saveæ“ä½œ','-1434180998219',NULL,'2015-06-13 15:36:38'),(21,'admin','ç”¨æˆ·ç®¡ç†','saveæ“ä½œ','76','192.168.0.101','2015-06-13 15:39:02'),(22,NULL,NULL,'saveæ“ä½œ','-1434182270821',NULL,'2015-06-13 15:57:50'),(23,NULL,NULL,'saveæ“ä½œ','-1434182299046',NULL,'2015-06-13 15:58:19'),(24,NULL,NULL,'saveæ“ä½œ','-1434182589706',NULL,'2015-06-13 16:03:09'),(25,NULL,NULL,'saveæ“ä½œ','-1434182615611',NULL,'2015-06-13 16:03:35'),(26,NULL,NULL,'saveæ“ä½œ','-1434185202623',NULL,'2015-06-13 16:46:42'),(27,'admin',NULL,'saveæ“ä½œ','4','192.168.0.101','2015-06-13 16:47:04'),(28,NULL,NULL,'saveæ“ä½œ','-1434186372155',NULL,'2015-06-13 17:06:12'),(29,'admin',NULL,'saveæ“ä½œ','6','192.168.0.101','2015-06-13 17:07:52'),(30,NULL,'ç”¨æˆ·ç®¡ç†','deleteæ“ä½œ','-1434203880040',NULL,'2015-06-13 21:58:00'),(31,NULL,'ç”¨æˆ·ç®¡ç†','deleteæ“ä½œ','-1434205838767',NULL,'2015-06-13 22:30:38'),(32,NULL,'ç”¨æˆ·ç®¡ç†','deleteæ“ä½œ','-1434207715405',NULL,'2015-06-13 23:01:55'),(33,'admin',NULL,'deleteæ“ä½œ','172','192.168.1.104','2015-06-13 23:04:05'),(34,NULL,NULL,'saveæ“ä½œ','-1434210585289',NULL,'2015-06-13 23:49:45'),(35,NULL,NULL,'saveæ“ä½œ','-1434210656783',NULL,'2015-06-13 23:50:56'),(36,'admin',NULL,'saveæ“ä½œ','48','192.168.1.104','2015-06-13 23:51:51'),(37,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','63','192.168.1.104','2015-06-17 19:54:35'),(38,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','17','192.168.1.104','2015-06-17 19:54:59'),(39,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','47','192.168.1.104','2015-06-17 19:57:41'),(40,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','48','192.168.1.104','2015-06-17 20:00:50'),(41,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','62','192.168.1.104','2015-06-17 20:01:23'),(42,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','48','192.168.1.104','2015-06-17 20:02:38'),(43,'admin','èµ„æºç®¡ç†','saveæ“ä½œ','79','192.168.1.104','2015-06-17 20:03:15'),(44,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','31','192.168.1.104','2015-06-17 20:03:24'),(45,'admin','èµ„æºç®¡ç†','saveæ“ä½œ','31','192.168.1.104','2015-06-17 20:03:41'),(46,'admin','èµ„æºç®¡ç†','saveæ“ä½œ','47','192.168.1.104','2015-06-17 20:03:56'),(47,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','31','192.168.1.104','2015-06-17 20:04:03'),(48,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','0','192.168.1.104','2015-06-17 20:04:03'),(49,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','48','192.168.1.104','2015-06-17 20:06:06'),(50,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','48','192.168.1.104','2015-06-17 20:06:18'),(51,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','48','192.168.1.104','2015-06-17 20:06:59'),(52,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','0','192.168.1.104','2015-06-17 20:06:59'),(53,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','28','192.168.1.104','2015-06-17 20:07:25'),(54,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','51','192.168.1.104','2015-06-17 20:08:00'),(55,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','47','192.168.1.104','2015-06-17 20:08:09'),(56,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','0','192.168.1.104','2015-06-17 20:08:52'),(57,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','15','192.168.1.104','2015-06-17 20:09:22'),(58,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','17','192.168.1.104','2015-06-17 20:09:34'),(59,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','17','192.168.1.104','2015-06-17 20:09:54'),(60,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','2','192.168.1.104','2015-06-17 20:23:52'),(61,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','59','192.168.1.104','2015-06-17 20:24:24'),(62,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','6','192.168.1.104','2015-06-17 20:27:55'),(63,'admin','èµ„æºç®¡ç†','saveæ“ä½œ','0','192.168.1.104','2015-06-18 21:36:46'),(64,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','15','192.168.1.104','2015-06-18 21:41:48'),(65,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','157','192.168.1.104','2015-06-18 22:27:59'),(66,'admin','èµ„æºç®¡ç†','updateè§’è‰²çš„æƒé™','172','192.168.1.104','2015-06-18 22:35:10'),(67,NULL,NULL,'saveæ“ä½œ','-1434720050453',NULL,'2015-06-19 21:20:50'),(68,'admin','èµ„æºç®¡ç†','updateæ“ä½œ','18','192.168.1.104','2015-06-19 21:21:40'),(69,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','3','192.168.1.104','2015-06-19 21:22:21'),(70,'admin','èµ„æºç®¡ç†','deleteæ“ä½œ','2','192.168.1.104','2015-06-19 21:22:21'),(71,NULL,NULL,'saveæ“ä½œ','-1434947783393',NULL,'2015-06-22 12:36:23'),(72,NULL,NULL,'saveæ“ä½œ','-1434948439540',NULL,'2015-06-22 12:47:19'),(73,'admin',NULL,'saveæ“ä½œ','432','192.168.1.104','2015-06-23 20:25:19'),(74,'admin',NULL,'saveæ“ä½œ','392','192.168.1.104','2015-06-23 20:45:50'),(75,'admin',NULL,'deleteæ“ä½œ','130','192.168.1.104','2015-06-23 20:53:43'),(76,'admin',NULL,'saveæ“ä½œ','412','192.168.1.104','2015-06-23 21:32:14'),(77,'admin',NULL,'deleteæ“ä½œ','219','192.168.1.104','2015-06-24 21:37:29'),(78,'admin',NULL,'deleteæ“ä½œ','47','192.168.1.104','2015-06-24 21:37:31'),(79,'admin',NULL,'saveæ“ä½œ','891','192.168.1.104','2015-06-24 21:37:51'),(80,'admin',NULL,'saveæ“ä½œ','391','192.168.1.104','2015-06-24 21:58:09'),(81,'admin',NULL,'saveæ“ä½œ','93','192.168.1.104','2015-06-24 22:19:49'),(82,'admin',NULL,'saveæ“ä½œ','0','192.168.1.104','2015-06-24 22:24:10'),(83,'admin',NULL,'saveæ“ä½œ','0','192.168.1.104','2015-06-24 22:24:36'),(84,'admin',NULL,'saveæ“ä½œ','0','192.168.1.104','2015-06-24 22:25:19'),(85,'admin',NULL,'saveæ“ä½œ','94','192.168.1.104','2015-06-24 22:30:46'),(86,NULL,NULL,'saveæ“ä½œ','-1435156346581',NULL,'2015-06-24 22:32:26'),(87,NULL,NULL,'saveæ“ä½œ','-1435156496437',NULL,'2015-06-24 22:34:56'),(88,'admin',NULL,'deleteæ“ä½œ','282','192.168.1.104','2015-06-24 22:45:47'),(89,'admin',NULL,'saveæ“ä½œ','437','192.168.1.104','2015-06-24 22:45:59'),(90,'admin',NULL,'saveæ“ä½œ','38','192.168.1.104','2015-06-24 22:48:32'),(91,'admin',NULL,'saveæ“ä½œ','47','192.168.1.104','2015-06-24 22:49:20'),(92,'admin',NULL,'saveæ“ä½œ','47','192.168.1.104','2015-06-24 22:51:49'),(93,'admin',NULL,'saveæ“ä½œ','61','192.168.1.104','2015-06-24 22:54:09'),(94,NULL,NULL,'saveæ“ä½œ','-1435157706151',NULL,'2015-06-24 22:55:06'),(95,'admin',NULL,'saveæ“ä½œ','0','192.168.1.104','2015-06-24 22:55:44'),(96,'admin',NULL,'saveæ“ä½œ','47','192.168.1.104','2015-06-24 22:56:19'),(97,'admin',NULL,'saveæ“ä½œ','16','192.168.1.104','2015-06-24 22:57:02'),(98,'admin',NULL,'saveæ“ä½œ','0','192.168.1.104','2015-06-24 22:58:05'),(99,'admin',NULL,'saveæ“ä½œ','251','192.168.1.104','2015-06-24 23:26:37'),(100,'admin',NULL,'saveæ“ä½œ','171','192.168.1.104','2015-06-24 23:29:48');

/*Table structure for table `resources` */

DROP TABLE IF EXISTS `resources`;

CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  `resKey` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `resUrl` varchar(200) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

/*Data for the table `resources` */

insert  into `resources`(`id`,`name`,`parentId`,`resKey`,`type`,`resUrl`,`level`,`description`) values (1,'å®‰å…¨ç®¡ç†',1010,'sys_user','0','user',1,'ç”¨æˆ·ã€æƒé™ç®¡ç†'),(2,'ç”¨æˆ·ç®¡ç†',1,'sys_user_find','1','/background/user/query.html',2,'ç”¨æˆ·å¢åŠ ã€æƒé™â€¦â€¦æ“ä½œ'),(3,'æ–°å¢ç”¨æˆ·',2,'sys_user_addUI','2','/background/user/addUI.html',3,'æ–°å¢ç”¨æˆ·'),(5,'è§’è‰²ç®¡ç†',1,'sys_role_find','1','/background/role/query.html',5,'è§’è‰²å¢åˆ æ”¹ã€æƒé™è®¾ç½®'),(7,'èµ„æºç®¡ç†',1,'sys_resc_find','1','/background/resources/query.html',7,'èµ„æºåˆ—è¡¨'),(8,'æ·»åŠ èµ„æº',7,'sys_resc_addUI','2','/background/resources/addUI.html',8,'æ·»åŠ èµ„æº'),(11,'æ–°å¢è§’è‰²',5,'sys_role_add','2','/background/role/addUI.html',5,'æ–°å¢è§’è‰²'),(22,'ç™»é™†ä¿¡æ¯ç®¡ç†',1010,'login','0','login',20,'ç™»é™†ä¿¡æ¯ç®¡ç†'),(23,'ç”¨æˆ·ç™»å½•è®°å½•',22,'log_list','1','/background/userLoginList/query.html',21,'ç”¨æˆ·ç™»å½•è®°å½•'),(39,'æ—¥å¿—ç®¡ç†',1010,'log','0','log',30,'æ—¥å¿—ç®¡ç†'),(40,'æ“ä½œæ—¥å¿—ç®¡ç†',39,'log_find','1','/background/log/query.html',31,'æ“ä½œæ—¥å¿—ç®¡ç†'),(41,'åˆ†é…è§’è‰²',2,'sys_user_fenpeirole','2','sys_user_fenpeirole',32,'åˆ†é…è§’è‰²'),(42,'åˆ†é…æƒé™',2,'sys_user_permissions','2','sys_user_permissions',33,'åˆ†é…æƒé™'),(43,'ç¼–è¾‘ç”¨æˆ·',2,'sys_user_edit','2','/background/user/getById.html',34,'ç¼–è¾‘'),(44,'åˆ é™¤ç”¨æˆ·',2,'sys_user_delete','2','/background/user/deleteById.html',36,'åˆ é™¤ç”¨æˆ·'),(45,'åˆ†é…æƒé™',2,'sys_role_permissions','2','sys_role_permissions',37,'åˆ†é…æƒé™'),(46,'æ˜¾ç¤ºè¯¦ç»†ä¿¡æ¯',5,'sys_role_show','2','sys_role_show',39,'æ˜¾ç¤ºè¯¦ç»†ä¿¡æ¯'),(47,'ç¼–è¾‘è§’è‰²',5,'sys_role_edit','2','/background/role/getById.html',40,'ç¼–è¾‘è§’è‰²'),(48,'åˆ é™¤è§’è‰²',5,'sys_role_delete','2','/background/role/deleteById.html',41,'åˆ é™¤è§’è‰²'),(49,'æ˜¾ç¤ºè¯¦ç»†ä¿¡æ¯',7,'sys_res_show','2','sys_res_show',43,'æ˜¾ç¤ºè¯¦ç»†ä¿¡æ¯'),(50,'ç¼–è¾‘æƒé™èµ„æº',7,'sys_res_edit','2','/background/resources/getById.html',44,'ç¼–è¾‘æƒé™èµ„æº'),(51,'åˆ é™¤æƒé™èµ„æº',7,'sys_res_delete','2','/background/resources/deleteById.html',45,'åˆ é™¤æƒé™èµ„æº'),(52,'ç‰©æ–™ç®¡ç†',1010,'device','0','device',50,'ç‰©æ–™ç®¡ç†'),(53,'ç‰©æ–™åˆ—è¡¨',52,'device_manager','1','/background/device/list.html',51,'ç‰©æ–™åˆ—è¡¨'),(71,'ä»»åŠ¡ç®¡ç†',1010,'task','0','task',70,'ä»»åŠ¡ç®¡ç†'),(72,'éƒ¨ç½²ä»»åŠ¡',71,'task_deploy','1','/background/workflow/deployHome.html',71,'éƒ¨ç½²ä»»åŠ¡'),(73,'å¾…æˆ‘å®¡æ‰¹',71,'task_myself','1','/background/workflow/myTaskList.html',72,'æˆ‘çš„ä»»åŠ¡'),(74,'å¡«å†™ç”³è¯·',71,'task_apply','1','/background/workflow/formTemplateList.html',73,'å¡«å†™ç”³è¯·ä»»åŠ¡'),(75,'ç”³è¯·æŸ¥è¯¢',71,'task_manager','1','/background/workflow/myApplyList.html',74,'å½’æ¡£ä»»åŠ¡'),(81,'ç»Ÿè®¡åˆ†æ',1010,'statistics','0','statistics',80,'ç»Ÿè®¡åˆ†æ'),(82,'æŠ¥è¡¨åˆ†æ',81,'statistics_manager','1','/background/noDevelop.html',81,'è®¾å¤‡åˆ—è¡¨');

/*Table structure for table `resources_role` */

DROP TABLE IF EXISTS `resources_role`;

CREATE TABLE `resources_role` (
  `resc_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`resc_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `resources_role` */

insert  into `resources_role`(`resc_id`,`role_id`) values (1,1),(1,3),(2,1),(2,3),(3,1),(3,3),(4,3),(5,1),(5,3),(6,3),(7,1),(7,3),(8,1),(8,3),(11,1),(11,3),(18,3),(19,3),(20,3),(21,3),(22,1),(22,3),(23,1),(23,3),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(52,3),(52,5),(53,1),(53,3),(53,5),(61,1),(61,5),(62,1),(62,5),(71,1),(71,5),(72,1),(72,5),(73,1),(73,5),(74,1),(75,1),(81,1),(81,5),(82,1),(82,5),(1010,1),(1010,3),(1010,5);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `roleKey` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `role` */

insert  into `role`(`id`,`name`,`roleKey`,`description`,`enable`) values (1,'ç”¨æˆ·è§’è‰²','ROLE_USER','ç”¨æˆ·è§’è‰²',1),(3,'åˆ é™¤','ROLE_DELETE','åˆ é™¤',0),(5,'55','55','55',1);

/*Table structure for table `serverinfo` */

DROP TABLE IF EXISTS `serverinfo`;

CREATE TABLE `serverinfo` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `cpuUsage` varchar(255) DEFAULT NULL,
  `setCpuUsage` varchar(255) DEFAULT NULL,
  `jvmUsage` varchar(255) DEFAULT NULL,
  `setJvmUsage` varchar(255) DEFAULT NULL,
  `ramUsage` varchar(255) DEFAULT NULL,
  `setRamUsage` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `operTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `mark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `serverinfo` */

insert  into `serverinfo`(`id`,`cpuUsage`,`setCpuUsage`,`jvmUsage`,`setJvmUsage`,`ramUsage`,`setRamUsage`,`email`,`operTime`,`mark`) values (1,'9.3','20','64.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>å†…å­˜å½“å‰ï¼š75.0%,è¶…å‡ºé¢„è®¾å€¼  60%</font>'),(2,'0.8','20','60.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>å†…å­˜å½“å‰ï¼š75.0%,è¶…å‡ºé¢„è®¾å€¼  60%</font>'),(3,'1.5','20','59.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>å†…å­˜å½“å‰ï¼š75.0%,è¶…å‡ºé¢„è®¾å€¼  60%</font>'),(4,'0.7','20','57.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>å†…å­˜å½“å‰ï¼š75.0%,è¶…å‡ºé¢„è®¾å€¼  60%</font>'),(5,'2.3','20','57.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>å†…å­˜å½“å‰ï¼š75.0%,è¶…å‡ºé¢„è®¾å€¼  60%</font>'),(6,'17.9','20','57.0','80','77.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>å†…å­˜å½“å‰ï¼š77.0%,è¶…å‡ºé¢„è®¾å€¼  60%</font>');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(20) DEFAULT NULL,
  `userPassword` varchar(40) DEFAULT NULL,
  `userNickname` varchar(20) DEFAULT NULL,
  `userRealname` varchar(20) DEFAULT NULL,
  `userAge` int(11) DEFAULT NULL,
  `userSex` varchar(10) DEFAULT NULL,
  `userAddress` varchar(100) DEFAULT NULL,
  `userPhone` varchar(30) DEFAULT NULL,
  `userMail` varchar(45) DEFAULT NULL,
  `userQQ` varchar(30) DEFAULT NULL,
  `regTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `lastLogintime` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `level` int(11) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `bankName` varchar(100) DEFAULT NULL,
  `branchBank` varchar(100) DEFAULT NULL,
  `subbranchBank` varchar(100) DEFAULT NULL,
  `openBankName` varchar(100) DEFAULT NULL,
  `bankAccountName` varchar(100) DEFAULT NULL,
  `bankAccount` varchar(100) DEFAULT NULL,
  `accountType` varchar(20) DEFAULT NULL,
  `pay` varchar(20) DEFAULT NULL,
  `mark` varchar(200) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `parentNumber` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`userId`,`userName`,`userPassword`,`userNickname`,`userRealname`,`userAge`,`userSex`,`userAddress`,`userPhone`,`userMail`,`userQQ`,`regTime`,`lastLogintime`,`level`,`province`,`city`,`bankName`,`branchBank`,`subbranchBank`,`openBankName`,`bankAccountName`,`bankAccount`,`accountType`,`pay`,`mark`,`status`,`parentNumber`) values (1,'admin','admin','admin','admin',10,'ç”·','æ¯éœœä¸‹è¦å­¤','0253526','jnfjfjj@163.com','32432','2015-06-08 19:21:58','0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'test','111111','7','7',7,'ç”·','7','7','7','7','2015-06-09 21:40:21','0000-00-00 00:00:00',1,'7','7','7',NULL,'7',NULL,'7','7','ä¼ä¸šè´¦å·','æ˜¯','7','å¾…å®¡æ ¸',''),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-06-13 15:39:02','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `user_role` */

DROP TABLE IF EXISTS `user_role`;

CREATE TABLE `user_role` (
  `user_id` bigint(20) NOT NULL DEFAULT '0',
  `role_id` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user_role` */

insert  into `user_role`(`user_id`,`role_id`) values (1,1),(3,5),(4,1);

/*Table structure for table `userloginlist` */

DROP TABLE IF EXISTS `userloginlist`;

CREATE TABLE `userloginlist` (
  `loginId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `loginTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `loginIP` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`loginId`),
  KEY `FK_userloginlist` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=386 DEFAULT CHARSET=utf8;

/*Data for the table `userloginlist` */

insert  into `userloginlist`(`loginId`,`userId`,`loginTime`,`loginIP`) values (284,1,'2015-06-08 19:21:58','127.0.0.1'),(285,1,'2015-06-08 19:21:58','127.0.0.1'),(359,1,'2015-06-19 20:59:18','0:0:0:0:0:0:0:1'),(360,1,'2015-06-19 21:09:17','0:0:0:0:0:0:0:1'),(361,1,'2015-06-19 21:12:04','0:0:0:0:0:0:0:1'),(362,1,'2015-06-19 21:13:30','0:0:0:0:0:0:0:1'),(363,1,'2015-06-19 21:18:02','192.168.1.104'),(364,1,'2015-06-19 21:20:20','192.168.1.104'),(365,1,'2015-06-19 23:28:43','192.168.1.104'),(366,1,'2015-06-22 09:31:31','192.168.0.101'),(367,1,'2015-06-22 10:14:22','192.168.0.101'),(368,1,'2015-06-22 10:57:55','192.168.0.101'),(369,1,'2015-06-22 12:26:36','192.168.0.101'),(370,1,'2015-06-22 14:05:03','192.168.0.101'),(371,1,'2015-06-22 14:40:02','192.168.0.101'),(372,1,'2015-06-22 16:07:26','192.168.0.101'),(373,1,'2015-06-22 17:21:49','192.168.0.101'),(374,1,'2015-06-22 17:21:58','192.168.0.101'),(375,1,'2015-06-22 18:04:32','192.168.0.101'),(376,1,'2015-06-23 20:24:53','192.168.1.104'),(377,1,'2015-06-23 21:28:46','192.168.1.104'),(378,1,'2015-06-24 21:10:11','127.0.0.1'),(379,1,'2015-06-24 21:19:32','192.168.1.104'),(380,1,'2015-06-24 21:27:07','192.168.1.104'),(381,1,'2015-06-24 21:30:15','192.168.1.104'),(382,1,'2015-06-24 21:33:45','192.168.1.104'),(383,1,'2015-06-24 22:32:09','192.168.1.104'),(384,1,'2015-06-24 22:53:55','192.168.1.104'),(385,1,'2015-06-24 23:00:39','192.168.1.104');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
