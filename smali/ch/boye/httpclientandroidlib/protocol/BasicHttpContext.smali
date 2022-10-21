.class public Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;
.super Ljava/lang/Object;
.source "BasicHttpContext.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 50
    invoke-direct {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 55
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 97
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_0
    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 63
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 66
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->parentContext:Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_1

    .line 67
    invoke-interface {v1, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    .line 60
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Id may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    .line 86
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 87
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 84
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Id may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    .line 79
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Id may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;->map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "{}"

    return-object v0
.end method
