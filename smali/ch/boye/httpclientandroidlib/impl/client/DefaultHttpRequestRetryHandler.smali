.class public Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;
.super Ljava/lang/Object;
.source "DefaultHttpRequestRetryHandler.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpRequestRetryHandler;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final requestSentRetryEnabled:Z

.field private final retryCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    .line 67
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return-void
.end method


# virtual methods
.method public getRetryCount()I
    .locals 1

    .line 148
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    return v0
.end method

.method protected handleAsIdempotent(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 0

    .line 155
    instance-of p1, p1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public isRequestSentRetryEnabled()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    return v0
.end method

.method protected requestIsAborted(Lch/boye/httpclientandroidlib/HttpRequest;)Z
    .locals 1

    .line 163
    instance-of v0, p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    if-eqz v0, :cond_0

    .line 164
    check-cast p1, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;->getOriginal()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object p1

    .line 166
    :cond_0
    instance-of v0, p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    if-eqz v0, :cond_1

    check-cast p1, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->isAborted()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public retryRequest(Ljava/io/IOException;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Z
    .locals 2

    if-eqz p1, :cond_b

    if-eqz p3, :cond_a

    .line 90
    iget v0, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->retryCount:I

    const/4 v1, 0x0

    if-le p2, v0, :cond_0

    return v1

    .line 94
    :cond_0
    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_1

    return v1

    .line 98
    :cond_1
    instance-of p2, p1, Ljava/net/UnknownHostException;

    if-eqz p2, :cond_2

    return v1

    .line 102
    :cond_2
    instance-of p2, p1, Ljava/net/ConnectException;

    if-eqz p2, :cond_3

    return v1

    .line 106
    :cond_3
    instance-of p1, p1, Ljavax/net/ssl/SSLException;

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const-string p1, "http.request"

    .line 111
    invoke-interface {p3, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/HttpRequest;

    .line 114
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestIsAborted(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result p2

    if-eqz p2, :cond_5

    return v1

    .line 118
    :cond_5
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->handleAsIdempotent(Lch/boye/httpclientandroidlib/HttpRequest;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_6

    return p2

    :cond_6
    const-string p1, "http.request_sent"

    .line 123
    invoke-interface {p3, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_7

    .line 125
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_9

    .line 127
    iget-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpRequestRetryHandler;->requestSentRetryEnabled:Z

    if-eqz p1, :cond_8

    goto :goto_1

    :cond_8
    return v1

    :cond_9
    :goto_1
    return p2

    .line 88
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP context may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 85
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Exception parameter may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
