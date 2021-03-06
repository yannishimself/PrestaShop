{*
* 2007-2015 PrestaShop
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
* @author    PrestaShop SA <contact@prestashop.com>
* @copyright 2007-2015 PrestaShop SA
* @license   http://opensource.org/licenses/afl-3.0.php Academic Free License (AFL 3.0)
* International Registered Trademark & Property of PrestaShop SA
*}
<div class="content container-fluid">
  <div class="row">
    <div class="col-md-12">
      <div class="kpi-container">
        {if $refresh}
          <div class="kpi-refresh" onclick="refresh_kpis(true);">
            <i class="material-icons">refresh</i>
          </div>
        {/if}
        <div class="row">
          {assign var='col' value=(int)(12 / $kpis|count)}
          {foreach from=$kpis item=i name=kpi}
            {if $smarty.foreach.kpi.iteration > $col+1}
              </div>
              <div class="row">
            {/if}
            <div class="col-md-{$col}">{$i}</div>
          {/foreach}
        </div>
      </div>
    </div>
  </div>
</div>
