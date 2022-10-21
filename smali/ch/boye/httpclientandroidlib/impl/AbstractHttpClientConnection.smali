.class public abstract Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;
.super Ljava/lang/Object;
.source "AbstractHttpClientConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/HttpClientConnection;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

.field private final entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

.field private eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

.field private inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

.field private metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

.field private outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/boye/httpclientandroidlib/io/HttpMessageWriter<",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            ">;"
        }
    .end annotation
.end field

.field private responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/boye/httpclientandroidlib/io/HttpMessageParser<",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 81
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 82
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 83
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    .line 84
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    .line 85
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    .line 97
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    .line 98
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    return-void
.end method


# virtual methods
.method protected abstract assertOpen()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method protected createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;
    .locals 1

    .line 198
    new-instance v0, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;-><init>(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)V

    return-object v0
.end method

.method protected createEntityDeserializer()Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;
    .locals 2

    .line 120
    new-instance v0, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/entity/LaxContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;-><init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createEntitySerializer()Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;
    .locals 2

    .line 135
    new-instance v0, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    new-instance v1, Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/impl/entity/StrictContentLengthStrategy;-><init>()V

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;-><init>(Lch/boye/httpclientandroidlib/entity/ContentLengthStrategy;)V

    return-object v0
.end method

.method protected createHttpResponseFactory()Lch/boye/httpclientandroidlib/HttpResponseFactory;
    .locals 1

    .line 149
    new-instance v0, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/impl/DefaultHttpResponseFactory;-><init>()V

    return-object v0
.end method

.method protected createRequestWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;",
            "Lch/boye/httpclientandroidlib/params/HttpParams;",
            ")",
            "Lch/boye/httpclientandroidlib/io/HttpMessageWriter<",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Lch/boye/httpclientandroidlib/impl/io/HttpRequestWriter;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/message/LineFormatter;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createResponseParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/boye/httpclientandroidlib/io/SessionInputBuffer;",
            "Lch/boye/httpclientandroidlib/HttpResponseFactory;",
            "Lch/boye/httpclientandroidlib/params/HttpParams;",
            ")",
            "Lch/boye/httpclientandroidlib/io/HttpMessageParser<",
            "Lch/boye/httpclientandroidlib/HttpResponse;",
            ">;"
        }
    .end annotation

    .line 170
    new-instance v0, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/io/DefaultHttpResponseParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected doFlush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 283
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->doFlush()V

    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .locals 1

    .line 328
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    return-object v0
.end method

.method protected init(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    .line 227
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    .line 228
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 229
    instance-of v0, p1, Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_0

    .line 230
    move-object v0, p1

    check-cast v0, Lch/boye/httpclientandroidlib/io/EofSensor;

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    .line 232
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createHttpResponseFactory()Lch/boye/httpclientandroidlib/HttpResponseFactory;

    move-result-object v0

    invoke-virtual {p0, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createResponseParser(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    move-result-object v0

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    .line 236
    invoke-virtual {p0, p2, p3}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createRequestWriter(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    move-result-object p3

    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    .line 238
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object p1

    invoke-interface {p2}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->createConnectionMetrics(Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;)Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    move-result-object p1

    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    return-void

    .line 225
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Output session buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 222
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Input session buffer may not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected isEof()Z
    .locals 1

    .line 307
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->eofSensor:Lch/boye/httpclientandroidlib/io/EofSensor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/EofSensor;->isEof()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 244
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 246
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    move-result p1
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public isStale()Z
    .locals 2

    .line 311
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 314
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->isEof()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 318
    :cond_1
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, v1}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->isDataAvailable(I)Z

    .line 319
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->isEof()Z

    move-result v0
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1

    :catch_1
    const/4 v0, 0x0

    return v0
.end method

.method public receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 301
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 302
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entitydeserializer:Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->inbuffer:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-virtual {v0, v1, p1}, Lch/boye/httpclientandroidlib/impl/entity/EntityDeserializer;->deserialize(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;)Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    .line 303
    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->setEntity(Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void

    .line 299
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP response may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 289
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->responseParser:Lch/boye/httpclientandroidlib/io/HttpMessageParser;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/HttpMessageParser;->parse()Lch/boye/httpclientandroidlib/HttpMessage;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpResponse;

    .line 290
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_0

    .line 291
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementResponseCount()V

    :cond_0
    return-object v0
.end method

.method public sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 267
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 268
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->entityserializer:Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->outbuffer:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lch/boye/httpclientandroidlib/impl/entity/EntitySerializer;->serialize(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/HttpMessage;Lch/boye/httpclientandroidlib/HttpEntity;)V

    return-void

    .line 265
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP request may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 257
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->assertOpen()V

    .line 258
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->requestWriter:Lch/boye/httpclientandroidlib/io/HttpMessageWriter;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/HttpMessageWriter;->write(Lch/boye/httpclientandroidlib/HttpMessage;)V

    .line 259
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->metrics:Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/impl/HttpConnectionMetricsImpl;->incrementRequestCount()V

    return-void

    .line 255
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTTP request may not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
