.class public Lcom/appsflyer/internal/referrer/HuaweiReferrer;
.super Lcom/appsflyer/internal/referrer/ContentProviderReferrer;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/appsflyer/internal/referrer/ContentProviderReferrer;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 6

    .line 31
    new-instance v0, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "FFE391E0EA186D0734ED601E4E70E3224B7309D48E2075BAC46D8C667EAE7212"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    const-string v5, "3BAF59A2E5331C30675FAB35FF5FFF0D116142D3D4664F1C3CB804068B40614F"

    aput-object v5, v2, v3

    const-string v3, "com.huawei.appmarket.commondata"

    invoke-direct {v0, p0, p1, v3, v2}, Lcom/appsflyer/internal/referrer/HuaweiReferrer$1;-><init>(Lcom/appsflyer/internal/referrer/HuaweiReferrer;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v2

    .line 1013
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {v2, p1, v4}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result p1

    if-ge p1, v1, :cond_0

    .line 1014
    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->valid()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1015
    invoke-virtual {v0}, Lcom/appsflyer/internal/ContentFetcher;->start()V

    .line 1016
    invoke-virtual {p0, p2}, Lcom/appsflyer/internal/referrer/Referrer;->start(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
