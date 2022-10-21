.class public Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;
.super Ljava/lang/Object;
.source "DefaultUserTokenHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/UserTokenHandler;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getAuthScheme()Lch/boye/httpclientandroidlib/auth/AuthScheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isComplete()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/auth/AuthScheme;->isConnectionBased()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/auth/AuthState;->getCredentials()Lch/boye/httpclientandroidlib/auth/Credentials;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/auth/Credentials;->getUserPrincipal()Ljava/security/Principal;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getUserToken(Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 2

    const-string v0, "http.auth.target-scope"

    .line 65
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthState;

    if-eqz v0, :cond_0

    .line 68
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "http.auth.proxy-scope"

    .line 70
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/auth/AuthState;

    .line 72
    invoke-static {v0}, Lch/boye/httpclientandroidlib/impl/client/DefaultUserTokenHandler;->getAuthPrincipal(Lch/boye/httpclientandroidlib/auth/AuthState;)Ljava/security/Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    const-string v1, "http.connection"

    .line 77
    invoke-interface {p1, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;

    .line 79
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/HttpRoutedConnection;->getSSLSession()Ljavax/net/ssl/SSLSession;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 82
    invoke-interface {p1}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    :cond_2
    return-object v0
.end method
