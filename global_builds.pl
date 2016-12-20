@GLOBAL_BUILDS = (
   {
      "dir"         => "zm-native",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-common",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-soap",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-client",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-license-tools",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-license-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-network-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-taglib",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-ajax",
      "ant_targets" => ["publish-local"],
      "stage_cmd"   => undef,
   },
   {
      "dir"         => "zm-milter",
      "ant_targets" => ["publish-local"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-milter/build/dist");
           System("cp -f build/zm-milter*.jar $GLOBAL_BUILD_DIR/zm-milter/build/dist/zm-milter.jar");
      },
   },
   {
      "dir"         => "zm-xmbxsearch-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-xmbxsearch-store/build/dist");
           System("cp -f build/zm-xmbxsearch-store*.jar $GLOBAL_BUILD_DIR/zm-xmbxsearch-store/build/dist/zm-xmbxsearch-store.jar");
      },
   },
   {
      "dir"         => "zm-archive-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-archive-admin-zimlet/build/dist");
           System("cp -f build/zimlet/com_zimbra_archive.zip $GLOBAL_BUILD_DIR/zm-archive-admin-zimlet/build/dist");
      },
   },
   {
      "dir"         => "zm-xmbxsearch-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-xmbxsearch-zimlet/build/dist");
           System("cp -f build/zimlets-network/com_zimbra_xmbxsearch.zip $GLOBAL_BUILD_DIR/zm-xmbxsearch-zimlet/build/dist");
      },
   },
   {
      "dir"         => "zm-ldap-utilities",
      "ant_targets" => ["generate-ldap-config", "-Dis-production=true"],
      "stage_cmd" => sub {
           System("(cd .. && rsync -az --relative zm-ldap-utilities/build/ldap-config/zimbra_mimehandlers.ldif $GLOBAL_BUILD_DIR/)");
           System("(cd .. && rsync -az --relative zm-ldap-utilities/src/ldap/migration $GLOBAL_BUILD_DIR/)");
      },
   },
   {
      "dir"         => "zm-openid-consumer-store",
      "ant_targets" => ["dist-package"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-openid-consumer-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-openid-consumer-store/build/");
      },
   },
   {
      "dir"         => "zm-saml-consumer-store",
      "ant_targets" => ["jar"],
      "stage_cmd" => sub {
           System("mkdir -p build/dist/saml/myonelogin");
           System("cp build/samlextn.jar build/dist/saml");
           System("cp docs/saml/README.txt build/dist/saml");
           System("cp build/tricipherextn.jar build/dist/saml/myonelogin");
           System("cp docs/myonelogin/README.txt build/dist/saml/myonelogin");
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-saml-consumer-store/build/dist");
           System("cp -f -rp build/dist $GLOBAL_BUILD_DIR/zm-saml-consumer-store/build");
      },
   },
   {
      "dir"         => "zm-archive-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-archive-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-archive-store/build");
      },
   },
   {
      "dir"         => "zm-backup-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-backup-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-backup-store/build");
      },
   },
   {
      "dir"         => "zm-voice-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-voice-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-voice-store/build");
      },
   },
   {
      "dir"         => "zm-voice-cisco-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-voice-cisco-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-voice-cisco-store/build");
      },
   },
   {
      "dir"         => "zm-voice-mitel-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-voice-mitel-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-voice-mitel-store/build");
      },
   },
   {
      "dir"         => "zm-clam-scanner-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-clam-scanner-store/build/dist");
           System("cp -f -rp build/zm-clam-scanner-store-*.jar $GLOBAL_BUILD_DIR/zm-clam-scanner-store/build/dist");
      },
   },
   {
      "dir"         => "zm-license-store",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-license-store/build/dist");
           System("cp -f -rp build/zm-license-store-*.jar $GLOBAL_BUILD_DIR/zm-license-store/build/dist");
      },
   },
   {
      "dir"         => "zm-twofactorauth-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-twofactorauth-store/build/dist");
           System("cp -f -p build/zm-twofactorauth-store-*.jar $GLOBAL_BUILD_DIR/zm-twofactorauth-store/build/dist");
      },
   },
   {
      "dir"         => "zm-nginx-lookup-store",
      "ant_targets" => ["publish-local"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-nginx-lookup-store/build/dist");
           System("cp -f -rp build/zm-nginx-lookup-store-*.jar $GLOBAL_BUILD_DIR/zm-nginx-lookup-store/build/dist");
      },
   },
   {
      "dir"         => "zm-ews-stub",
      "ant_targets" => ["dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-ews-stub/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-ews-stub/build");
      },
   },
   {
      "dir"         => "zm-ews-common",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-ews-common/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-ews-common/build");
      },
   },
   {
      "dir"         => "zm-ews-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-ews-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-ews-store/build");
      },
   },
   {
      "dir"         => "zm-sync-common",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-sync-common/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-sync-common/build");
      },
   },
   {
      "dir"         => "zm-sync-store",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-sync-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-sync-store/build");
      },
   },
   {
      "dir"         => "zm-sync-client",
      "ant_targets" => ["publish-local"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-sync-client/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-sync-client/build");
      },
   },
   {
      "dir"         => "zm-sync-tools",
      "ant_targets" => ["publish-local", "dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-sync-tools/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-sync-tools/build");
      },
   },
   {
      "dir"         => "zm-2fa-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-2fa-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-2fa-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-backup-restore-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-backup-restore-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-backup-restore-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-convertd-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-convertd-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-convertd-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-delegated-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-delegated-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-delegated-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-hsm-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-hsm-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-hsm-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-license-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-license-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-license-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-mobile-sync-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-mobile-sync-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-mobile-sync-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-smime-applet",
      "ant_targets" => ["dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-smime-applet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-smime-applet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-smime-cert-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-smime-cert-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-smime-cert-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-uc-admin-zimlets/cisco",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-uc-admin-zimlets/cisco/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-uc-admin-zimlets/cisco/build/zimlet");
      },
   },
   {
      "dir"         => "zm-uc-admin-zimlets/mitel",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-uc-admin-zimlets/mitel/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-uc-admin-zimlets/mitel/build/zimlet");
      },
   },
   {
      "dir"         => "zm-uc-admin-zimlets/voiceprefs",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-uc-admin-zimlets/voiceprefs/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-uc-admin-zimlets/voiceprefs/build/zimlet");
      },
   },
   {
      "dir"         => "zm-ucconfig-admin-zimlet",
      "ant_targets" => ["package-zimlet"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-ucconfig-admin-zimlet/build/zimlet");
           System("cp -f build/zimlet/*.zip $GLOBAL_BUILD_DIR/zm-ucconfig-admin-zimlet/build/zimlet");
      },
   },
   {
      "dir"         => "zm-openoffice-store",
      "ant_targets" => ["build-dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-openoffice-store/build/dist");
           System("cp -f -r build/dist $GLOBAL_BUILD_DIR/zm-openoffice-store/build");
      },
   },
   {
      "dir"         => "zm-network-store",
      "ant_targets" => ["jar"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-network-store/build/dist");
           System("cp -f build/zm-network-store-*.jar $GLOBAL_BUILD_DIR/zm-network-store/build/dist/zimbranetwork.jar");
           System("(cd .. && rsync -az --relative zm-network-store/src/bin $GLOBAL_BUILD_DIR/)");
      },
   },
   {
      "dir"         => "zm-convertd-store",
      "ant_targets" => ["dist"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-convertd-store/build/dist");
           System("cp -f build/dist/lib/ext/zimbraconvertd/zimbraconvertd.jar $GLOBAL_BUILD_DIR/zm-convertd-store/build/dist");
      },
   },
   {
      "dir"         => "zm-store",
      "ant_targets" => ["war"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-store/build/dist");
           System("cp -f build/service.war $GLOBAL_BUILD_DIR/zm-store/build/dist");
      },
   },
   {
      "dir"         => "zm-zimlets",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-zimlets/conf");
           System("cp -f conf/zimbra.tld $GLOBAL_BUILD_DIR/zm-zimlets/conf");
      },
   },
   {
      "dir"         => "zm-web-client",
      "ant_targets" => ["prod-war"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-web-client/build/dist/jetty/webapps");
           System("cp -f build/dist/jetty/webapps/zimbra.war $GLOBAL_BUILD_DIR/zm-web-client/build/dist/jetty/webapps");
      },
   },
   {
      "dir"         => "zm-touch-client",
      "ant_targets" => ["touch-webapp"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-touch-client/build/dist/jetty/webapps/css");
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-touch-client/build/dist/jetty/webapps/public");
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-touch-client/build/dist/jetty/webapps/t");
           System("cp -f build/dist/jetty/webapps/css/ztouch.css $GLOBAL_BUILD_DIR/zm-touch-client/build/dist/jetty/webapps/css");
           System("cp -f build/dist/jetty/webapps/public/loginTouch.jsp $GLOBAL_BUILD_DIR/zm-touch-client/build/dist/jetty/webapps/public");
           System("cp -f -r build/dist/jetty/webapps/t $GLOBAL_BUILD_DIR/zm-touch-client/build/dist/jetty/webapps");
           System("cp -f -r WebRoot $GLOBAL_BUILD_DIR/zm-touch-client");
      },
   },
   {
      "dir"         => "zm-help",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-help $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-webclient-portal-example",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-webclient-portal-example $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-downloads",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-downloads $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-db-conf",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("(cd .. && rsync -az --relative zm-db-conf/src/db/migration $GLOBAL_BUILD_DIR/)");
      },
   },
   {
      "dir"         => "zm-backup-utilities",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("(cd .. && rsync -az --relative zm-backup-utilities/src/bin $GLOBAL_BUILD_DIR/)");
      },
   },
   {
      "dir"         => "zm-admin-console",
      "ant_targets" => ["admin-war"],
      "stage_cmd" => sub {
           System("mkdir -p $GLOBAL_BUILD_DIR/zm-admin-console/build/dist/jetty/webapps");
           System("cp -f build/dist/jetty/webapps/zimbraAdmin.war $GLOBAL_BUILD_DIR/zm-admin-console/build/dist/jetty/webapps");
      },
   },
   {
      "dir"         => "zm-web-client",
      "ant_targets" => ["jspc.build"],
      "stage_cmd" => sub {
           System("cp -f -r build/dist/jetty/work $GLOBAL_BUILD_DIR/zm-web-client/build/dist/jetty");
      },
   },
   {
      "dir"         => "zm-aspell",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-aspell $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-dnscache",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-dnscache $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-amavis",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-amavis $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-nginx-conf",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-nginx-conf $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-convertd-store",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-convertd-store $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-postfix",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-postfix $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-network-build",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-network-build $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-core-utils",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-core-utils $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-convertd-native",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-convertd-native $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-hsm",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-hsm $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-archive-utils",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-archive-utils $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-sync-tools",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-sync-tools $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-sync-store",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-sync-store $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-store-conf",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-store-conf $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-ews-store",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-ews-store $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-web-client",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-web-client $GLOBAL_BUILD_DIR");
      },
   },
   {
      "dir"         => "zm-windows-comp",
      "ant_targets" => undef,
      "stage_cmd" => sub {
           System("cp -f -r ../zm-windows-comp $GLOBAL_BUILD_DIR");
      },
   },
);