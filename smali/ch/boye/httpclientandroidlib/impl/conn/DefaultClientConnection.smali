.class public Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;
.super Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;
.source "DefaultClientConnection.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private connSecure:Z

.field public headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field public log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

.field private volatile shutdown:Z

.field private volatile socket:Ljava/net/Socket;

.field private targetHost:Lch/boye/httpclientandroidlib/HttpHost;

.field public wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;-><init>()V

    .line 75
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-class v1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 76
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "ch.boye.httpclientandroidlib.headers"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 77
    new-instance v0, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v1, "ch.boye.httpclientandroidlib.wire"

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 167
    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->close()V

    .line 168
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 172
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error closing connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
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

    .line 224
    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/DefaultHttpResponseParser;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/message/LineParser;Lch/boye/httpclientandroidlib/HttpResponseFactory;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-object v0
.end method

.method protected createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 184
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionInputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    move-result-object p1

    .line 188
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 189
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionInputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method protected createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x2000

    .line 205
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->createSessionOutputBuffer(Ljava/net/Socket;ILch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    move-result-object p1

    .line 209
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {p2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 210
    new-instance p2, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;

    new-instance v0, Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->wireLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-direct {v0, v1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;-><init>(Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;)V

    invoke-static {p3}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getHttpElementCharset(Lch/boye/httpclientandroidlib/params/HttpParams;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, v0, p3}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    move-object p1, p2

    :cond_1
    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 282
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getSocket()Ljava/net/Socket;
    .locals 1

    .line 109
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public final getTargetHost()Lch/boye/httpclientandroidlib/HttpHost;
    .locals 1

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    return-object v0
.end method

.method public final isSecure()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    return v0
.end method

.method public openCompleted(ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 126
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->assertNotOpen()V

    if-eqz p2, :cond_0

    .line 131
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    .line 132
    iget-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    return-void

    .line 128
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public opening(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->assertNotOpen()V

    .line 114
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 115
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 118
    iget-boolean p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->shutdown:Z

    if-nez p2, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->close()V

    .line 121
    new-instance p1, Ljava/io/InterruptedIOException;

    const-string p2, "Connection already shutdown"

    invoke-direct {p1, p2}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 252
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    .line 253
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 254
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receiving response: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 257
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "<< "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 258
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpMessage;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object v1

    .line 259
    array-length v2, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    .line 260
    iget-object v6, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 286
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 271
    :cond_0
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/impl/AbstractHttpClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 272
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 273
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ">> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpRequest;->getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 274
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpMessage;->getAllHeaders()[Lch/boye/httpclientandroidlib/Header;

    move-result-object p1

    .line 275
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p1, v1

    .line 276
    iget-object v4, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->headerLog:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public shutdown()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 150
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->shutdown:Z

    .line 152
    :try_start_0
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->shutdown()V

    .line 153
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " shut down"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;)V

    .line 156
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 160
    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->log:Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;

    const-string v2, "I/O error shutting down connection"

    invoke-virtual {v1, v2, v0}, Lch/boye/httpclientandroidlib/androidextra/HttpClientAndroidLog;->debug(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public update(Ljava/net/Socket;Lch/boye/httpclientandroidlib/HttpHost;ZLch/boye/httpclientandroidlib/params/HttpParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->assertOpen()V

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p1, :cond_0

    .line 243
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->socket:Ljava/net/Socket;

    .line 244
    invoke-virtual {p0, p1, p4}, Lch/boye/httpclientandroidlib/impl/SocketHttpClientConnection;->bind(Ljava/net/Socket;Lch/boye/httpclientandroidlib/params/HttpParams;)V

    .line 246
    :cond_0
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->targetHost:Lch/boye/httpclientandroidlib/HttpHost;

    .line 247
    iput-boolean p3, p0, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;->connSecure:Z

    return-void

    .line 238
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Parameters must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 234
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target host must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
