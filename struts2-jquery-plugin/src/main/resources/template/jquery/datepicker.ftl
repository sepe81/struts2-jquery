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
<#if attributes.parentTheme?if_exists == 'xhtml' || attributes.parentTheme?if_exists == 'css_xhtml' || attributes.parentTheme?if_exists == 'simple'>
	<#if attributes.parentTheme == 'xhtml'>
		<#include "/${attributes.templateDir}/xhtml/controlheader.ftl" />
	</#if>
	<#if attributes.parentTheme == 'css_xhtml'>
		<#include "/${attributes.templateDir}/css_xhtml/controlheader.ftl" />
	</#if>
	<#if attributes.inline?default(false)>
		<#include "/${attributes.templateDir}/simple/hidden.ftl" />
		<div id="${attributes.id}_inline"
		<#if attributes.cssStyle?if_exists != "">
		 style="${attributes.cssStyle}"<#rt/>
		</#if>
		<#if attributes.cssClass?if_exists != "">
		 class="${attributes.cssClass}"<#rt/>
		</#if>
		<#include "/${attributes.templateDir}/simple/scripting-events.ftl" />
		<#include "/${attributes.templateDir}/simple/common-attributes.ftl" />
		<#include "/${attributes.templateDir}/simple/dynamic-attributes.ftl" />
		>
		</div>
	<#else>
		<#include "/${attributes.templateDir}/simple/text.ftl" />
	</#if>
	<#if attributes.parentTheme == 'xhtml'>
		<#include "/${attributes.templateDir}/xhtml/controlfooter.ftl" />
	</#if>
	<#if attributes.parentTheme == 'css_xhtml'>
		<#include "/${attributes.templateDir}/css_xhtml/controlfooter.ftl" />
	</#if>
<#else>
	<#if attributes.inline?default(false)>
		<#include "/${attributes.templateDir}/simple/hidden.ftl" />
		<div id="${attributes.id}_inline"
		<#if attributes.cssStyle?if_exists != "">
		 style="${attributes.cssStyle}"<#rt/>
		</#if>
		<#if attributes.cssClass?if_exists != "">
		 class="${attributes.cssClass}"<#rt/>
		</#if>
		<#include "/${attributes.templateDir}/simple/scripting-events.ftl" />
		<#include "/${attributes.templateDir}/simple/common-attributes.ftl" />
		<#include "/${attributes.templateDir}/simple/dynamic-attributes.ftl" />
		>
		</div>
	<#else>
		<#include "/${attributes.templateDir}/${attributes.parentTheme}/text.ftl" />
	</#if>
</#if>
