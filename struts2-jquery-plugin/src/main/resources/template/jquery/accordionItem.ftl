<#--
/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
-->
	<${attributes.header?default('h3')}
    <#if attributes.tabindex??>
        tabindex="${attributes.tabindex}"<#rt/>
    </#if>
    <#if attributes.disabled?default(false)>
        disabled="disabled"<#rt/>
    </#if>
    <#if attributes.id?if_exists != "">
        id="${attributes.id}"<#rt/>
    </#if>
    <#include "/${attributes.templateDir}/simple/scripting-events.ftl" />
    <#include "/${attributes.templateDir}/simple/common-attributes.ftl" />
    <#include "/${attributes.templateDir}/simple/dynamic-attributes.ftl" />
    ><#rt/>
        <a id="${attributes.id}_a" href="#">
		    ${attributes.title}
        </a>
	</${attributes.header?default('h3')}>
	<div id="${attributes.id}_div"><#rt/>
<#if attributes.value?if_exists != "">
			${attributes.value}
</#if>
