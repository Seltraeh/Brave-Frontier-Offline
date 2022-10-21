.class public Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;
.super Ljava/lang/Object;
.source "HttpRequestHandlerRegistry.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher<",
            "Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    return-void
.end method


# virtual methods
.method public getHandlers()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;",
            ">;"
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->getObjects()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public lookup(Ljava/lang/String;)Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;
    .locals 1

    .line 105
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->lookup(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;

    return-object p1
.end method

.method public register(Ljava/lang/String;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->register(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    .line 72
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Request handler may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "URI request pattern may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHandlers(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;",
            ">;)V"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->setObjects(Ljava/util/Map;)V

    return-void
.end method

.method public unregister(Ljava/lang/String;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerRegistry;->matcher:Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/protocol/UriPatternMatcher;->unregister(Ljava/lang/String;)V

    return-void
.end method
