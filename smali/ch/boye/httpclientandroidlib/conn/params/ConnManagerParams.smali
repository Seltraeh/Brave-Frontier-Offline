.class public final Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;
.super Ljava/lang/Object;
.source "ConnManagerParams.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/params/ConnManagerPNames;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DEFAULT_CONN_PER_ROUTE:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

.field public static final DEFAULT_MAX_TOTAL_CONNECTIONS:I = 0x14


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 85
    new-instance v0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams$1;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams$1;-><init>()V

    sput-object v0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMaxConnectionsPerRoute(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "http.conn-manager.max-per-route"

    .line 121
    invoke-interface {p0, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    if-nez p0, :cond_0

    .line 123
    sget-object p0, Lch/boye/httpclientandroidlib/conn/params/ConnManagerParams;->DEFAULT_CONN_PER_ROUTE:Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;

    :cond_0
    return-object p0

    .line 118
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getMaxTotalConnections(Lch/boye/httpclientandroidlib/params/HttpParams;)I
    .locals 2

    if-eqz p0, :cond_0

    const/16 v0, 0x14

    const-string v1, "http.conn-manager.max-total"

    .line 157
    invoke-interface {p0, v1, v0}, Lch/boye/httpclientandroidlib/params/HttpParams;->getIntParameter(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 154
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters must not be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;)J
    .locals 3

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "http.conn-manager.timeout"

    .line 65
    invoke-interface {p0, v2, v0, v1}, Lch/boye/httpclientandroidlib/params/HttpParams;->getLongParameter(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP parameters may not be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMaxConnectionsPerRoute(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/conn/params/ConnPerRoute;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.conn-manager.max-per-route"

    .line 106
    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setParameter(Ljava/lang/String;Ljava/lang/Object;)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 103
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setMaxTotalConnections(Lch/boye/httpclientandroidlib/params/HttpParams;I)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.conn-manager.max-total"

    .line 141
    invoke-interface {p0, v0, p1}, Lch/boye/httpclientandroidlib/params/HttpParams;->setIntParameter(Ljava/lang/String;I)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters must not be null."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setTimeout(Lch/boye/httpclientandroidlib/params/HttpParams;J)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "http.conn-manager.timeout"

    .line 81
    invoke-interface {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/params/HttpParams;->setLongParameter(Ljava/lang/String;J)Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 79
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "HTTP parameters may not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
