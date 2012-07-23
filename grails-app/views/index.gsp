<!doctype html>
<html>
	<head>



        <g:javascript src="/JQuery/jquery-1.7.2.min.js"  />
        <g:javascript src="/JQuery/jquery-ui-1.8.21.custom.min.js"  />
        <g:javascript src="/JsPlumb/jsPlumb-1.3.10-all-min.js"  />
        <script type="text/javascript">
            $(document).ready(function(){
                // do some common init
                alert("Hola Mundo con jQuery!");
            })
        </script>

        <script>
            $(function() {
                $( "#draggable" ).draggable();
                $( "#droppable" ).droppable({
                    drop: function( event, ui ) {
                        $( this )
                                .addClass( "ui-state-highlight" )
                                .find( "p" )
                                .html( "Dropped!" );
                    }
                });
            });
        </script>

		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
		<style>
			#draggable { width: 150px; height: 150px; padding: 0.5em; }
		</style>

		<script>

            jsPlumb.bind("ready", function() {
                // chrome fix.
                document.onselectstart = function () { return false; };

                var newMode = jsPlumb.setRenderMode(jsPlumb.CANVAS);

                // explanation div is draggable
                $("#explanation,.renderMode").draggable();

                var aConnection = jsPlumb.connect({source:"window1", target:"window2"});

                // make all the window divs draggable
                jsPlumb.draggable(jsPlumb.getSelector(".window"));

            });


            // this is overridden by the YUI demo.
            windows.jsPlumbInstance {
                createDisc : function() {
                var d = document.createElement("div");
                d.className = "bigdot";
                document.getElementById("demo").appendChild(d);
                var id = '' + ((new Date().getTime())), _d = jsPlumb.CurrentLibrary.getElementObject(d);
                jsPlumb.CurrentLibrary.setAttribute(_d, "id", id);
                var w = screen.width - 162, h = screen.height - 162;
                var x = (0.2 * w) + Math.floor(Math.random()*(0.5 * w));
                var y = (0.2 * h) + Math.floor(Math.random()*(0.6 * h));
                d.style.top= y + 'px';
                d.style.left= x + 'px';
                return {d:d, id:id};
                },
                addDisc : function() {
                    var info = jsPlumbDemo.createDisc();
                    var e = prepare(info.id);
                    jsPlumb.draggable(info.id);
                    discs.push(info.id);
                },
            };




        </script>


	</head>
	<body>


    <div class="demo">

        <div id="draggable" class="ui-widget-content">
            <p>Drag me to my target</p>
        </div>

        <div id="droppable" class="ui-widget-header">
            <p>Drop here</p>
        </div>

    </div><!-- End demo -->



    <div class="demo-description" style="display: none; ">
        <p>Enable any DOM element to be droppable, a target for draggable elements.</p>
    </div><!-- End demo-description -->

    <div style="position:relative;margin-top:100px;">
        <div id="demo">
            <div class="window" id="window1"><strong>1</strong><br/><br/></div>
            <div class="window" id="window2"><strong>2</strong><br/><br/></div>
            <div class="window" id="window3"><strong>3</strong><br/><br/></div>
            <div class="window" id="window4"><strong>4</strong><br/><br/></div>
        </div>
    </div>



	</body>
</html>
