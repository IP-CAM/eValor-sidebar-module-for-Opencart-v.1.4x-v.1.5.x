<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <?php foreach ($error_warning as $error_message): ?>
  <div class="warning"><?php echo $error_message; ?></div>
  <?php endforeach; ?>
  <?php } ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/information.png" alt="" /> eValor</h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button">Guardar</a><a href="<?php echo $cancel; ?>" class="button">Anular</a></div>
    </div>
    <div class="content">
      <form action="" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <tr>
            <td><span class="required">*</span> ID de la tienda online:</td>
            <td><input type="text" name="shop_id" value="<?php echo $shop_id; ?>" /></td>
          </tr>
          <tr>
            <td><span class="required">*</span> Clave API:</td>
            <td><input type="text" name="api_key" value="<?php echo $api_key; ?>" /></td>
          </tr>
          <tr>
            <td>Mostrar sidebar:</td>
            <td>
              <label>
                <input type="radio" name="sidebar" value="1" <?php if($sidebar) echo "checked"; ?> />
                Si
              </label>
              <label>
                <input type="radio" name="sidebar" value="0" <?php if(!$sidebar) echo "checked"; ?> />
                No
              </label>
            </td>
          </tr>
          <tr>
            <td>Posición sidebar:</td>
            <td>
              <label>
                <input type="radio" name="sidebar_position" value="left" <?php if($sidebar_position == 'left') echo "checked"; ?> />
                Izquierda
              </label>
              <label>
                <input type="radio" name="sidebar_position" value="right" <?php if($sidebar_position == 'right') echo "checked"; ?> />
                Derecha
              </label>
            </td>
          </tr>
          <tr>
            <td>
              Altura sidebar:<br/>
              <span class="help">aantal pixels vanaf de bovenkant</span>
            </td>
            <td><input type="text" name="sidebar_top" size="2" value="<?php echo $sidebar_top; ?>" /></td>
          </tr>
          <tr>
            <td>
              Enviar invitaciones:<br />
              <span class="help">solo disponible para socios PLUS</span>
            </td>
            <td>
              <label>
                <input type="radio" name="invite" value="1" <?php if($invite == 1) echo "checked"; ?> />
                Ja, na elke bestelling
              </label><br />
              <label>
                <input type="radio" name="invite" value="2" <?php if($invite == 2) echo "checked"; ?> />
                Ja, alleen bij de eerste bestelling
              </label><br />
              <label>
                <input type="radio" name="invite" value="0" <?php if(!$invite) echo "checked"; ?> />
                Nee, geen uitnodigingen versturen
              </label>
            </td>
          </tr>
          <tr>
            <td>
              Plazo para la invitación:<br/>
              <span class="help">la invitación se envía una vez hayan pasado el número de días indicados</span>
            </td>
            <td><input type="text" name="invite_delay" size="2" value="<?php echo $invite_delay; ?>" /></td>
          </tr>
          <tr>
            <td>Tooltip weergeven:</td>
            <td>
              <label>
                <input type="radio" name="tooltip" value="1" <?php if($tooltip) echo "checked"; ?> />
                Si
              </label>
              <label>
                <input type="radio" name="tooltip" value="0" <?php if(!$tooltip) echo "checked"; ?> />
                No
              </label>
            </td>
          </tr>
          <tr>
            <td>JavaScript-integratie:</td>
            <td>
              <label>
                <input type="radio" name="javascript" value="1" <?php if($javascript) echo "checked"; ?> />
                Ja
              </label>
              <label>
                <input type="radio" name="javascript" value="0" <?php if(!$javascript) echo "checked"; ?> />
                Nee
              </label>
            </td>
          </tr>
        </table>
      </form>
    </div>
  </div>
  <?php if($invite_errors): ?>
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/warning.png" alt="" /> Ha habido algunos errores al enviar las invitaciones</h1>
    </div>
    <div class="content">
      <table>
        <?php foreach($invite_errors as $invite_error): ?>
        <tr>
          <td style="padding-right:10px;"><?php echo date('d-m-Y H:i', $invite_error['time']); ?></td>
          <td>
            <?php if($invite_error['response']): ?>
            <?php echo htmlentities($invite_error['response'], ENT_QUOTES, 'UTF-8'); ?>
            <?php else: ?>
            No se ha podido contactar con el servidor de eValor.
            <?php endif; ?>
          </td>
        </tr>
        <?php endforeach; ?>
      </table>
    </div>
  </div>
  <?php endif; ?>
</div>
<?php echo $footer; ?>
<?php // vim: set sw=2 sts=2 et ft=php :
