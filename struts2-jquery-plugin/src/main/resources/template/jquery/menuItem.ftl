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
<li
<#if attributes.id?if_exists != "">
		id="${attributes.id}"<#rt/>
</#if>
<#if attributes.cssStyle?if_exists != "">
		style="${attributes.cssStyle}"<#rt/>
</#if>
<#if attributes.cssClass?if_exists != "">
		class="${attributes.cssClass}"<#rt/>
</#if>
<#if attributes.type?if_exists != "">
		rel="${attributes.type}"<#rt/>
</#if>
<#include "/${attributes.templateDir}/simple/scripting-events.ftl" />
<#include "/${attributes.templateDir}/simple/common-attributes.ftl" />
<#include "/${attributes.templateDir}/simple/dynamic-attributes.ftl" />
>
<div>
<#if !attributes.targets?exists && attributes.href?if_exists != "">
<a href="${attributes.href?string}">
<#elseif attributes.targets?exists && attributes.href?if_exists != "">
<a href="javascript:void(0)" >
</#if>
<#if attributes.menuIcon?if_exists != "">
<span class="ui-icon ${attributes.menuIcon}"></span><#rt/>
</#if>
<#if attributes.title?if_exists != "">
${attributes.title}<#rt/>
</#if>
<#if attributes.href?if_exists != "">
</a><#rt/>
</#if>
</div>