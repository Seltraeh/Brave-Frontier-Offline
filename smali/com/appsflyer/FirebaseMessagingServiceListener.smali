.class public Lcom/appsflyer/FirebaseMessagingServiceListener;
.super Lcom/google/firebase/messaging/FirebaseMessagingService;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/firebase/messaging/FirebaseMessagingService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewToken(Ljava/lang/String;)V
    .locals 4

    .line 8
    invoke-super {p0, p1}, Lcom/google/firebase/messaging/FirebaseMessagingService;->onNewToken(Ljava/lang/String;)V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_0

    .line 11
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Firebase Refreshed Token = "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/appsflyer/AppsFlyerProperties;->getInstance()Lcom/appsflyer/AppsFlyerProperties;

    move-result-object v2

    const-string v3, "afUninstallToken"

    invoke-virtual {v2, v3}, Lcom/appsflyer/AppsFlyerProperties;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2}, Lcom/appsflyer/internal/d$c$d;->ı(Ljava/lang/String;)Lcom/appsflyer/internal/d$c$d;

    move-result-object v2

    .line 14
    new-instance v3, Lcom/appsflyer/internal/d$c$d;

    invoke-direct {v3, v0, v1, p1}, Lcom/appsflyer/internal/d$c$d;-><init>(JLjava/lang/String;)V

    .line 15
    invoke-virtual {v2, v3}, Lcom/appsflyer/internal/d$c$d;->Ι(Lcom/appsflyer/internal/d$c$d;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 1077
    iget-object v0, v3, Lcom/appsflyer/internal/d$c$d;->ι:Ljava/lang/String;

    .line 16
    invoke-static {p1, v0}, Lcom/appsflyer/internal/ad;->ι(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
