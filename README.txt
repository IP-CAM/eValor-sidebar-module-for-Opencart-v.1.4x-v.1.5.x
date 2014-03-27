Módulo Opencart para eValor
===========================

Este módulo integra el módulo sidebar eValor en su tienda online. Este módulo es
fácil de instalar. Para eso puede utilizar las instrucciones.

Este módulo ha sido optimizado para la versión de Opencart 1.5.4 y superiores.


Instrucciones de instalación
----------------------------

    1. Suba los ficheros de la carpeta upload al servidor web.

    2. El módulo ahora se puede activar en su panel de control de OpenCart.

    3. Introduzca el número ID de su tienda online y el código API y configure
    el módulo. 

    4. Si quiere enviar invitaciones debe configurar un cronjob. El cronjob se
    debe efectuar cada tarde con la url:

      http://www.su-tienda-online.es/index.php?route=module/webwinkelkeur/cron

    Para llevar a cabo este proceso ponga la siguiente regla en su crontab.

      30 23 * * * wget --quiet -O- 'http://www.su-tienda-online.es/index.php?route=module/webwinkelkeur/cron'

