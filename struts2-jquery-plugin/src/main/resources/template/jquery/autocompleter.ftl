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
<#if attributes.parentTheme == 'xhtml' || attributes.parentTheme == 'css_xhtml' || attributes.parentTheme == 'simple'>
	<#if attributes.parentTheme == 'xhtml'>
		<#include "/${attributes.templateDir}/xhtml/controlheader.ftl" />
	</#if>
	<#if attributes.parentTheme == 'css_xhtml'>
		<#include "/${attributes.templateDir}/css_xhtml/controlheader.ftl" />
	</#if>
		<input type="hidden"
		  <#if attributes.widgetid?if_exists != "">
		    id="${attributes.widgetid}"<#rt/>
		  </#if>
		  <#if attributes.nameValue??>
		    value="<@s.property value="attributes.nameValue"/>"<#rt/>
		  </#if>
		  <#if attributes.widgetname?if_exists != "">
		 	name="${attributes.widgetname}"<#rt/>
		  </#if>
		  <#if attributes.disabled?default(false)>
		    disabled="disabled"<#rt/>
		  </#if>
		/>
	<#if (attributes.list?? && attributes.listKey??) || attributes.selectBox??>
		<#include "/${attributes.templateDir}/simple/select.ftl" />
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
	<input type="hidden"
	  <#if attributes.widgetid?if_exists != "">
	    id="${attributes.widgetid}"<#rt/>
	  </#if>
	  <#if attributes.nameValue??>
	    value="<@s.property value="attributes.nameValue"/>"<#rt/>
	  </#if>
	  <#if attributes.widgetname?if_exists != "">
	 	name="${attributes.widgetname}"<#rt/>
	  </#if>
	  <#if attributes.disabled?default(false)>
	    disabled="disabled"<#rt/>
	  </#if>
	/>
	<#if (attributes.list?? && attributes.listKey??) || attributes.selectBox??>
		<#include "/${attributes.templateDir}/${attributes.parentTheme}/select.ftl" />
  	<#else>
  		<#include "/${attributes.templateDir}/${attributes.parentTheme}/text.ftl" />
  	</#if>
</#if>
