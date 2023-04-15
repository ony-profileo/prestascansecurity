{*
 * Copyright 2023 Profileo Group <contact@profileo.com> (https://www.profileo.com/fr/)
 * 
 * For questions or comments about this software, contact Maxime Morel-Bailly <security@prestascan.com>
 * 
 * Complete list of authors and contributors to this software can be found in the AUTHORS file.
 * List of required attribution notices and acknowledgements for third-party software can be found in the NOTICE file.
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *}
{assign var='criticity' value=$alert_modules_vulnerability[0].criticity}
<p class="title-alert">
    <strong>{l s='SECURITY ALERT - IMMEDIATE DANGER' mod='prestascansecurity'}</strong>
</p>
<p>{l s='New vulnerability detected in the module' mod='prestascansecutiry'} <strong>{$alert_modules_vulnerability[0].name}</strong></p>
<ul>
    <li>{l s='Criticity' mod='prestascansecurity'} : {$criticity|ucfirst}</li>
    <li>{l s='Type' mod='prestascansecurity'} : {$alert_modules_vulnerability[0].vulnerability_type}</li>
    <li>{l s='Description' mod='prestascansecurity'} : {$alert_modules_vulnerability[0].description}</li>
</ul>
<p class='button-center'><a class="btn-generate-report btn btn-default btn-action-module-dash" data-action="generateModulesReport" href="{$module_link}"><span>{l s='Resolve this' mod='prestascansecurity'}</span></a></p>
