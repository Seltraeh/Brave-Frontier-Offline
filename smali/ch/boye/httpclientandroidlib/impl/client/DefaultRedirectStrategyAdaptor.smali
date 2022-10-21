.class Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;
.super Ljava/lang/Object;
.source "DefaultRedirectStrategyAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/RedirectStrategy;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/RedirectHandler;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    return-void
.end method


# virtual methods
.method public getHandler()Lch/boye/httpclientandroidlib/client/RedirectHandler;
    .locals 1

    .line 78
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    return-object v0
.end method

.method public getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    invoke-interface {v0, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectHandler;->getLocationURI(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/net/URI;

    move-result-object p2

    .line 69
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object p1

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HEAD"

    .line 70
    invoke-virtual {p1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    new-instance p1, Lch/boye/httpclientandroidlib/client/methods/HttpHead;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/client/methods/HttpHead;-><init>(Ljava/net/URI;)V

    return-object p1

    .line 73
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    invoke-direct {p1, p2}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    return-object p1
.end method

.method public isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultRedirectStrategyAdaptor;->handler:Lch/boye/httpclientandroidlib/client/RedirectHandler;

    invoke-interface {p1, p2, p3}, Lch/boye/httpclientandroidlib/client/RedirectHandler;->isRedirectRequested(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result p1

    return p1
.end method
