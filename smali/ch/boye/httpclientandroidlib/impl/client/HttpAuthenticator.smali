.class public Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;
.super Ljava/lang/Object;
.source "HttpAuthenticator.java"


# instance fields
.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 53
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;

    invoke-direct {p1, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    return-void
.end method


# virtual methods
.method public authenticate(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 6

    const/4 v0, 0x0

    .line 93
    :try_start_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " requested authentication"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 96
    :cond_0
    invoke-interface {p3, p1, p2, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;->getChallenges(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Map;

    move-result-object v1

    .line 97
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 98
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "Response contains no authentication challenges"

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v0

    .line 102
    :cond_1
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v2

    .line 103
    sget-object v3, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator$1;->$SwitchMap$ch$boye$httpclientandroidlib$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_3

    const/4 v5, 0x4

    if-eq v3, v5, :cond_2

    const/4 v5, 0x5

    if-eq v3, v5, :cond_5

    goto :goto_0

    :cond_2
    return v0

    .line 107
    :cond_3
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    goto :goto_0

    :cond_4
    if-nez v2, :cond_5

    .line 112
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Auth scheme is null"

    invoke-virtual {p2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 113
    invoke-interface {p3, p1, p2, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;->authFailed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 114
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 115
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->FAILURE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    return v0

    :cond_5
    if-eqz v2, :cond_8

    .line 120
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    .line 121
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/boye/httpclientandroidlib/Header;

    if-eqz v3, :cond_7

    .line 123
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Authorization challenge processed"

    invoke-virtual {p2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 124
    invoke-interface {v2, v3}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->processChallenge(Lch/boye/httpclientandroidlib/Header;)V

    .line 125
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 126
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "Authentication failed"

    invoke-virtual {p2, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 127
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;->authFailed(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 128
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 129
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->FAILURE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    return v0

    .line 132
    :cond_6
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->HANDSHAKE:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    return v4

    .line 136
    :cond_7
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    .line 141
    :cond_8
    :goto_0
    invoke-interface {p3, v1, p1, p2, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;->select(Ljava/util/Map;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/util/Queue;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 142
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_a

    .line 143
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 144
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Selected authentication options: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 146
    :cond_9
    sget-object p2, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->CHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p4, p2}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    .line 147
    invoke-virtual {p4, p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->update(Ljava/util/Queue;)V
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/auth/MalformedChallengeException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :cond_a
    return v0

    :catch_0
    move-exception p1

    .line 153
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isWarnEnabled()Z

    move-result p2

    if-eqz p2, :cond_b

    .line 154
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Malformed challenge: "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->warn(Ljava/lang/Object;)V

    .line 156
    :cond_b
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->reset()V

    return v0
.end method

.method public isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;Lch/boye/httpclientandroidlib/auth/AuthState;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 2

    .line 66
    invoke-interface {p3, p1, p2, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;->isAuthenticationRequested(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 67
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string p2, "Authentication required"

    invoke-virtual {p1, p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    return v0

    .line 70
    :cond_0
    sget-object p2, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator$1;->$SwitchMap$ch$boye$httpclientandroidlib$auth$AuthProtocolState:[I

    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->getState()Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_2

    .line 80
    sget-object p1, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->UNCHALLENGED:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p4, p1}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    goto :goto_0

    .line 73
    :cond_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/HttpAuthenticator;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v0, "Authentication succeeded"

    invoke-virtual {p2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 74
    sget-object p2, Lch/boye/httpclientandroidlib/auth/AuthProtocolState;->SUCCESS:Lch/boye/httpclientandroidlib/auth/AuthProtocolState;

    invoke-virtual {p4, p2}, Lch/boye/httpclientandroidlib/auth/AuthState;->setState(Lch/boye/httpclientandroidlib/auth/AuthProtocolState;)V

    .line 75
    invoke-virtual {p4}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object p2

    invoke-interface {p3, p1, p2, p5}, Lch/boye/httpclientandroidlib/client/AuthenticationStrategy;->authSucceeded(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/auth/AuthScheme;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
