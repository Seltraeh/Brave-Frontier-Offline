.class public interface abstract Lch/boye/httpclientandroidlib/client/RedirectStrategy;
.super Ljava/lang/Object;
.source "RedirectStrategy.java"


# virtual methods
.method public abstract getRedirect(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation
.end method

.method public abstract isRedirected(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/ProtocolException;
        }
    .end annotation
.end method
