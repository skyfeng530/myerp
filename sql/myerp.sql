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

insert  into `act_ge_bytearray`(`ID_`,`REV_`,`NAME_`,`DEPLOYMENT_ID_`,`BYTES_`,`GENERATED_`) values ('402',1,'leaveBill.png','401','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0/�}�\0\0$zIDATx���olS���qk��Mʹn�����\0?؈�V\n���4�I�jiU���4�U�i��&ʴ�E�ڡ�Ctk����<UK�]VH��@3��\0�u����f$�����\\�����v�sw�/}���{r���Ԏ�=\0\0�V�\'\0\0\0\\�$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0\0�ڑ$\0\0@�H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0jG�\0\0\0�#I\0J0#�Hlܸ1o\n�B�=�x<���>A\0�I��fb�z�f�0sCW׎==oj׫�m��T$ihhX�bE,�}�\0P�$H388�\0a&��l�|��ۿf���@oo���[H����f,����3��X�r�ڵk\rÐ=\0�F�\0�\"�HGGGU�Y�߲%��i�C\0�����bŊx<^s����0��J�d��H���D\"s��;f��m\0r�$�����9�75fVW׎p8,{X\0�F�\0���` ��Q�Gyt�֭�@_$	`��1���yO�g��{���8\0�B�\0B\"����#\n���?ڼy��!�IX�`��KGT��DSS��!�I��L&���P�Q������~��#�Pw�X,\Z��5I<�iSGG���I���k�nݺ��IbO��`P�@�$�](��;��R�����\'{�\0tD�\0�N��t���1��+{�\0tD�\0ꮩ�i�칺&	�<�s ��;���։$	\0��h=@���b��\0�H@�E�ї�m�k��۷���E�@�$���͛�GuMfRY����\n@G$	��R����k�hkk���=P\0:\"I\0��tyut����� IXu}����3.{�\04E�\0�a>��W��::vｾt:-{�\04E�\0H<���$\0��!I\0��>�յcc�[\'N477_�=2\0�\"I\0\'�ɴ���ן^^�4bƈ�CC��@k$	`A%�I3L����cķ|p׫��\0ݑ$��688���ܷo�\\��0�1�\nH��Lf�ʕ6<u��HU���س�=Wx�D� \0`\ZI��03I,[�7���*�/m�fn���?2����H�L�t��\'�hhh����A��ၢ�`޳}��=��nn�f��S���S�ې$\0��H$�h����s;�3F���L&#�4`$	@Ef��}\n\0P��\"���6��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPI�[Э\0�$\0��\nPE<7���\r捦�&��ҥK�ɤ�S��H�*v��陡��5�H�>5\0(�$��0�%K�8c���˛��2���S��H�B֯_�h�\";I�[����C�I@9$	@-����������Ð}F\0PIP�޽{/^l&�P(�_H\0PIPΪU�\nIB��\0���$\0��i3I��O\0�@�\0Tĕ�\0��\n��0�x<�D�����yuM�c7�p8��T\0�$�����Ԍ۷o���szhh2�ճ̱������5k֘�3OȞ\0�\"I\0����h4���6|vx2;I9�⥋f�09�tZ�DPI�3cD xiۋ��	�T�zuWKKK*��=]\0�C���Ѩ#�S�kO��+�&{�\0(�$�uww�������z�?ٴ�iٓ@-$	��0��w�\\*��*�ѱ����s�\0N$	�+�E��l�]��oV�9I�^ZզM��K�\08�$��p8ܵ�o�b���xJ�ʊ�\'��	qh4�y����r`R���wM�.~�w����J_ԥ���@  {�\0(�$}���\'�dsc��x<�B��ŕ��<)�	��=��ħW��ˊ�	1|]�q:\'^~���Ę�5:6��zeO\0��$�����K#粹�B���ڔ���~(�����k��◾��g��	q5\'�d������1+I��Y��\r���\0}Yi�]�?�rbd\\LN�� �����������/ʔ͋I+a�?|�h_��$���\0}Yi�vM\'�)q��hTd�����/[�����x��\Z率��U�$\08��/+\r\\�����ȸ8U\\�.�x����E�����D�w[�8xx�h_��$���\0}Yi c����lL�&q��9��J���|�w7|��?�|]��	qmbzǾ��E�jU$	\0Nt��\\s���*,�f���O��W�������@�׿qaB|d���f��;p�h_��$���\0}��`��c�:t<�?��7��w���cC�<������8��w�y�����>��m�?,}E\'I\0P����eg=�أ�\\��;=T��VE�\0�DG���$1BU[$	\0Nt�k:IL]��-�\0\':�e%��T�E�\0�DG���$q���H\0��З�$>��-�\0\':�e%�4Um�$\08��/�I����/+I|HU[$	\0Nt��\\���S�I�����9��\"I\0p�#@_V�8KU[$	\0Nt��J��(��E_�Q~�Jx���7(�SȞ:\0\n�#@_֢�A=�>��)�w�W急��8�5:�S@!t�km�B^~i�5g�z��#B�I���З��_����|������e6(s���G�F\'{�\0(��\0}M���T=��B~�ƭ�ݱ����=%_���Y���N�r>���:�e-�g�n.��6(�Qt�����.8�t��=u\0BG���������1ퟳ���ϼ]��jo�c����B�З��գ�#n�y�2�}w���fn_���H��P������(�ȅ�ս�ƕp���?+?�\\F\'{�\0(��\0}Y��zT����ROd?Tf�����H-uZ�dO\0����z,����Ew�Z�˄�2I⎷I\0ꊎ\0}�+b>���H\0��З�$ޥ�-�\0\':�e%�$Um�$\08��/+I�CU[$	\0Nt��������ߦ�*�\0\':����Μy=�?AUU$	\0Nt�+\n��{k^�EU^�$_������BH�WgggG�����?Ş�F����BH�W*����7��q��\n�W%	�S@!$	hm㴵yq����\Z�u$�=i\0�B��������G��N����e2}�\'\r�ZH�]2��%�	!�Re�3r���({�\0(�$���~3Ltv�P�#��J$���}���=Q\0TD�\0����\r��~�N�b��d���*i���m�S@Q$	�����h�[MM����ih�L$������H���f\0� I\0*�pEj\0.A�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�T���\0��z��y������t��d2)��\0�$����;wzfhmmM$�O\r\0J\"I\0�0cɒ%��|�򦦦L&#��\0�$������/Z��N�֭���}R\0PIPKccc!F����|>�0d�\0�C�\0Բw��ŋ�I\"\n�\0�G�\0��jժB��}\"\0pg$	@9�t�L|��+�$\0qe*\0nA�n1#�G\"�`0���f^�A����@8��b|@y$	����ns5c��������\Z��f�,s��o���k͚5�����\'��H�0��;\Z����\r���NRκx颙\'�_N:��=Q\0TD����^���dv�*U�^���ҒJ�dO\0�$��h4jň�T��ӳ{�ʯɞ.\0�!I@k���mm��9������O6mzZ��PI�2���=���ƩJjt�����\\��I���b�h4��fWk�~Nҹ�V�i�/�R1\0N$	�+w��ۭ���C!ޟ����	qtB\Z�m�������1�C�]�����d��u)ux�?Ȟ:\0\n!I@_~��ĉ#��X�<Ϩcyq%\'.O�kB��gOy>�����bxB_)C�Ή��<j�,1�a���x�^�S@!$	諡���ȹln�Pf8�6%&�������?���/���gsB\\͉+Yq9+2B�>x�J�z��+yp�#@_V\Z�j��ϱ��S76�d2�}��������2e�b�J�-�W�\"I\0p�#@_V\Z��]�IbJ\\�&>\ZY!&\'&�˖y<wy<އ��ƹ㡁#E�jU$	\0Nt��JW�*��12.�_��C\'�kll�k�\'?u�=��ݖ$(�W�\"I\0p�#@_V\Z��e�s</.ӯI\\�.z&��|�=����\r�}��/_btB\\��ޱ��`ѾZI��2W�\\�c�\n�&�d�Ǔ�������>���o\\��!F&��%�,�W�\"I\0p�#@_Ei غ��;�O�&�\r$�9����?����3{N�{��}G��?z�����a���K_�I\0T@G���$q�Y�=�h%���C�U�$\08��/+I�P�I���NS��j�$���\0}YI�\"Um�$\08��/+I\\��-�\0\':�e%���j�$���\0}YI\"MU[$	\0Nt�$A�\00wt��JR�I��2Wĩ��T�E�\0�DG���$q���H\0��З�$�R�I������ܫp��_�1s�Yw���\n���yc��+{�\0(��\0}Y��s���)s�l����u�R�q>W��e����B��׼���,ۥ*u�ǋ�G��I��#@_����\\�>���ͅ��63���\n����*<l���=u\0BG���W�|j.u+7����R����A�Ö�Y�ژmw��2�UۨeO\0���/kq=3�*g���{���IK��q�6��f?�y���:�e���ͱ\n���:��\r��V~���~Mb���yc^�$���\0}Y���\\ʱr�vg�m�q���<Z� ��t=u\0BG��������ͬp�v�-+����}Mb��n���xI\0��З����K9���,���G����c�3�䡢\'��x��ʞ:\0\n�#@_����_*�����r�mfF�J�DQ�)�$	\0�@G���1�?IU[$	\0Nt��J�R�I����D���H\0��З�$ޡ�-�\0\':���z�Ǐ��oSUI����|gμ�ϟ��*�\0\':�\n��޽5/ޢ*�w����~�S@!$	諳������fw՟b�D�Q�S@!$	�+�J�������8Ua�ë�������q�ڼ8FUR��:	ɞ4\0j!I@k�a����E��T�J�{���2�>ٓ@-$	�.�L˒Ʉ�T�2c��z{_�=]\0�C�\0D�&:;(�jf%������?ʞ(\0*\"I\0�������b�H�w1@e2�������A��)�(�pKooo4��������ih�L$������H���f\0� I\0*�pEj\0.A�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�TD�\0�t+@E$	\0nA�T���\0��z��y������t��d2)��\0�$����;wzfhmmM$�O\r\0J\"I\0�0cɒ%��|�򦦦L&#��\0�$������/Z��N�֭���}R\0PIPKccc!F����|>�0d�\0�C�\0Բw��ŋ�I\"\n�\0�G�\0��jժB��}\"\0pg$	@9�t�L|��+�$\0qe*\0nA�n1#�G\"�`0���f^�A����@8��b|@y$	����ns5c��������\Z��f�,s��o���k͚5�����\'��H�0��;\Z����\r���NRκx颙\'�_N:��=Q\0TD����^���dv�*U�^���ҒJ�dO\0�$��h4jň�T��ӳ{�ʯɞ.\0�!I@k���mm��9������O6mzZ��PI�2���=���ƩJjt�����\\��I���b�h4��fWk�~Nҹ�V�i�/�R1\0N$	�+w��ۭ���C!ޟ����	qtB\Z�m�������1�C�]�����d��u)ux�?Ȟ:\0\n!I@_~��ĉ#��X�<Ϩcyq%\'.O�kB��gOy>�����bxB_)C�Ή��<j�,1�a���x�^�S@!$	諡���ȹln�Pf8�6%&�������?���/���gsB\\͉+Yq9+2B�>x�J�z��+yp�#@_V\Z�j��ϱ��S76�d2�}��������2e�b�J�-�W�\"I\0p�#@_V\Z��]�IbJ\\�&>\ZY!&\'&�˖y<wy<އ��ƹ㡁#E�jU$	\0Nt��JW�*��12.�_��C\'�kll�k�\'?u�=��ݖ$(�W�\"I\0p�#@_V\Z��e�s</.ӯI\\�.z&��|�=����\r�}��/_btB\\��ޱ��`ѾZI��2W�\\�c�\n�&�d�Ǔ�������>���o\\��!F&��%�,�W�\"I\0p�#@_Ei غ��;�O�&�\r$�9����?����3{N�{��}G��?z�����a���K_�I\0T@G���$q�Y�=�h%���C�U�$\08��/+I�P�I���NS��j�$���\0}YI�\"Um�$\08��/+I\\��-�\0\':�e%���j�$���\0}YI\"MU[$	\0Nt�$A�\00wt��JR�I��2Wĩ��T�E�\0�DG���$q���H\0��З�$�R�I�����p]��S8�|�RͼQ�Aɞ:\0\n�#@_֊�A]���>]�Ι��[�fv��\rJ��P��ӊ{ǵ���ʟ��?�{�$\0HAG������V�)f}���,s���I���^k���;�+��r��+9Ԭ����f��({�\0(��\0}Y�홺V��(�fٷ�m�8���=.�\0\':�e���կ���\\�޽tڸm��OW�qɞ:\0\n�#@_֊;T��}�/����yc�?Kݞu����p|�S@!t��ZqOף\nG.:��E̼Q�]�5�Yks�g���ɞ:\0\n�#@_�Z{j~��B~�v�CE�g�`ֳ*s�Χs����H��P���Z�\\�o-a���&�;�$`��/sE��OR�I����ĻT�E�\0�DG���$���-�\0\':�e%�w�j�$���\0}y����#���TUE�\0�DG��|>ߙ3���\'���$���\0}�B��wo͋�����+~�_��PI�����������]���3�hT��PI�J�R~�}�ơ�8NUX��D\"!{�\0(�$�m��6/�Q��_㿎DB�\'\r�ZHКa�����(U������L�O��PI�K&����d2!� U��aF���eO\0�$\0���o����\nq��Y��s~������\'\n��H�4�0::������/���BP�̿��_E\"m�pм-{�\0(�$�����~���s3��[C\r\r��DV�aB��\0P\ZIP�l\0�$	@E�H\r�%�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V��H\0܂n��$�-�V�*�� �^o 0o455�?�.]�L&e�\Z\0�D�\0T�s�N�����DB��@I$	@�a,Y��#�/_��Ԕ�dd�\Z\0�D�\0�~��E��Ibݺu�O\n\0�!I\0jill,Ĉ��v��g��3�rH�Z��ݻx�b3I�B!�B��H�rV�ZUH�O\0�$(\'�N�I�p��\"�L�-�V��H$7n����B��yO,K�ӲO\0fG�\0$3��f^��H غu+�\0�\Z� Moo�+�!�|>�\0�� �a�ht�O>�Ӯ�{zްkÆ���ڊ���\\��\"H�BK��E/E<���N\rMfs��⥑�o�R�N/�ŉ��A�C\0���R���@\n��g��<�a�S��^����_��\0�$,�0��F<�iS��Y۷���!�W&�X\0�H�D\"v����QC�(ԡ�\r\r\r���A���5��@��_�p֮W_���y�fك�/��@����s����f�����L\0��$,�x<n�����s�$���ٟ�x�\'d��H�B��>�%F�m�\n�mhh�=D\0�\"I\0u��d�i��$����)���=P\0:\"I\0u����Y�o�0�G-���C�@�$��ڵk��#3kO����X�B�@�$�](*,��^}mޓ��!�*U�\n@G$	����:<0�I�,��0d��h=@�ٟլ�+6�*���\n@G����~a��ĉz$	�k8d��h=@������Ƽǈ��F��\0�H@�E���b��-[�=I�u�D���@@�@�$�]ggga�_����$�ٴ�p�H$\"{�\0tD�\0�.�L�o@\\��$�r����c����IX>ߍkZwu��a_L�dd���H�B���(��������ķ|�p�p8,{�\04E�\0B&����0_���۷�~AbppP�h�$,�͛7V}��;����\Z���ڵke��H��Y�bEa�7C�\\�wyut����>T:��=2\0�\"I\0\'�J544�	����>{Ύ^����W��\0h�$,(s������^��o�~�M\r��͛e��H�BK$�+�OsT�m��g�=���q F\0PI� �L�_�e�\r���_f����-mmm΍� \Z\0A�\0��d27n��ƳHKKK��\"�b	@$	@&3���uG�`���_�)�mH�|�a��q3R���������֭[y��H\0\0�v$	\0\0P;�\0\0�I\0\0Ԏ$\0\0j���SM���\0\0\0\0IEND�B`�',0),('403',1,'leaveBill.bpmn','401','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"LeaveBill\" name=\"LeaveBillProcess\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:assignee=\"${inputUser}\" activiti:formKey=\"workflowAction_audit.action\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"经纪人审批\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"老总审批\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow3\" sourceRef=\"usertask2\" targetRef=\"usertask3\"></sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" sourceRef=\"usertask3\" targetRef=\"endevent1\"></sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_LeaveBill\">\n    <bpmndi:BPMNPlane bpmnElement=\"LeaveBill\" id=\"BPMNPlane_LeaveBill\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"230.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"310.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"400.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"307.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"307.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"230.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"307.0\" y=\"285.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"310.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"307.0\" y=\"365.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"400.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0),('502',1,'leaveBill2.png','501','�PNG\r\n\Z\n\0\0\0\rIHDR\0\0�\0\0�\0\0\0�Z�\0\0,�IDATx���lw���hk�W1-�A\r���4���E�\"\Z#�Ĵ��Q,Ml�&F���-��DF����6,P�Mi-�amG(m�#M�u��c����k.M�k�$����n��q��Ο���|��q��;|�ϫ�i\0\0\0��\"{\0\0\0*#�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0�`F*����F��D\"�d2���do \0H@L$3ӉG|>�P�P�ۻa󖗋��/>��ñX������=�H��X\0h(b\n ���P86ӉG����k��+V|/\n�����p\0hb\n Gww��96oyyƀRZ��.^�x�ʕ�a��\0p1h43a�b���κJi��\'��p6���+\0�.b\n�PfFiooO&�לQ�׀��d2�;\0.\"�\0\r��f�Q��̤«?\0�1h����ټ�S^���Ѩ��\0�S�\Z\Z\n�Bf�b�w���֭��s\0�\nb\n� fFٽg��r���[n	����DL\Z!�JE�Q�3J�|��===�w\0�GL\Z!��)u�P����w\0�GL\\���Z[[]�(�Z�h�����\0�S\0�%�x<�jLyt����N�;\n\0#�\0�[�r�u�\\�)����e�(\08���.����gSG��喀�\0�S\0׹�Q�Һ8<���d�(\08������?q�՘bVK�3�fC_\\_=x��\0����s�KSxo\n�&FL\\�ǟ~�Wcʶ�;-Z${G�a��u===>�CWc��V����\0�S\0�e2�@ �jL�����듽�\0�0b\n�������Hkk+$@�!�\0����>�}�1s�w\0�GL\Z�0�@ �Ʒ�\\��@6����\0�<b\n� �d����9�\0�#�\0���;�����`Fy��������#��\0\\AL\Z\'��-Z�ȩ�Ҟ9{��(G���[\0�b\n�P�t�L*f��}F���w>��w\0\\DL\Zmhh���m���y���:d\0M��H���/^��C�9{���rqx䷏=V|�H�N\0��)��a�1�ۂf�0�G-��g�1�����F��@#S\0�����ի[[[�}�f\nٽg�M�k֯����/7�Y��{�LF�&@�S\0��H�R�x�����j�5fFI&��\\N�f@�S\0/2#��M\0\0��)���pl\01�$b\n\0b\n�M�\0����)\0 �)�7S\0@S\0o\"�\0� �\0�DL\0AL���\0��x1\01�&b\n\0b\n�M�\0����)\0 �)�7S\0@S\0o\"�\0� �\0�DL\0AL���\0��x1\01�&b\n\0b\n�M�\0����)\0 �)�7S\0@S\0o\"�\0� �\0�DL\0AL���\0��x1\01�&b\n\0b\n�M�\0����)\0 �)�7S\0@S\0o\"�\0� �\0�DL\0AL���\0��x1\01�&b\n\0b\n�M�\0��;�ɤ�N|>_(2/��~������iٛ\0rS\0�ظqcK�%K��R)ٛ\0rS\0�0c޼y�e�~�?����4\0���xȚ5k�̙cŔU�Vuvv��(\0���x˂�e���@�0�[\0�S\0oٺu�ܹs͘�DxW\n\0�S\0�Y�ti1���\0���xN6�5c\n�C\0b\n�E|�\0b\nP�0�d2����p (�M��n>�h4�H�qh\0S������ӳ�Q֯_�y˖#G����z����#��ۻb�\n�11Ê���)b\n r�\\<���8~��X~�*�3gϘa�|p�٬��b\ntgf�P(��3O��G�����_�hQ&��=\\\0�BL����x!�\\����-�/�����b\n�����ѱ,?nP��O~��k�=h\04BL���\'Nf�㗩Zjx佶��|���!�@_�D\"���/Y�$��\Z?�[z+�j��_��41��F����aFY��oM��y�ڨ�7*v��lx���v���\Zb�!�]����o;p����\')�gp \n�:\0� �@_�`������b���12).���c�?���-�}�}Y�d^ǯ��!���g_�W8�2�a\r����|���.�)�Wkk��s\'����2�ǥ	1:1���ɩ�{��~��oǅ�8..�����	�i��BLֳZ�\"\0�B���\nQ�U�#���e16���\\�w�?��o?~j���b�_v��g��VEL�0��5�g�TL�g.�w�E^�����m���\\����+Jo�{p��Z1@��n��BԸ`U�E�s�ũ�������,�~�Gn����=WŔ]{m�ժ�)\0\Z�v}�F�*��˓�1u6���eW��m����O����\'���!�Gťѩn�e��VEL�0��˜n��߳�8��I�B^�7&N]��8�i��K���ӣ�]C�6ĹQa�m;w�n�US\04���E����_?��@z`(�}0�}����k�k�8�u���ؾ���}�~��?>s���b\n��G���\n1�|i=����|�w��vC����ah7�W!����-b\n����@_S1e�,UoS\04��*Ĕ3T�EL�0��SNS�1@��n��BLy����)\0\Z�v�&�L&3�L�_bJ�����)Uj\0�6�4�C�?B|�7����~KLq$��r�{�8�S�\"�\0p1��0�뮻�8�Ν;��_�b�$Z�)�P�ViLY�n���+>���ߟ�f%�4�&ELA�3\'��of����^3��BL��8E�[Ř�N�?��ϗ>����@@��h*Ĕf`N����]]]���E-ߦ����T�e>n�sL��)�<��<H���r���(���63�D�Q��W������n�ɚ0��c�N���gSNP�VK�l����׾���~�zxo���P(${�=�|���<H#�Hkk��$L�R�7\rP\01EU�l���3�]�[�3h0����o��L&��b�q7�Z��?�U��q�կto�l�b=�}}}��r�g>��Λ7���\Z�+��Lu��`:�%�s�9㚝N��x�[o����������N���¤��e���.���Z6��m�{����+}�\\������}Μt����\Z;�\n3+�A+��\0l�)�I�R�p���kd>\\�D��`��)�a�w3̸X�i�՘Rd>���̹�z�!/����\r<���s20��EFqDaR�٪)>�U����r-���>���b&�?�7�\"ڍb���igN���\'3n��f{t�f1��꿵�|���W�Ǚ�����(G�QI*��F����y&�cnT-k._�vM�}��Ɍ�9�w���	�^����G�V\0�C�QI$��듽ͣ0���F}�ެ�_����55^��{�V\\��kB�t:��\n�sh7��f�~�_�V4��\\~��*�#W]Ye��(�r�˕�ûVz����9�.P�v�^�q\\a.?�FYk.^(��.�~�Ws*�ь�tj�d]s�u��F�0����n����*wTe��+g�\\)ʸ�k���=t͉��\0�h7���|�����[���-���u+������F�n�8s���<�x�C����t�*�-�~�����~�vP��5�L&ß�lh7�0�P�Y���\r��\"������PFkk+_>�BLIS�S�{xl	eпW�)�S�OE���6ʠ9���]��wr�5����[��CB�/��c�^��<H�U<��c�pH(���H$�u��U��z=��u�9`�!���㺻�;;�>�UN<\Z��e]��0l8$�A�r\\&�	o�l��\Z+\Z]�J�d]��0l8$�A�rCה��b?UK�-��X,\"{К�9`�!������������n	o����f�a�pH(���t:\nݖN����+3��y���)����8�	eп�300`&�����*�T�`0���\'���8�	eп\\eFgg<�=��E6�I�A*��w2��X�#\Z\r��e�8�	eп\Z���?�����������-3���a�H�9p5	eп��w�����P�K+��w��CB�/�0�zb�	eп��p�ql8$�A��\ní\'���P�K+��w��CB�/�0�zb�	eп��p�ql8$�A��\ní\'���P�K+��w��CB�/�0�zb�	eп��p�ql8$�A��\ní\'���P�K+��w��CB�/�0�zb�	eп��p�ql8$�A��\ní\'���P�K+��w��CB�/�0�z�w�K��9����Z� �0�z�>�-%l7�]S�{����2�/Za��T�����5����ʠ�h���ӌ�^��I�k�m����U�E+���)�I��k=<����ʠ�h����5�M���*\0U�U�E+��j�)�\'Hf<�2�@<e�A�\ní��ǽƘ>POYe�_�^2�4G���B!���7��?~:���ih�Z�oO�-�hV<e�Aiz7n,���%K��R)ٛ���M\'��<;�Jh#POYe�_��a���+�(.����\\N���A�}�GLs6�\nǷpOYe�_t�f͚9s�X3ʪU�:;;eo\Z��}�hR��)׶~�Sx�*�������˗�0do\Z����P�K[�n�;w�9ܑH�w�����P�KK�.-���F�0l8$�A��G6�5���!k����P�K+��w��CB��0#�L�b�p8������n>�h4�H�q�Fj�0��!�����������(�ׯ߼eˑ�G��y=��w����]�b����aE������P��=�\\.�wtt?q|,?F�֙�g̰b>8�lV�@5?s��CB�/��%\n=��Sc�Qj�z���-Z��ddW��0l8$�A�rI</d�+T�ڼe���_�=\\M����P��\r}}}���UK��?^��ك��8�	eпgF 8q2��L�R�#ﵵ-�]��a�pH(���D\"���㗬Z�f��-��V�v�/�k���0l8$�A�r\\4\Z����3ʲ�w�xkB΋�FžQ�{x�g��/���sL��;\r���tE�~ہ�V�/=1H�=��PH��5-s��CB�/�������G�e>��B�L������$ď~�p�um_=��G��+\"c�#���W�N��hX�#�|>��kZ�\r��2�_�kmm={�d~|�X�#|iB�NL�j|r���^�秿�?��q!.��yq>/rBlڵ�S��,����l8$�A�r\\!j\\���qd\\��,�&�_ �����\'����OM}�Y~R��ˎ=�l�ժx*�����P��q���?��bʄ8sI�;,�B���o�������]�]Qz�݃{m�ժx*�����P��q��q���>�.�S��+b��7,Xp����p�ͱ{��)���n�U�Tt�-`�!����\nQ#g����Iqޘ:�r�ز+���o��\'oj�ؓy��ã����\r�\r��V���l6���eo�-�e078�|H��߳���I�B^�7&N]��8�i��K���ӣ�]C�6ĹQa�m;w�n�U�TtI&�	���ڍ2�g�\Z�%���~x����Pz�`z��C;�����^9pl�����}��8��|���wK�Ĕ&����Ddo�-�e078�SΗ��_�W�~箻l7Ԫx*���@�V\0�B�Qs��\n1�Uo�TtI$��듽���n���ษ�2q���x*�!���0do�-�e078�S�P�OE7����^�Z�V\0�C�Qs��\n1�4Uo�Tt�a�@ �����sh7�`np\\!��K�[<�����\0��v���bJ���x*:���g�ʕ���(ڍ2�GL!��eF<\'�\0U�n����BLy���x*�^.����	��TG�Qs��̇tb�Uo�T�f�������h�(�W��=���h7�`np\\!����-�q�õ|]/l�ǭ��3�J�r9�O@\r�|�h!�8�e*����-��\0\Z�v���b���W-��f�B���NOE\0\rC�Qs��\n��۳/k=�3��.S���������f�����.h7�`np�#��t�b�e꽾���S�e���.h7ʨwn(]�y��´��l�ZC�l����t�T�~�eJάT���ﯵ�C@�eT�JO��nb��\n�6ޛ�����l��XPr���t������������l�]�:\0���(�ƹ��X��a�ͤ0s�}Y�)]�m��\\ *��ʯj�l�GG��Z���ڍ2f�*�;�x͵���&�7gY�J��V�W3�iq���U=�r�2�7l��,{�\0�v��zcJ�tRz�R���Oa�>:��:(\\�����e�����꿵�W������͐=t\0tA�Q�5�M���*�Q���8^�W[�o˗�z6�~�����ڍ2j�)�\'Hf<�2�}��ó��?VY����7�qኗ���]����:\0���(����ƘR�i�ZӘ��m(�e�*Yd�q�ח#b\n\0��n�Q��`(U�ʵ��ɘ�<9yȩ��ZL-K����گ��/]���\\Þ�:\0���(���0�yۭ�)�\n��T���S�,�e������lJ�o��bJ���4|�\0��v��\Z_���I�s*�M)U�)�S���O\0��n����8��w�����ר���\"����(���q�@�ر�&\'RuOE\0\rC�Qs��\"��?��M�W�����s�`P���3�2�)������W�įV�9�h<�=t\0t�̧b��2�L0x�ec��8@�X���T*%{�\0肙O�7tMY9)�S��ߒ���\"�\r�F���ALq�a��bU���-�୹�6ك@#�|� ��$�N�B���)!�����(f���J�p�3�2�)�0�Jw���K�W*�X0������f>eS\\eFgg<�=��E6�I�A*��w2��X�#\Z\r��e\01�)���\0���������W��G�hm�1[f&��@_�|�h!���&\0ALQ1E+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B����p� �(�yK+7\0b�B���2�p[�_��<�\"\0j�g)�	F+.ŔZ�\0�A�R��VfS�O��T��F��hU�`^�ʌ�F��1c^�x\0�@�R�V�:�R1��.IL�(z�2�`�rm/�T�(�ҋ>No/\0��n����S�{ѧ��xP=KL0Z��)�%�)\0�=KL0Zq�ɼ�@it+e0�h�ޘR��\ngS\0(���&���IQ)�T\\��M\0�г�����ɤ9�>�/\n��~��������m��>c<�k:�/��t�Z�2�W��ƍ��Ē%KR���M\09���ALiz�a̛7�4�,\\�����r9ٛ\0r0�)����5k�̙3Ǌ)�V���씽Q\0 \r3�2�)�X�`A1�,_�<�!{�\0@\Zf>eS4�u�ֹs���DxW\n\0�1�)�����K�c��\r\0ɘ��AL�G6�5���s�\0�f>eS��p� �(�y��H&��X,��ߊ�s��G \Z�&	>\r@\"f>e�S\\���gN�fFY�~��-[�=:���Y澛�@oo�+���+������ALqO.�����OˏQ�u��3��N6��=P\0��̧b�Ǩ\n��~橱�(5]=���-�d2���^���ALqI</d�+T�ڼe���_�=\\\0��̧b����::���\r����O�v�#�\r�F���ALq�a�@���L~�2UK\r���ֶ�/t�0�|� �8.�H�����%��D�Y�GvKo�U�]�K�\Z\"��a�S1�q�h�w��?�(�:��	q8/^�F����\r/�t���1�_C�4ĶKb���m�[y��� ���B!�C@�|� �8.<�7?>R,�bdR\\���%!~���[��h���ɼ8>*�_CϾ��pBeD�\Z9���d\0]0�)�����ֳ�N�Ǉ�e>&���ԯ�\'��}��~�_�����⸸���\"\'Ħ]�1eX���ah7�`np\\!j\\���qd\\��,�&�_ �����\'����OM}�Y~R��ˎ=�l�ժx*hڍ2�W�\Z��j*�L�3�Ļ�\"/���h��ZZ�oi�����7�=��v[���\"����(����!{+�J!j\\����Ϲ���Eq���}��\\?�#7�ts잫bʮ=���jU�\0\rC�QF �ʝU�\Z9��/O����ٔ3WĖ]�/��~�\'>yS�Ǟ�˳W��F�n�m`��Z1@��n�\n����doES1������*ξfR��S�;dھrǒ����x��\rqnT�Ae��]��jU�\0\rC�QF8��M�5�K����遡�������v�?�����r����C�|c��7�:p��\'�������)\0��F�x<�H�ފ�R�)�K���+h�s�]�jU�\0\rC�QF��eoES)ĔsT�EL�0�e���`0({+��TL�8K�[�\0\rC�Q	�uV!����-b\n���ݨ���g��ղ��yb�i��\"�\0hڍJ��lV��4�BLy����)\0\Z�v�����p8,{+�D!�d�z���ah7�����GS�)\0<�v�����H$���do��\n1���\"�\0hڍ�����@WWoU�f�t;1q����)\0\Z�v��\\.g�3�D\"�K_���D\"�吰C\n1�$UoS\04�Fy�a���\'�Z��^Ne�x<�TLq*9b�	��\"�\0h�\r�U�)�]�*wQ����]_~�՝�=t\0tA���\n3�ۮV�]��]���x��v�������\r��Ҍ^=X̘BjI����\n1@��n���D���U���;��뺾$�|�@�7vJ��������\'3���1����-o�m�3.e��~��S\04��*��ǜ�*����b����.�^pc�l){�\0�v}��7ݫ*믚c�^����ީ�]�:\0���@_���K�A���z�P�r�]�_pu�d\0]�n��~č*��Z�y���/O6ž|�����ah7�WaF?�xY�-I~U�c�ej�l�����A�C@��ˍ�|�<Q=�T��z�E��R1��h7З9�NNr��_�)^9�U�3����qm��)�C@��0��A�[�\0\rC���\n1%M�[�\0\rC���\n1�u��\"�\0h�\r����._�;9�\ZUWS\04��\nǎ�49y����)\0\Z�v}E\"�����R���������b\n������y��_��s��x<.{�\0肘}e2�`�����Iq����ѥ�TJ���1Z뚲rR�j��%�Ed\Z\0�S�5�0��;�*�>�ze�[��[s�m�\r�F�)�]:��nK�SBQӕ�Q�<�������b\n ̤���!�R�J=���${�\0h��L1��3ߞH�\"��$� ���;��U,����˲����)�������o��/���\Zjm�1[f&��@_����n\0���Z�Bz\0 �\0�DL\0AL���\0��x1\01�&b\n\0b\n�M�\0����)\0 �)�7S\0@S\0o\"�\0� �\0�DL\0AL���\0��x1\01�&b\n\0b\n�M�\0����)\0 �)�7S\0@S\0o\"�\0� �\0�DL\0AL���\0��xӌ1�Z��B��I?\0�B��ȥ�R˚�;hX��&���8i����\0�Ѫ\0/��Ԉ5f�+/\0��Y��u6�bj)]��@Q�,����E��ETz����\0WЭ\0/�%�L��O��P\0���xQ-�M�-IL�|�Y�9��d^��4���d�>�/\n��~��������t���?�>\0�=���7���X�dI*�*_��������®�\08��x�a���+�(.����\\ζ�t�1��5���C^�Z�!k֬�3g��$V�Z���){�\0@\Zb\n�-,(f��˗�0do\0HCL�e�֭s��5cJ$���\0�1�K�c��\r\0Ɉ)��d�Y3�T�2\0h��x��\0AL<�0�T*����F��D\"�5�D\"����@\0���Hf�3�T�j�R�Phݺu|��V�)�4������3�R�@���\0�1��0�x<^~��\'?�io��[^�ꡇ���-�F˿�\0�1h�l6k;����?<r��X~|�:s���x�����*CCC�w\0�EL\Z*�ɘ	�J�H�z@����zغ�����C\0�\"b\n�8�a��Gyt��\ZJi�_�f@�Ω�! \0M��4N,�2Jo�k�(�ڽg������p8,{�\0�-��AR��,ϣ���/�h����G���+�)@��B!��(��(Ųާ����>\0M��4B2����z��IGb����?�W����\0�<b\n��p���#�XO?�Lq�����w\0�GL\\�����8u*Ū[ny�������w\0FL\\�H$�O�8�Q̺���+��씽�\0�0b\nຕ+W:���ڼ�������e�(\08���.����/��xL9r���Uo�w\0FL\\g}y��A�c�Y�_d�(\08������p������/{G�a�5�u�`�#^=xЍ�b���;\n\0�����4e��(gΞ�S\04+b\n�x<^Lx�	�cʫW\n�d�(\08��������$V����1�ѵk�+��b�w\0FL\\�N���e.�8S/^\\\\y\"����\0�0b\n����_i�ۻ���b}i�)����K\0p1h����b�hkks��ʷＳ��h4*{�y��r����&N}e���;�S)CCC�w\0�GL\Z����)|>��?�|��Q+��\\�R���+�)@㴷����0f��G��ڬUe�Y�{\0� �\0���dZ[[�xqm�����VF��|����w\0�BL\Z�L�J̐Q��m۾�z�����#{�\0�E���R��uN��ٟ�_x���(w/_�R����S\0	��������C��mB3���\':::J6S��\0�1�#��uuuY��fѢE��*��Y\0� �\02����Ä3\n���7\0\Z���gF2�4�J(�E�@ �F׭[�\0\Z\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�\"�\0\0\0�����A�^\0\0\0\0IEND�B`�',0),('503',1,'leaveBill2.bpmn','501','<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<definitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns:activiti=\"http://activiti.org/bpmn\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" typeLanguage=\"http://www.w3.org/2001/XMLSchema\" expressionLanguage=\"http://www.w3.org/1999/XPath\" targetNamespace=\"http://www.activiti.org/test\">\n  <process id=\"BusLeave\" name=\"请假流程\" isExecutable=\"true\">\n    <startEvent id=\"startevent1\" name=\"Start\"></startEvent>\n    <userTask id=\"usertask1\" name=\"提交申请\" activiti:assignee=\"${inputUser}\" activiti:formKey=\"workflowAction_audit.action\"></userTask>\n    <sequenceFlow id=\"flow1\" sourceRef=\"startevent1\" targetRef=\"usertask1\"></sequenceFlow>\n    <userTask id=\"usertask2\" name=\"经纪人审批\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow2\" sourceRef=\"usertask1\" targetRef=\"usertask2\"></sequenceFlow>\n    <userTask id=\"usertask3\" name=\"老总审批\" activiti:formKey=\"workflowAction_audit.action\">\n      <extensionElements>\n        <activiti:taskListener event=\"create\" class=\"cn.itcast.ssh.utils.ManagerTaskHandler\"></activiti:taskListener>\n      </extensionElements>\n    </userTask>\n    <sequenceFlow id=\"flow3\" name=\"批准\" sourceRef=\"usertask2\" targetRef=\"usertask3\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <endEvent id=\"endevent1\" name=\"End\"></endEvent>\n    <sequenceFlow id=\"flow4\" name=\"批准\" sourceRef=\"usertask3\" targetRef=\"endevent1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'批准\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow5\" name=\"驳回\" sourceRef=\"usertask2\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n    <sequenceFlow id=\"flow6\" name=\"驳回\" sourceRef=\"usertask3\" targetRef=\"usertask1\">\n      <conditionExpression xsi:type=\"tFormalExpression\"><![CDATA[${outcome==\'驳回\'}]]></conditionExpression>\n    </sequenceFlow>\n  </process>\n  <bpmndi:BPMNDiagram id=\"BPMNDiagram_BusLeave\">\n    <bpmndi:BPMNPlane bpmnElement=\"BusLeave\" id=\"BPMNPlane_BusLeave\">\n      <bpmndi:BPMNShape bpmnElement=\"startevent1\" id=\"BPMNShape_startevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"60.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask1\" id=\"BPMNShape_usertask1\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"140.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask2\" id=\"BPMNShape_usertask2\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"230.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"usertask3\" id=\"BPMNShape_usertask3\">\n        <omgdc:Bounds height=\"55.0\" width=\"105.0\" x=\"255.0\" y=\"327.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNShape bpmnElement=\"endevent1\" id=\"BPMNShape_endevent1\">\n        <omgdc:Bounds height=\"35.0\" width=\"35.0\" x=\"290.0\" y=\"420.0\"></omgdc:Bounds>\n      </bpmndi:BPMNShape>\n      <bpmndi:BPMNEdge bpmnElement=\"flow1\" id=\"BPMNEdge_flow1\">\n        <omgdi:waypoint x=\"307.0\" y=\"95.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"140.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow2\" id=\"BPMNEdge_flow2\">\n        <omgdi:waypoint x=\"307.0\" y=\"195.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"230.0\"></omgdi:waypoint>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow3\" id=\"BPMNEdge_flow3\">\n        <omgdi:waypoint x=\"307.0\" y=\"285.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"327.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow4\" id=\"BPMNEdge_flow4\">\n        <omgdi:waypoint x=\"307.0\" y=\"382.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"307.0\" y=\"420.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow5\" id=\"BPMNEdge_flow5\">\n        <omgdi:waypoint x=\"360.0\" y=\"257.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"475.0\" y=\"257.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"475.0\" y=\"167.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"360.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n      <bpmndi:BPMNEdge bpmnElement=\"flow6\" id=\"BPMNEdge_flow6\">\n        <omgdi:waypoint x=\"255.0\" y=\"354.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"355.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"265.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"142.0\" y=\"167.0\"></omgdi:waypoint>\n        <omgdi:waypoint x=\"255.0\" y=\"167.0\"></omgdi:waypoint>\n        <bpmndi:BPMNLabel>\n          <omgdc:Bounds height=\"14.0\" width=\"24.0\" x=\"10.0\" y=\"0.0\"></omgdc:Bounds>\n        </bpmndi:BPMNLabel>\n      </bpmndi:BPMNEdge>\n    </bpmndi:BPMNPlane>\n  </bpmndi:BPMNDiagram>\n</definitions>',0);

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

insert  into `act_re_deployment`(`ID_`,`NAME_`,`CATEGORY_`,`DEPLOY_TIME_`) values ('401','请假电子流',NULL,'2015-06-24 21:58:08'),('501','请假流程',NULL,'2015-06-24 22:45:58');

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

insert  into `act_re_procdef`(`ID_`,`REV_`,`CATEGORY_`,`NAME_`,`KEY_`,`VERSION_`,`DEPLOYMENT_ID_`,`RESOURCE_NAME_`,`DGRM_RESOURCE_NAME_`,`DESCRIPTION_`,`HAS_START_FORM_KEY_`,`SUSPENSION_STATE_`) values ('BusLeave:1:504',1,'http://www.activiti.org/test','请假流程','BusLeave',1,'501','leaveBill2.bpmn','leaveBill2.png',NULL,0,1),('LeaveBill:1:404',1,'http://www.activiti.org/test','LeaveBillProcess','LeaveBill',1,'401','leaveBill.bpmn','leaveBill.png',NULL,0,1);

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

insert  into `applyform`(`id`,`type`,`content`,`remark`,`applyDate`,`username`,`state`) values (1,1,'请假回家','回家探亲','2015-06-23 22:01:29','admin',0),(2,1,'出差','国外出差','2015-06-23 22:01:55','admin',0);

/*Table structure for table `applytype` */

DROP TABLE IF EXISTS `applytype`;

CREATE TABLE `applytype` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `applytype` */

insert  into `applytype`(`id`,`type`,`remark`) values (1,'请假申请',NULL),(2,'生产任务',NULL);

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

insert  into `busleave`(`id`,`days`,`content`,`remark`,`leaveDate`,`state`,`username`) values (7,4,'请假回家','df','2015-06-24 22:57:02',0,'admin'),(8,1,'请假外出','外出采购','2015-06-24 22:58:05',0,'admin'),(10,2,'请假回家','啊','2015-06-24 23:29:41',0,'admin');

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

insert  into `device`(`id`,`deviceName`,`deviceVersion`,`deviceType`,`deviceCount`,`ischeckout`,`manufacturers`,`manufacturersPhone`,`productDate`,`outDate`,`deviceStatus`,`remark`) values (4,'电阻','v0001','0',300,0,'利尔达','13888888888','2015-06-13 16:50:41','2015-06-10 21:57:40','0','用于………………'),(5,'显示器','050120001150112','1',23,1,'三星','13999999999','2015-03-13 12:57:37','2017-03-13 12:57:37','1','sdvsdvsdvds'),(7,'主板','v111110909','1',13,0,'技嘉','02988888888','2015-03-13 12:57:37','2017-03-13 12:57:37','0','aaaaaaaaaaaaaaa'),(8,'电池','dc0000021','0',23,0,'三星','13999999999','2015-03-13 12:57:37','2017-03-13 12:57:37','0','aaa');

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

insert  into `log`(`id`,`username`,`module`,`action`,`actionTime`,`userIP`,`operTime`) values (1,'admin','资源管理','update角色的权限','117','10.108.1.58','2015-06-08 19:21:58'),(2,'admin','资源管理','update角色的权限','54','10.108.1.58','2015-06-08 19:21:58'),(3,'admin','角色管理','update用户的角色','66','192.168.1.104','2015-06-08 19:21:58'),(4,'admin','资源管理','update角色的权限','163','192.168.1.104','2015-06-08 23:25:20'),(5,'admin','资源管理','update角色的权限','163','192.168.1.104','2015-06-08 23:26:05'),(6,'admin','资源管理','update角色的权限','107','192.168.1.104','2015-06-09 21:38:48'),(7,'admin','角色管理','update用户的角色','5','192.168.1.104','2015-06-09 21:39:19'),(8,'admin','角色管理','update用户的角色','4','192.168.1.104','2015-06-09 21:39:29'),(9,'admin','用户管理','update操作','8','192.168.1.104','2015-06-09 21:40:09'),(10,'admin','角色管理','update用户的角色','25','192.168.1.104','2015-06-09 21:40:09'),(11,'admin','用户管理','update操作','4','192.168.1.104','2015-06-09 21:40:21'),(12,'admin','角色管理','update用户的角色','4','192.168.1.104','2015-06-09 21:40:21'),(13,'admin','资源管理','update角色的权限','29','192.168.1.104','2015-06-09 21:40:30'),(14,'test','角色管理','update用户的角色','5','192.168.1.104','2015-06-09 21:40:56'),(15,'admin','角色管理','update用户的角色','58','192.168.1.104','2015-06-09 21:41:43'),(16,'admin','角色管理','update用户的角色','3','192.168.1.104','2015-06-09 21:41:50'),(17,'admin','资源管理','update角色的权限','166','192.168.1.104','2015-06-09 22:01:57'),(18,'admin','资源管理','update角色的权限','147','192.168.1.104','2015-06-09 22:04:00'),(19,'test','资源管理','update角色的权限','66','192.168.1.104','2015-06-09 22:25:02'),(20,NULL,NULL,'save操作','-1434180998219',NULL,'2015-06-13 15:36:38'),(21,'admin','用户管理','save操作','76','192.168.0.101','2015-06-13 15:39:02'),(22,NULL,NULL,'save操作','-1434182270821',NULL,'2015-06-13 15:57:50'),(23,NULL,NULL,'save操作','-1434182299046',NULL,'2015-06-13 15:58:19'),(24,NULL,NULL,'save操作','-1434182589706',NULL,'2015-06-13 16:03:09'),(25,NULL,NULL,'save操作','-1434182615611',NULL,'2015-06-13 16:03:35'),(26,NULL,NULL,'save操作','-1434185202623',NULL,'2015-06-13 16:46:42'),(27,'admin',NULL,'save操作','4','192.168.0.101','2015-06-13 16:47:04'),(28,NULL,NULL,'save操作','-1434186372155',NULL,'2015-06-13 17:06:12'),(29,'admin',NULL,'save操作','6','192.168.0.101','2015-06-13 17:07:52'),(30,NULL,'用户管理','delete操作','-1434203880040',NULL,'2015-06-13 21:58:00'),(31,NULL,'用户管理','delete操作','-1434205838767',NULL,'2015-06-13 22:30:38'),(32,NULL,'用户管理','delete操作','-1434207715405',NULL,'2015-06-13 23:01:55'),(33,'admin',NULL,'delete操作','172','192.168.1.104','2015-06-13 23:04:05'),(34,NULL,NULL,'save操作','-1434210585289',NULL,'2015-06-13 23:49:45'),(35,NULL,NULL,'save操作','-1434210656783',NULL,'2015-06-13 23:50:56'),(36,'admin',NULL,'save操作','48','192.168.1.104','2015-06-13 23:51:51'),(37,'admin','资源管理','update操作','63','192.168.1.104','2015-06-17 19:54:35'),(38,'admin','资源管理','update操作','17','192.168.1.104','2015-06-17 19:54:59'),(39,'admin','资源管理','update操作','47','192.168.1.104','2015-06-17 19:57:41'),(40,'admin','资源管理','update操作','48','192.168.1.104','2015-06-17 20:00:50'),(41,'admin','资源管理','update操作','62','192.168.1.104','2015-06-17 20:01:23'),(42,'admin','资源管理','update操作','48','192.168.1.104','2015-06-17 20:02:38'),(43,'admin','资源管理','save操作','79','192.168.1.104','2015-06-17 20:03:15'),(44,'admin','资源管理','delete操作','31','192.168.1.104','2015-06-17 20:03:24'),(45,'admin','资源管理','save操作','31','192.168.1.104','2015-06-17 20:03:41'),(46,'admin','资源管理','save操作','47','192.168.1.104','2015-06-17 20:03:56'),(47,'admin','资源管理','delete操作','31','192.168.1.104','2015-06-17 20:04:03'),(48,'admin','资源管理','delete操作','0','192.168.1.104','2015-06-17 20:04:03'),(49,'admin','资源管理','update操作','48','192.168.1.104','2015-06-17 20:06:06'),(50,'admin','资源管理','update操作','48','192.168.1.104','2015-06-17 20:06:18'),(51,'admin','资源管理','delete操作','48','192.168.1.104','2015-06-17 20:06:59'),(52,'admin','资源管理','delete操作','0','192.168.1.104','2015-06-17 20:06:59'),(53,'admin','资源管理','update操作','28','192.168.1.104','2015-06-17 20:07:25'),(54,'admin','资源管理','update操作','51','192.168.1.104','2015-06-17 20:08:00'),(55,'admin','资源管理','update操作','47','192.168.1.104','2015-06-17 20:08:09'),(56,'admin','资源管理','update操作','0','192.168.1.104','2015-06-17 20:08:52'),(57,'admin','资源管理','update操作','15','192.168.1.104','2015-06-17 20:09:22'),(58,'admin','资源管理','update操作','17','192.168.1.104','2015-06-17 20:09:34'),(59,'admin','资源管理','update操作','17','192.168.1.104','2015-06-17 20:09:54'),(60,'admin','资源管理','update操作','2','192.168.1.104','2015-06-17 20:23:52'),(61,'admin','资源管理','update操作','59','192.168.1.104','2015-06-17 20:24:24'),(62,'admin','资源管理','update操作','6','192.168.1.104','2015-06-17 20:27:55'),(63,'admin','资源管理','save操作','0','192.168.1.104','2015-06-18 21:36:46'),(64,'admin','资源管理','update操作','15','192.168.1.104','2015-06-18 21:41:48'),(65,'admin','资源管理','update角色的权限','157','192.168.1.104','2015-06-18 22:27:59'),(66,'admin','资源管理','update角色的权限','172','192.168.1.104','2015-06-18 22:35:10'),(67,NULL,NULL,'save操作','-1434720050453',NULL,'2015-06-19 21:20:50'),(68,'admin','资源管理','update操作','18','192.168.1.104','2015-06-19 21:21:40'),(69,'admin','资源管理','delete操作','3','192.168.1.104','2015-06-19 21:22:21'),(70,'admin','资源管理','delete操作','2','192.168.1.104','2015-06-19 21:22:21'),(71,NULL,NULL,'save操作','-1434947783393',NULL,'2015-06-22 12:36:23'),(72,NULL,NULL,'save操作','-1434948439540',NULL,'2015-06-22 12:47:19'),(73,'admin',NULL,'save操作','432','192.168.1.104','2015-06-23 20:25:19'),(74,'admin',NULL,'save操作','392','192.168.1.104','2015-06-23 20:45:50'),(75,'admin',NULL,'delete操作','130','192.168.1.104','2015-06-23 20:53:43'),(76,'admin',NULL,'save操作','412','192.168.1.104','2015-06-23 21:32:14'),(77,'admin',NULL,'delete操作','219','192.168.1.104','2015-06-24 21:37:29'),(78,'admin',NULL,'delete操作','47','192.168.1.104','2015-06-24 21:37:31'),(79,'admin',NULL,'save操作','891','192.168.1.104','2015-06-24 21:37:51'),(80,'admin',NULL,'save操作','391','192.168.1.104','2015-06-24 21:58:09'),(81,'admin',NULL,'save操作','93','192.168.1.104','2015-06-24 22:19:49'),(82,'admin',NULL,'save操作','0','192.168.1.104','2015-06-24 22:24:10'),(83,'admin',NULL,'save操作','0','192.168.1.104','2015-06-24 22:24:36'),(84,'admin',NULL,'save操作','0','192.168.1.104','2015-06-24 22:25:19'),(85,'admin',NULL,'save操作','94','192.168.1.104','2015-06-24 22:30:46'),(86,NULL,NULL,'save操作','-1435156346581',NULL,'2015-06-24 22:32:26'),(87,NULL,NULL,'save操作','-1435156496437',NULL,'2015-06-24 22:34:56'),(88,'admin',NULL,'delete操作','282','192.168.1.104','2015-06-24 22:45:47'),(89,'admin',NULL,'save操作','437','192.168.1.104','2015-06-24 22:45:59'),(90,'admin',NULL,'save操作','38','192.168.1.104','2015-06-24 22:48:32'),(91,'admin',NULL,'save操作','47','192.168.1.104','2015-06-24 22:49:20'),(92,'admin',NULL,'save操作','47','192.168.1.104','2015-06-24 22:51:49'),(93,'admin',NULL,'save操作','61','192.168.1.104','2015-06-24 22:54:09'),(94,NULL,NULL,'save操作','-1435157706151',NULL,'2015-06-24 22:55:06'),(95,'admin',NULL,'save操作','0','192.168.1.104','2015-06-24 22:55:44'),(96,'admin',NULL,'save操作','47','192.168.1.104','2015-06-24 22:56:19'),(97,'admin',NULL,'save操作','16','192.168.1.104','2015-06-24 22:57:02'),(98,'admin',NULL,'save操作','0','192.168.1.104','2015-06-24 22:58:05'),(99,'admin',NULL,'save操作','251','192.168.1.104','2015-06-24 23:26:37'),(100,'admin',NULL,'save操作','171','192.168.1.104','2015-06-24 23:29:48');

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

insert  into `resources`(`id`,`name`,`parentId`,`resKey`,`type`,`resUrl`,`level`,`description`) values (1,'安全管理',1010,'sys_user','0','user',1,'用户、权限管理'),(2,'用户管理',1,'sys_user_find','1','/background/user/query.html',2,'用户增加、权限……操作'),(3,'新增用户',2,'sys_user_addUI','2','/background/user/addUI.html',3,'新增用户'),(5,'角色管理',1,'sys_role_find','1','/background/role/query.html',5,'角色增删改、权限设置'),(7,'资源管理',1,'sys_resc_find','1','/background/resources/query.html',7,'资源列表'),(8,'添加资源',7,'sys_resc_addUI','2','/background/resources/addUI.html',8,'添加资源'),(11,'新增角色',5,'sys_role_add','2','/background/role/addUI.html',5,'新增角色'),(22,'登陆信息管理',1010,'login','0','login',20,'登陆信息管理'),(23,'用户登录记录',22,'log_list','1','/background/userLoginList/query.html',21,'用户登录记录'),(39,'日志管理',1010,'log','0','log',30,'日志管理'),(40,'操作日志管理',39,'log_find','1','/background/log/query.html',31,'操作日志管理'),(41,'分配角色',2,'sys_user_fenpeirole','2','sys_user_fenpeirole',32,'分配角色'),(42,'分配权限',2,'sys_user_permissions','2','sys_user_permissions',33,'分配权限'),(43,'编辑用户',2,'sys_user_edit','2','/background/user/getById.html',34,'编辑'),(44,'删除用户',2,'sys_user_delete','2','/background/user/deleteById.html',36,'删除用户'),(45,'分配权限',2,'sys_role_permissions','2','sys_role_permissions',37,'分配权限'),(46,'显示详细信息',5,'sys_role_show','2','sys_role_show',39,'显示详细信息'),(47,'编辑角色',5,'sys_role_edit','2','/background/role/getById.html',40,'编辑角色'),(48,'删除角色',5,'sys_role_delete','2','/background/role/deleteById.html',41,'删除角色'),(49,'显示详细信息',7,'sys_res_show','2','sys_res_show',43,'显示详细信息'),(50,'编辑权限资源',7,'sys_res_edit','2','/background/resources/getById.html',44,'编辑权限资源'),(51,'删除权限资源',7,'sys_res_delete','2','/background/resources/deleteById.html',45,'删除权限资源'),(52,'物料管理',1010,'device','0','device',50,'物料管理'),(53,'物料列表',52,'device_manager','1','/background/device/list.html',51,'物料列表'),(71,'任务管理',1010,'task','0','task',70,'任务管理'),(72,'部署任务',71,'task_deploy','1','/background/workflow/deployHome.html',71,'部署任务'),(73,'待我审批',71,'task_myself','1','/background/workflow/myTaskList.html',72,'我的任务'),(74,'填写申请',71,'task_apply','1','/background/workflow/formTemplateList.html',73,'填写申请任务'),(75,'申请查询',71,'task_manager','1','/background/workflow/myApplyList.html',74,'归档任务'),(81,'统计分析',1010,'statistics','0','statistics',80,'统计分析'),(82,'报表分析',81,'statistics_manager','1','/background/noDevelop.html',81,'设备列表');

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

insert  into `role`(`id`,`name`,`roleKey`,`description`,`enable`) values (1,'用户角色','ROLE_USER','用户角色',1),(3,'删除','ROLE_DELETE','删除',0),(5,'55','55','55',1);

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

insert  into `serverinfo`(`id`,`cpuUsage`,`setCpuUsage`,`jvmUsage`,`setJvmUsage`,`ramUsage`,`setRamUsage`,`email`,`operTime`,`mark`) values (1,'9.3','20','64.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(2,'0.8','20','60.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(3,'1.5','20','59.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(4,'0.7','20','57.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(5,'2.3','20','57.0','80','75.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：75.0%,超出预设值  60%</font>'),(6,'17.9','20','57.0','80','77.0','80','1212614949@qq.com','2015-06-08 19:21:58','<font color=\'red\'>内存当前：77.0%,超出预设值  60%</font>');

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

insert  into `user`(`userId`,`userName`,`userPassword`,`userNickname`,`userRealname`,`userAge`,`userSex`,`userAddress`,`userPhone`,`userMail`,`userQQ`,`regTime`,`lastLogintime`,`level`,`province`,`city`,`bankName`,`branchBank`,`subbranchBank`,`openBankName`,`bankAccountName`,`bankAccount`,`accountType`,`pay`,`mark`,`status`,`parentNumber`) values (1,'admin','admin','admin','admin',10,'男','枯霜下要孤','0253526','jnfjfjj@163.com','32432','2015-06-08 19:21:58','0000-00-00 00:00:00',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'test','111111','7','7',7,'男','7','7','7','7','2015-06-09 21:40:21','0000-00-00 00:00:00',1,'7','7','7',NULL,'7',NULL,'7','7','企业账号','是','7','待审核',''),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2015-06-13 15:39:02','0000-00-00 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
