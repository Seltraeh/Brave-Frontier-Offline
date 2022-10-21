.class public final Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;
.super Ljava/lang/Object;
.source "DefaultedHttpContext.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

.field private final local:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 51
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    .line 52
    iput-object p2, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 56
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public getDefaults()Lch/boye/httpclientandroidlib/protocol/HttpContext;
    .locals 1

    .line 73
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 65
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[local: "

    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->local:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "defaults: "

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/DefaultedHttpContext;->defaults:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
