<!doctype html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 0 1em 1em;
				padding: 0em 1em 1em;
				width: 14em;
				float: left;
				 -moz-box-shadow: 0px 0px 1.25em #ccc;
			  -webkit-box-shadow: 0px 0px 1.25em #ccc;
					  box-shadow: 0px 0px 1.25em #ccc;
			  -moz-border-radius: 0.6em;
		   -webkit-border-radius: 0.6em;
				   border-radius: 0.6em;
			}
			.boxshadow #status {
				margin: 0 2em 1em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 1em 0 0.3em;
			}

			#page-body {
				margin: 0 1em 1.25em 16em;
			}

			.boxshadow #page-body {
				margin-left: 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body, .boxshadow #page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
	</head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:set var="pluginManager" value="${applicationContext.getBean('pluginManager')}"/>
				<g:each var="plugin" in="${pluginManager.allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div id="page-body" role="main">
			<h1>Welcome to Grails</h1>
			<p>This is a sandbox application for the development of changes to scaffolding targetted at Grails 1.4.</p>
			<p>The code for this application is hosted on <a href="https://github.com/robfletcher/grails-scaffolding">GitHub</a>.
			Please feel free to fork, raise issues or contact me on <a href="http://twitter.com/rfletcherEW">Twitter</a>
			with suggestions.</p>
			<p>Below is a list of controllers that are currently deployed in this application,
			click on each to execute its default action:</p>

			<div id="controller-list" role="navigation">
				<h2>Available Controllers:</h2>
				<ul>
					<g:each var="c" in="${grailsApplication.controllerClasses.sort { it.fullName } }">
						<li class="controller"><g:link controller="${c.logicalPropertyName}">${c.fullName}</g:link></li>
					</g:each>
				</ul>
			</div>
		</div>
	</body>
</html>
