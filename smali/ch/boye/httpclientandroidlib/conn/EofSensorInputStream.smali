.class public Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;
.super Ljava/io/InputStream;
.source "EofSensorInputStream.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/ConnectionReleaseTrigger;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field private final eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

.field private selfClosed:Z

.field protected wrappedStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    if-eqz p1, :cond_0

    .line 94
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    const/4 p1, 0x0

    .line 95
    iput-boolean p1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    .line 96
    iput-object p2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    return-void

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrapped stream may not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abortConnection()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 290
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    .line 291
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    return-void
.end method

.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 175
    throw v0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected checkAbort()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 264
    :try_start_0
    iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    if-eqz v3, :cond_0

    .line 265
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->streamAbort(Ljava/io/InputStream;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    .line 267
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    :cond_1
    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method protected checkClose()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 233
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 236
    :try_start_0
    iget-object v3, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    if-eqz v3, :cond_0

    .line 237
    iget-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    invoke-interface {v1, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->streamClosed(Ljava/io/InputStream;)Z

    move-result v1

    :cond_0
    if-eqz v1, :cond_1

    .line 239
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    :cond_1
    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception v0

    iput-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw v0

    :cond_2
    :goto_0
    return-void
.end method

.method protected checkEOF(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_2

    if-gez p1, :cond_2

    const/4 p1, 0x1

    const/4 v1, 0x0

    .line 210
    :try_start_0
    iget-object v2, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    if-eqz v2, :cond_0

    .line 211
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->eofWatcher:Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;

    invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorWatcher;->eofDetected(Ljava/io/InputStream;)Z

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    .line 213
    iget-object p1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    :cond_1
    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    goto :goto_0

    :catchall_0
    move-exception p1

    iput-object v1, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    .line 186
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkClose()V

    return-void
.end method

.method protected isReadAllowed()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->selfClosed:Z

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 110
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Attempted read on closed stream."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 119
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 122
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 125
    throw v0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public read([B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p1

    .line 156
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 159
    throw p1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->isReadAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->wrappedStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    .line 139
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkEOF(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->checkAbort()V

    .line 142
    throw p1

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public releaseConnection()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/conn/EofSensorInputStream;->close()V

    return-void
.end method
