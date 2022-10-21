.class public Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;
.super Ljava/lang/Object;
.source "ClientContextConfigurer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/protocol/ClientContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final context:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-void

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP context may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public setAuthSchemeRegistry(Lch/boye/httpclientandroidlib/auth/AuthSchemeRegistry;)V
    .locals 2

    .line 59
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.authscheme-registry"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieSpecRegistry(Lch/boye/httpclientandroidlib/cookie/CookieSpecRegistry;)V
    .locals 2

    .line 55
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.cookiespec-registry"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCookieStore(Lch/boye/httpclientandroidlib/client/CookieStore;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.cookie-store"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setCredentialsProvider(Lch/boye/httpclientandroidlib/client/CredentialsProvider;)V
    .locals 2

    .line 67
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/protocol/ClientContextConfigurer;->context:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    const-string v1, "http.auth.credentials-provider"

    invoke-interface {v0, v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
