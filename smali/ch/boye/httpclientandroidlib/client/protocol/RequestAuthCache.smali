.class public Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;
.super Ljava/lang/Object;
.source "RequestAuthCache.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpRequestInterceptor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method

.method private doPreemptiveAuth(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .locals 4

    .line 121
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Re-using cached \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' auth scheme for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 126
    :cond_0
    new-instance v1, Lch/boye/httpclientandroidlib/auth/AuthScope;

    sget-object v2, Lch/boye/httpclientandroidlib/auth/AuthScope;->ANY_REALM:Ljava/lang/String;

    invoke-direct {v1, p1, v2, v0}, Lch/boye/httpclientandroidlib/auth/AuthScope;-><init>(Lch/boye/httpclientandroidlib/HttpHost;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-interface {p4, v1}, Lch/boye/httpclientandroidlib/client/CredentialsProvider;->getCredentials(Lch/boye/httpclientandroidlib/auth/AuthScope;)Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 130
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "BASIC"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 131
    sget-object p4, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p3, p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    goto :goto_0

    .line 133
    :cond_1
    sget-object p4, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->SUCCESS:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p3, p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    .line 135
    :goto_0
    invoke-virtual {p3, p2, p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->update(Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/Credentials;)V

    goto :goto_1

    .line 137
    :cond_2
    iget-object p1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "No credentials for preemptive authentication"

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    const-string p1, "http.auth.auth-cache"

    .line 76
    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/client/AuthCache;

    if-nez p1, :cond_0

    .line 78
    iget-object p1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "Auth cache not set in the context"

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "http.auth.credentials-provider"

    .line 82
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/CredentialsProvider;

    if-nez v0, :cond_1

    .line 85
    iget-object p1, p0, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "Credentials provider not set in the context"

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v1, "http.target_host"

    .line 89
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    .line 90
    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v2

    if-gez v2, :cond_2

    const-string v2, "http.scheme-registry"

    .line 91
    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;

    .line 93
    invoke-virtual {v2, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->getScheme(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;

    move-result-object v2

    .line 94
    new-instance v3, Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getPort()I

    move-result v5

    invoke-virtual {v2, v5}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;->resolvePort(I)I

    move-result v2

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v4, v2, v1}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object v1, v3

    :cond_2
    const-string v2, "http.auth.target-scope"

    .line 98
    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 99
    invoke-virtual {v2}, Lch/boye/httpclientandroidlib/auth/AuthState;->getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    move-result-object v3

    sget-object v4, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    if-ne v3, v4, :cond_3

    .line 100
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/client/AuthCache;->get(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 102
    invoke-direct {p0, v1, v3, v2, v0}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    :cond_3
    const-string v1, "http.proxy_host"

    .line 106
    invoke-interface {p2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v2, "http.auth.proxy-scope"

    .line 107
    invoke-interface {p2, v2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v1, :cond_4

    if-eqz p2, :cond_4

    .line 108
    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/auth/AuthState;->getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    move-result-object v2

    sget-object v3, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    if-ne v2, v3, :cond_4

    .line 109
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/client/AuthCache;->get(Lch/boye/httpclientandroidlib/HttpHost;)Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 111
    invoke-direct {p0, v1, p1, p2, v0}, Lch/boye/httpclientandroidlib/client/protocol/RequestAuthCache;->doPreemptiveAuth(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V

    :cond_4
    return-void

    .line 73
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP request may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
