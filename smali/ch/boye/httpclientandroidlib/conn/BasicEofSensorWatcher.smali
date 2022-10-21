.class public Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;
.super Ljava/lang/Object;
.source "BasicEofSensorWatcher.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final attemptReuse:Z

.field protected final managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;Z)V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    .line 63
    iput-boolean p2, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z

    return-void

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Connection may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public eofDetected(Ljava/io/InputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 74
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V

    throw p1
.end method

.method public streamAbort(Ljava/io/InputStream;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->abortConnection()V

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

    .line 86
    :try_start_0
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->attemptReuse:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 90
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;->markReusable()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :cond_0
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {p1}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/BasicEofSensorWatcher;->managedConn:Lch/boye/httpclientandroidlib/conn/ManagedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;->releaseConnection()V

    throw p1
.end method
