.class public final Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;
.super Ljava/lang/Object;
.source "ImmutableHttpProcessor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpProcessor;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation


# instance fields
.field private final requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

.field private final responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;)V
    .locals 5

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 78
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;->getRequestInterceptorCount()I

    move-result v1

    .line 79
    new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 81
    iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;->getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    .line 84
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    :cond_1
    if-eqz p2, :cond_2

    .line 87
    invoke-interface {p2}, Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;->getResponseInterceptorCount()I

    move-result p1

    .line 88
    new-array v1, p1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    :goto_1
    if-ge v0, p1, :cond_3

    .line 90
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;->getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array p1, v0, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 93
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    :cond_3
    return-void
.end method

.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 98
    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    return-void
.end method

.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 5

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 54
    array-length v1, p1

    .line 55
    new-array v2, v1, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    iput-object v2, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 57
    iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    aget-object v4, p1, v2

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v0, [Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    .line 60
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    :cond_1
    if-eqz p2, :cond_2

    .line 63
    array-length p1, p2

    .line 64
    new-array v1, p1, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    iput-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    :goto_1
    if-ge v0, p1, :cond_3

    .line 66
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    aget-object v2, p2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    new-array p1, v0, [Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 69
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    :cond_3
    return-void
.end method

.method public constructor <init>([Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, v0, p1}, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;-><init>([Lch/boye/httpclientandroidlib/HttpRequestInterceptor;[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    return-void
.end method


# virtual methods
.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 108
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->requestInterceptors:[Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 109
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/ImmutableHttpProcessor;->responseInterceptors:[Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 117
    aget-object v1, v1, v0

    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
