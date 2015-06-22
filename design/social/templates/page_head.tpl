<head>

    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,600,600italic,700,700italic,300italic" rel="stylesheet" type="text/css">

    <meta charset="utf-8">

    <title>{$social_pagedata.site_title}</title>

    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    {ezcss_load( array(
        'animate.css',
        'style.css',
        'custom.css',
        'font-awesome.min.css',
        'font-awesome-animation.min.css',
        'debug.css',
        'websitetoolbar.css'
    ) )}

    {ezscript_load(array(
        'modernizr.custom.48287.js',
        'ezjsc::jquery',
        'bootstrap.min.js',
        'isotope/jquery.isotope.min.js',
        'jquery.ui.totop.js',
        'easing.js',
        'wow.min.js',        
        'restart_theme.js',
        'collapser.js',
        'placeholders.min.js'
    ))}
    
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>    
    <script src="{'javascript/respond.min.js'|ezdesign(no)}"></script>
    <![endif]-->

    {if $social_pagedata.head_images["apple-touch-icon-114x114-precomposed"]}
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="{$social_pagedata.head_images["apple-touch-icon-114x114-precomposed"]}" />
    {/if}
    {if $social_pagedata.head_images["apple-touch-icon-72x72-precomposed"]}
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="{$social_pagedata.head_images["apple-touch-icon-72x72-precomposed"]}" />
    {/if}
    {if $social_pagedata.head_images["apple-touch-icon-57x57-precomposed"]}
    <link rel="apple-touch-icon-precomposed" href="{$social_pagedata.head_images["apple-touch-icon-57x57-precomposed"]}" />
    {/if}
    {if $social_pagedata.head_images["favicon"]}
    <link rel="shortcut icon" href="{$social_pagedata.head_images["favicon"]}">
    {/if}
</head>
