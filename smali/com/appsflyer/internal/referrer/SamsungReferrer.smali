.class public Lcom/appsflyer/internal/referrer/SamsungReferrer;
.super Lcom/appsflyer/internal/referrer/ContentProviderReferrer;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/appsflyer/internal/referrer/ContentProviderReferrer;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 4

    .line 37
    new-instance v0, Lcom/appsflyer/internal/referrer/SamsungReferrer$2;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "FBA3AF4E7757D9016E953FB3EE4671CA2BD9AF725F9A53D52ED4A38EAAA08901"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "com.sec.android.app.samsungapps.referrer"

    invoke-direct {v0, p0, p1, v2, v1}, Lcom/appsflyer/internal/referrer/SamsungReferrer$2;-><init>(Lcom/appsflyer/internal/referrer/SamsungReferrer;Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1012
    invoke-static {}, Lcom/appsflyer/AppsFlyerLibCore;->getInstance()Lcom/appsflyer/AppsFlyerLibCore;

    move-result-object v1

    .line 1013
    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Lcom/appsflyer/AppsFlyerLibCore;->getLaunchCounter(Landroid/content/SharedPreferences;Z)I

    move-result p1

    const/4 v1, 0x2

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
