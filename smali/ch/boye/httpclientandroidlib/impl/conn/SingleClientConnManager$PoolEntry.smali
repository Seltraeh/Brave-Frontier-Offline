.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PoolEntry"
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;)V
    .locals 1

    .line 388
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    .line 389
    iget-object p1, p1, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;->connOperator:Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionOperator;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V

    return-void
.end method


# virtual methods
.method protected close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 396
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 397
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V

    :cond_0
    return-void
.end method

.method protected shutdown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 405
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->shutdownEntry()V

    .line 406
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->connection:Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->shutdown()V

    :cond_0
    return-void
.end method
