.class public abstract Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;
.super Ljava/lang/Object;
.source "AbstractClientConnAdapter.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;
.implements Lch/boye/httpclientandroidlib/protocol/HttpContext;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

.field private volatile duration:J

.field private volatile markedReusable:Z

.field private volatile released:Z

.field private volatile wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    .line 105
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    .line 107
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    const-wide p1, 0x7fffffffffffffffL

    .line 108
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    return-void
.end method


# virtual methods
.method public declared-synchronized abortConnection()V
    .locals 4

    monitor-enter p0

    .line 311
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 312
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 314
    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    .line 315
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 317
    :try_start_2
    invoke-interface {p0}, Lch/boye/httpclientandroidlib/HttpConnection;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    :catch_0
    :try_start_3
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 321
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final assertNotAborted()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 133
    :cond_0
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "Connection has been shut down"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    return-void

    .line 154
    :cond_0
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/ConnectionShutdownException;-><init>()V

    throw p1
.end method

.method protected declared-synchronized detach()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 116
    :try_start_0
    iput-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    const-wide v0, 0x7fffffffffffffffL

    .line 117
    iput-wide v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 195
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 197
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpClientConnection;->flush()V

    return-void
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 324
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 325
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 326
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 327
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    .line 239
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 240
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 241
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPort()I
    .locals 1

    .line 245
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 247
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getLocalPort()I

    move-result v0

    return v0
.end method

.method protected getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .line 125
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    return-object v0
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;
    .locals 1

    .line 189
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 190
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 191
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->getMetrics()Lch/boye/httpclientandroidlib/HttpConnectionMetrics;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    .line 251
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 252
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 253
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemoteAddress()Ljava/net/InetAddress;

    move-result-object v0

    return-object v0
.end method

.method public getRemotePort()I
    .locals 1

    .line 257
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 258
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 259
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpInetConnection;->getRemotePort()I

    move-result v0

    return v0
.end method

.method public getSSLSession()Ljavax/net/ssl/SSLSession;
    .locals 3

    .line 269
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 270
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 271
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isOpen()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 275
    :cond_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->getSocket()Ljava/net/Socket;

    move-result-object v0

    .line 276
    instance-of v1, v0, Ljavax/net/ssl/SSLSocket;

    if-eqz v1, :cond_1

    .line 277
    check-cast v0, Ljavax/net/ssl/SSLSocket;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    :cond_1
    return-object v2
.end method

.method public getSocketTimeout()I
    .locals 1

    .line 183
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 184
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 185
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->getSocketTimeout()I

    move-result v0

    return v0
.end method

.method protected getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 1

    .line 121
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->wrappedConnection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    return-object v0
.end method

.method public isMarkedReusable()Z
    .locals 1

    .line 291
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    return v0
.end method

.method protected isReleased()Z
    .locals 1

    .line 142
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    return v0
.end method

.method public isResponseAvailable(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 202
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 203
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->isResponseAvailable(I)Z

    move-result p1

    return p1
.end method

.method public isSecure()Z
    .locals 1

    .line 263
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 264
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 265
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;->isSecure()Z

    move-result v0

    return v0
.end method

.method public isStale()Z
    .locals 2

    .line 167
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->isReleased()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 169
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 173
    :cond_1
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isStale()Z

    move-result v0

    return v0
.end method

.method public markReusable()V
    .locals 1

    const/4 v0, 0x1

    .line 283
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return-void
.end method

.method public receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 208
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 209
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 210
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 211
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseEntity(Lch/boye/httpclientandroidlib/HttpResponse;)V

    return-void
.end method

.method public receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 217
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 218
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 219
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpClientConnection;->receiveResponseHeader()Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized releaseConnection()V
    .locals 4

    monitor-enter p0

    .line 303
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 304
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 306
    :try_start_1
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->released:Z

    .line 307
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->connManager:Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    iget-wide v1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, p0, v1, v2, v3}, Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;->releaseConnection(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;JLjava/util/concurrent/TimeUnit;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 308
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 334
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 335
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 336
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 337
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->removeAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 224
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 225
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 226
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 227
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->sendRequestEntity(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    return-void
.end method

.method public sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/boye/httpclientandroidlib/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 233
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 234
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->unmarkReusable()V

    .line 235
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpClientConnection;->sendRequestHeader(Lch/boye/httpclientandroidlib/HttpRequest;)V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 344
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 345
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 346
    instance-of v1, v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    if-eqz v1, :cond_0

    .line 347
    check-cast v0, Lch/boye/httpclientandroidlib/protocol/HttpContext;

    invoke-interface {v0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setIdleDuration(JLjava/util/concurrent/TimeUnit;)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 296
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    .line 298
    iput-wide p1, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->duration:J

    :goto_0
    return-void
.end method

.method public setSocketTimeout(I)V
    .locals 1

    .line 177
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getWrappedConnection()Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object v0

    .line 178
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->assertValid(Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;)V

    .line 179
    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/HttpConnection;->setSocketTimeout(I)V

    return-void
.end method

.method public unmarkReusable()V
    .locals 1

    const/4 v0, 0x0

    .line 287
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markedReusable:Z

    return-void
.end method
