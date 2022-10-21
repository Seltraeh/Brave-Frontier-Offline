.class public Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;
.super Ljava/lang/Object;
.source "LoggingSessionOutputBuffer.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/Immutable;
.end annotation


# instance fields
.field private final charset:Ljava/lang/String;

.field private final out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

.field private final wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-direct {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;-><init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;Lch/boye/httpclientandroidlib/impl/conn/Wire;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    .line 65
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    if-eqz p3, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    sget-object p1, Lch/boye/httpclientandroidlib/Consts;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p3

    :goto_0
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->charset:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->flush()V

    return-void
.end method

.method public getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;
    .locals 1

    .line 116
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->getMetrics()Lch/boye/httpclientandroidlib/io/HttpTransportMetrics;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write(I)V

    .line 82
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output(I)V

    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([B)V

    .line 89
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->write([BII)V

    .line 75
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([BII)V

    :cond_0
    return-void
.end method

.method public writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Lch/boye/httpclientandroidlib/util/CharArrayBuffer;)V

    .line 100
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->buffer()[C

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1}, Lch/boye/httpclientandroidlib/util/CharArrayBuffer;->length()I

    move-result p1

    invoke-direct {v0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    :cond_0
    return-void
.end method

.method public writeLine(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->out:Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;

    invoke-interface {v0, p1}, Lch/boye/httpclientandroidlib/io/SessionOutputBuffer;->writeLine(Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    invoke-virtual {v0}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->enabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\r\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 111
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->wire:Lch/boye/httpclientandroidlib/impl/conn/Wire;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/impl/conn/LoggingSessionOutputBuffer;->charset:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lch/boye/httpclientandroidlib/impl/conn/Wire;->output([B)V

    :cond_0
    return-void
.end method
