.class public abstract Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.super Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;
.source "HttpRequestBase.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;
.implements Lch/boye/httpclientandroidlib/client/methods/AbortableHttpRequest;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private abortLock:Ljava/util/concurrent/locks/Lock;

.field private volatile aborted:Z

.field private connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

.field private releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

.field private uri:Ljava/net/URI;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;-><init>()V

    .line 67
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private cleanup()V
    .locals 2

    .line 131
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;->abortRequest()V

    .line 133
    iput-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    .line 135
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

    if-eqz v0, :cond_1

    .line 137
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :catch_0
    iput-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

    :cond_1
    return-void
.end method


# virtual methods
.method public abort()V
    .locals 2

    .line 145
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    if-eqz v0, :cond_0

    return-void

    .line 148
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 150
    :try_start_0
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    .line 151
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->cleanup()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 188
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;

    .line 189
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    const/4 v1, 0x0

    .line 190
    iput-boolean v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    const/4 v1, 0x0

    .line 191
    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;

    .line 192
    iput-object v1, v0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;

    .line 193
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/message/HeaderGroup;

    iput-object v1, v0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->headergroup:Lch/boye/httpclientandroidlib/message/HeaderGroup;

    .line 194
    iget-object v1, p0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    invoke-static {v1}, Lch/boye/httpclientandroidlib/client/utils/CloneUtils;->clone(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/params/HttpParams;

    iput-object v1, v0, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->params:Lch/boye/httpclientandroidlib/params/HttpParams;

    return-object v0
.end method

.method public abstract getMethod()Ljava/lang/String;
.end method

.method public getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/message/AbstractHttpMessage;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    invoke-static {v0}, Lch/boye/httpclientandroidlib/params/HttpProtocolParams;->getVersion(Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v0

    return-object v0
.end method

.method public getRequestLine()Lch/boye/httpclientandroidlib/RequestLine;
    .locals 4

    .line 87
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 92
    invoke-virtual {v2}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 94
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v2, "/"

    .line 97
    :cond_2
    new-instance v3, Lch/boye/httpclientandroidlib/message/BasicRequestLine;

    invoke-direct {v3, v0, v2, v1}, Lch/boye/httpclientandroidlib/message/BasicRequestLine;-><init>(Ljava/lang/String;Ljava/lang/String;Lch/boye/httpclientandroidlib/ProtocolVersion;)V

    return-object v3
.end method

.method public getURI()Ljava/net/URI;
    .locals 1

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-object v0
.end method

.method public isAborted()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    return v0
.end method

.method public releaseConnection()V
    .locals 0

    .line 183
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->reset()V

    return-void
.end method

.method public reset()V
    .locals 2

    .line 167
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 169
    :try_start_0
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->cleanup()V

    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public setConnectionRequest(Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 111
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->connRequest:Lch/boye/httpclientandroidlib/conn/ClientConnectionRequest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    iget-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 107
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Request already aborted"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReleaseTrigger(Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->aborted:Z

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 124
    :try_start_0
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->releaseTrigger:Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->abortLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 120
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Request already aborted"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setURI(Ljava/net/URI;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->uri:Ljava/net/URI;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;->getProtocolVersion()Lch/boye/httpclientandroidlib/ProtocolVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
