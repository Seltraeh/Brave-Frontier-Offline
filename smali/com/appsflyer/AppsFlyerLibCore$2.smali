.class final Lcom/appsflyer/AppsFlyerLibCore$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/appsflyer/AFFacebookDeferredDeeplink$AppLinkFetchEvents;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsflyer/AppsFlyerLibCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic ɩ:Lcom/appsflyer/AppsFlyerLibCore;

.field private synthetic Ι:J


# direct methods
.method constructor <init>(Lcom/appsflyer/AppsFlyerLibCore;J)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    iput-wide p2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAppLinkFetchFailed(Ljava/lang/String;)V
    .locals 2

    .line 872
    iget-object v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v0}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "error"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final onAppLinkFetchFinished(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "link"

    if-eqz p1, :cond_1

    .line 847
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Facebook Deferred AppLink data received: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 848
    iget-object v1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {v1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_0

    .line 851
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object p1

    const-string v0, "target_url"

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p3, :cond_2

    .line 855
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 856
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "promo_code"

    .line 857
    invoke-virtual {p2, v0, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "deeplink_context"

    .line 858
    invoke-virtual {p1, p3, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 859
    iget-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p2}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "extras"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 862
    :cond_1
    iget-object p1, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p1}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object p1

    const-string p2, ""

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    :cond_2
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 866
    iget-wide v0, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->Ι:J

    sub-long/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    .line 867
    iget-object p2, p0, Lcom/appsflyer/AppsFlyerLibCore$2;->ɩ:Lcom/appsflyer/AppsFlyerLibCore;

    invoke-static {p2}, Lcom/appsflyer/AppsFlyerLibCore;->ǃ(Lcom/appsflyer/AppsFlyerLibCore;)Ljava/util/Map;

    move-result-object p2

    const-string p3, "ttr"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
