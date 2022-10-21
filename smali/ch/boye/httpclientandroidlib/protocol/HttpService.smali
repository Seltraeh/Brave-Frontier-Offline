.class public Lch/boye/httpclientandroidlib/protocol/HttpService;
.super Ljava/lang/Object;
.source "HttpService.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private volatile connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

.field private volatile expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

.field private volatile handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

.field private volatile params:Lch/boye/httpclientandroidlib/params/HttpParams;

.field private volatile processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

.field private volatile responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 82
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    .line 160
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setHttpProcessor(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;)V

    .line 161
    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setConnReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V

    .line 162
    invoke-virtual {p0, p3}, Lch/boye/httpclientandroidlib/protocol/HttpService;->setResponseFactory(Lch/boye/httpclientandroidlib/HttpResponseFactory;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 7

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    .line 141
    invoke-direct/range {v0 .. v6}, Lch/boye/httpclientandroidlib/protocol/HttpService;-><init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    .line 78
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 79
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 82
    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    if-eqz p6, :cond_0

    .line 116
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    .line 117
    iput-object p2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    .line 118
    iput-object p3, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    .line 119
    iput-object p4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    .line 120
    iput-object p5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    .line 121
    iput-object p6, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void

    .line 114
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP parameters may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 111
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Response factory may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 108
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection reuse strategy may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 105
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "HTTP processor may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected doService(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    if-eqz v0, :cond_0

    .line 371
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/RequestLine;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;->lookup(Ljava/lang/String;)Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 375
    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/protocol/HttpRequestHandler;->handle(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    goto :goto_1

    :cond_1
    const/16 p1, 0x1f5

    .line 377
    invoke-interface {p2, p1}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    :goto_1
    return-void
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .line 223
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method protected handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1

    .line 329
    instance-of v0, p1, Lch/boye/httpclientandroidlib/MethodNotSupportedException;

    if-eqz v0, :cond_0

    const/16 v0, 0x1f5

    .line 330
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 331
    :cond_0
    instance-of v0, p1, Lch/boye/httpclientandroidlib/UnsupportedHttpVersionException;

    if-eqz v0, :cond_1

    const/16 v0, 0x1f9

    .line 332
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    .line 333
    :cond_1
    instance-of v0, p1, Lch/boye/httpclientandroidlib/ProtocolException;

    if-eqz v0, :cond_2

    const/16 v0, 0x190

    .line 334
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    .line 336
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setStatusCode(I)V

    .line 338
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 340
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    .line 342
    :cond_3
    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 343
    new-instance v0, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;

    invoke-direct {v0, p1}, Lch/boye/httpclientandroidlib/entity/ByteArrayEntity;-><init>([B)V

    const-string p1, "text/plain; charset=US-ASCII"

    .line 344
    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/entity/AbstractHttpEntity;->setContentType(Ljava/lang/String;)V

    .line 345
    invoke-interface {p2, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void
.end method

.method public handleRequest(Lch/boye/httpclientandroidlib/HttpServerConnection;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const-string v0, "http.connection"

    .line 240
    invoke-interface {p2, v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v0, 0x1f4

    .line 246
    :try_start_0
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestHeader()Lch/boye/httpclientandroidlib/HttpRequest;

    move-result-object v1

    .line 247
    new-instance v2, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v3

    iget-object v4, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v2, v3, v4}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v1, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 250
    instance-of v2, v1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    .line 252
    move-object v2, v1

    check-cast v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->expectContinue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 253
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    sget-object v5, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    const/16 v6, 0x64

    invoke-interface {v2, v5, v6, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    .line 255
    new-instance v5, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v6

    iget-object v7, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v5, v6, v7}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v2, v5}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 258
    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v5, :cond_0

    .line 260
    :try_start_1
    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    invoke-interface {v5, v1, v2, p2}, Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;->verify(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 262
    :try_start_2
    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    sget-object v6, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-interface {v5, v6, v0, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v5

    .line 264
    new-instance v6, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v5}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v7

    iget-object v8, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v6, v7, v8}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v5, v6}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 266
    invoke-virtual {p0, v2, v5}, Lch/boye/httpclientandroidlib/protocol/HttpService;->handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V

    move-object v2, v5

    .line 269
    :cond_0
    :goto_0
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v5

    invoke-interface {v5}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v5

    if-ge v5, v3, :cond_1

    .line 272
    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 273
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->flush()V

    .line 275
    move-object v2, v1

    check-cast v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    goto :goto_1

    :cond_1
    move-object v4, v2

    goto :goto_1

    .line 278
    :cond_2
    move-object v2, v1

    check-cast v2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {p1, v2}, Lch/boye/httpclientandroidlib/HttpServerConnection;->receiveRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    :cond_3
    :goto_1
    const-string v2, "http.request"

    .line 282
    invoke-interface {p2, v2, v1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    if-nez v4, :cond_4

    .line 285
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    sget-object v4, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_1:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-interface {v2, v4, v3, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    .line 287
    new-instance v2, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v3

    iget-object v5, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v2, v3, v5}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v4, v2}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 289
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-interface {v2, v1, p2}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 290
    invoke-virtual {p0, v1, v4, p2}, Lch/boye/httpclientandroidlib/protocol/HttpService;->doService(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 294
    :cond_4
    instance-of v2, v1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v2, :cond_5

    .line 295
    check-cast v1, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v1

    .line 296
    invoke-static {v1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V
    :try_end_2
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 300
    iget-object v2, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    sget-object v3, Lch/boye/httpclientandroidlib/HttpVersion;->HTTP_1_0:Lch/boye/httpclientandroidlib/HttpVersion;

    invoke-interface {v2, v3, v0, p2}, Lch/boye/httpclientandroidlib/HttpResponseFactory;->newHttpResponse(Lch/boye/httpclientandroidlib/ProtocolVersion;ILch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v4

    .line 303
    new-instance v0, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;

    invoke-interface {v4}, Lch/boye/httpclientandroidlib/HttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v2

    iget-object v3, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-direct {v0, v2, v3}, Lch/boye/httpclientandroidlib/params/DefaultedHttpParams;-><init>(Lch/boye/httpclientandroidlib/params/HttpParams;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    invoke-interface {v4, v0}, Lch/boye/httpclientandroidlib/HttpMessage;->setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 305
    invoke-virtual {p0, v1, v4}, Lch/boye/httpclientandroidlib/protocol/HttpService;->handleException(Lch/boye/httpclientandroidlib/HttpException;Lch/boye/httpclientandroidlib/HttpResponse;)V

    :cond_5
    :goto_2
    const-string v0, "http.response"

    .line 308
    invoke-interface {p2, v0, v4}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 310
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 311
    invoke-interface {p1, v4}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseHeader(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 312
    invoke-interface {p1, v4}, Lch/boye/httpclientandroidlib/HttpServerConnection;->sendResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    .line 313
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpServerConnection;->flush()V

    .line 315
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    invoke-interface {v0, v4, p2}, Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;->keepAlive(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 316
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    :cond_6
    return-void
.end method

.method public setConnReuseStrategy(Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 184
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->connStrategy:Lch/boye/httpclientandroidlib/ConnectionReuseStrategy;

    return-void

    .line 182
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Connection reuse strategy may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setExpectationVerifier(Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 219
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->expectationVerifier:Lch/boye/httpclientandroidlib/protocol/HttpExpectationVerifier;

    return-void
.end method

.method public setHandlerResolver(Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 211
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->handlerResolver:Lch/boye/httpclientandroidlib/protocol/HttpRequestHandlerResolver;

    return-void
.end method

.method public setHttpProcessor(Lch/boye/httpclientandroidlib/protocol/HttpProcessor;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 173
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->processor:Lch/boye/httpclientandroidlib/protocol/HttpProcessor;

    return-void

    .line 171
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP processor may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParams(Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 203
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-void
.end method

.method public setResponseFactory(Lch/boye/httpclientandroidlib/HttpResponseFactory;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_0

    .line 195
    iput-object p1, p0, Lch/boye/httpclientandroidlib/protocol/HttpService;->responseFactory:Lch/boye/httpclientandroidlib/HttpResponseFactory;

    return-void

    .line 193
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Response factory may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
