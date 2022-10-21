.class public Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;
.super Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;
.source "BasicManagedEntity.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;
.implements Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/HttpEntity;Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntity;)V

    if-eqz p2, :cond_0

    .line 78
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 79
    iput-boolean p3, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z

    return-void

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private ensureConsumed()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-nez v0, :cond_0

    return-void

    .line 97
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_1

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-static {v0}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    :cond_1
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw v0
.end method


# virtual methods
.method public abortConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 129
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public consumeContent()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method

.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 142
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw p1
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    new-instance v0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->wrappedEntity:Lch/boye/httpclientandroidlib/HttpEntity;

    invoke-interface {v1}, Lch/boye/httpclientandroidlib/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;-><init>(Ljava/io/InputStream;Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;)V

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method

.method protected releaseManagedConnection()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 191
    :try_start_0
    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz p1, :cond_0

    .line 173
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public streamClosed(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->attemptReuse:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 158
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->releaseManagedConnection()V

    throw p1
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    invoke-super {p0, p1}, Lch/boye/httpclientandroidlib/entity/HttpEntityWrapper;->writeTo(Ljava/io/OutputStream;)V

    .line 118
    invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/BasicManagedEntity;->ensureConsumed()V

    return-void
.end method
