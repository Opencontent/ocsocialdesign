{def $user_hash  = concat( $current_user.role_id_list|implode( ',' ), ',', $current_user.limited_assignment_value_list|implode( ',' ) )}
{cache-block keys=array( $current_user.contentobject_id, $module_result.uri, $user_hash )}
{def $social_pagedata = social_pagedata()}
<!doctype html>
<html class="no-js" lang="en">

{include uri='design:page_head.tpl'}
{include uri='design:page_head_google_tag_manager.tpl'}
{include uri='design:page_head_google-site-verification.tpl'}

<body>
    {include uri='design:page_body_google_tag_manager.tpl'}
    {include uri='design:page_alert_cookie.tpl'}

    {include uri='design:page_header.tpl'}

{/cache-block}

    {include uri='design:page_banner.tpl'}

<div class="main">
    <div class="container">
        {$module_result.content}

        {if and( $current_user.is_logged_in|not(), $social_pagedata.need_login|not )}
            {include uri='design:page_login.tpl'}
        {/if}

    </div>

{cache-block keys=array( $user_hash )}

    {if is_set( $social_pagedata )|not()}{def $social_pagedata = social_pagedata()}{/if}
    <footer>
        <section id="footer_teasers_wrapper">
            <div class="container">
                <div class="row">
                    <div class="footer_teaser col-sm-6 col-md-6">
                        <h3>{'Contacts'|i18n('ocsocialdesign')}</h3>
                        <p>{attribute_view_gui attribute=$social_pagedata.attribute_contacts}</p>
                    </div>
                    <div class="footer_teaser col-sm-6 col-md-6">
                        <p>{attribute_view_gui attribute=$social_pagedata.attribute_footer}</p>
                    </div>
                </div>
            </div>
        </section>
        <section class="copyright">
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        &copy; {currentdate()|datetime('custom', '%Y')} {$social_pagedata.text_credits}
                    </div>
                </div>
            </div>
        </section>
    </footer>

</div>
{/cache-block}

{if is_set($social_pagedata)|not()}{def $social_pagedata = social_pagedata()}{/if}
{if $social_pagedata.google_analytics_id}
    <script type="text/javascript">
        (function(i,s,o,g,r,a,m){ldelim}i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){ldelim}
                (i[r].q=i[r].q||[]).push(arguments){rdelim},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
        {rdelim})(window,document,'script','https://www.google-analytics.com/analytics.js','ga');
        ga('create', '{$social_pagedata.google_analytics_id}', 'auto');
        ga('set', 'anonymizeIp', true);
        ga('set', 'forceSSL', true);
        ga('send', 'pageview');
    </script>
{/if}

<script>
    {literal}
    $(document).ready(function(){
        $.get({/literal}{'social_user/alert'|ezurl()}{literal}, function(data){
            $('header').prepend(data)
        });
    });
    {/literal}
</script>

<!--DEBUG_REPORT-->
</body>
</html>
