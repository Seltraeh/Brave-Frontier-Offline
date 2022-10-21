.class public Lch/boye/httpclientandroidlib/impl/client/ProxyAuthenticationStrategy;
.super Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;
.source "ProxyAuthenticationStrategy.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v0, 0x197

    const-string v1, "Proxy-Authenticate"

    const-string v2, "http.auth.proxy-scheme-pref"

    .line 45
    invoke-direct {p0, v0, v1, v2}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic authFailed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;->authFailed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    return-void
.end method

.method public bridge synthetic authSucceeded(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;->authSucceeded(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    return-void
.end method

.method public bridge synthetic getChallenges(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
        }
    .end annotation

    .line 41
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;->getChallenges(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 0

    .line 41
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic select(Ljava/util/Map;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Queue;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/auth/MalformedChallengeException;
        }
    .end annotation

    .line 41
    invoke-super {p0, p1, p2, p3, p4}, Lch/boye/httpclientandroidlib/impl/client/AuthenticationStrategyImpl;->select(Ljava/util/Map;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object p1

    return-object p1
.end method
