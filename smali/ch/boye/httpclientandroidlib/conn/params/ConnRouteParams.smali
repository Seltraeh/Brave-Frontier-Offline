.class public Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;
.super Ljava/lang/Object;
.source "ConnRouteParams.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/params/ConnRoutePNames;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# static fields
.field public static final NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

.field public static final NO_ROUTE:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 51
    new-instance v0, Lch/boye/httpclientandroidlib/HttpHost;

    const-string v1, "127.0.0.255"

    const/4 v2, 0x0

    const-string v3, "no-host"

    invoke-direct {v0, v1, v2, v3}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

    .line 58
    new-instance v0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    sget-object v1, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;-><init>(Lch/boye/httpclientandroidlib/HttpHost;)V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_ROUTE:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultProxy(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "http.route.default-proxy"

    .line 80
    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lch/boye/httpclientandroidlib/HttpHost;

    if-eqz p0, :cond_0

    .line 82
    sget-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_HOST:Lch/boye/httpclientandroidlib/HttpHost;

    invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/HttpHost;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 78
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getForcedRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "http.route.forced-route"

    .line 122
    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    if-eqz p0, :cond_0

    .line 124
    sget-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnRouteParams;->NO_ROUTE:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {v0, p0}, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0

    .line 120
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getLocalAddress(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/InetAddress;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.route.local-address"

    .line 165
    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/InetAddress;

    return-object p0

    .line 163
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Parameters must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setDefaultProxy(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.route.default-proxy"

    .line 104
    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 102
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setForcedRoute(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.route.forced-route"

    .line 146
    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 144
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setLocalAddress(Lch/boye/httpclientandroidlib/params/HttpParams;Ljava/net/InetAddress;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.route.local-address"

    .line 183
    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 181
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Parameters must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
