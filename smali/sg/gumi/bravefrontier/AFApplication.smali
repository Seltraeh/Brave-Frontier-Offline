.class public Lsg/gumi/bravefrontier/AFApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "AFApplication.java"


# static fields
.field public static final APPSFLYER_KEY:Ljava/lang/String; = "WMa4kPf8ZdvNhcpvdpwAvE"

.field public static appsflyerInitialized:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    return-void
.end method

.method public static isAppsflyerSDKInitialised()Z
    .locals 1

    .line 72
    sget-boolean v0, Lsg/gumi/bravefrontier/AFApplication;->appsflyerInitialized:Z

    return v0
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 18
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    const/4 v0, 0x0

    .line 20
    :try_start_0
    new-instance v1, Lsg/gumi/bravefrontier/AFApplication$1;

    invoke-direct {v1, p0}, Lsg/gumi/bravefrontier/AFApplication$1;-><init>(Lsg/gumi/bravefrontier/AFApplication;)V

    .line 47
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    const-string v3, "WMa4kPf8ZdvNhcpvdpwAvE"

    invoke-virtual {v2, v3, v1, p0}, Lcom/appsflyer/AppsFlyerLib;->init(Ljava/lang/String;Lcom/appsflyer/AppsFlyerConversionListener;Landroid/content/Context;)Lcom/appsflyer/AppsFlyerLib;

    .line 48
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/appsflyer/AppsFlyerLib;->setCollectIMEI(Z)V

    .line 49
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v1

    const-string v2, "USD"

    invoke-virtual {v1, v2}, Lcom/appsflyer/AppsFlyerLib;->setCurrencyCode(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 51
    sput-boolean v1, Lsg/gumi/bravefrontier/AFApplication;->appsflyerInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 53
    :catchall_0
    sput-boolean v0, Lsg/gumi/bravefrontier/AFApplication;->appsflyerInitialized:Z

    .line 57
    :goto_0
    sget-boolean v0, Lsg/gumi/bravefrontier/AFApplication;->appsflyerInitialized:Z

    if-eqz v0, :cond_0

    .line 59
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Custom_Event_Arch_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 62
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 63
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getDeviceArchitecture()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-static {}, Lcom/appsflyer/AppsFlyerLib;->getInstance()Lcom/appsflyer/AppsFlyerLib;

    move-result-object v2

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0, v1}, Lcom/appsflyer/AppsFlyerLib;->logEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
