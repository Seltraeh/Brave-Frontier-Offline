.class public Lch/boye/httpclientandroidlib/impl/pool/BasicPoolEntry;
.super Lch/boye/httpclientandroidlib/pool/PoolEntry;
.source "BasicPoolEntry.java"


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/boye/httpclientandroidlib/pool/PoolEntry<",
        "Lch/boye/httpclientandroidlib/HttpHost;",
        "Lch/boye/httpclientandroidlib/HttpClientConnection;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpClientConnection;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lch/boye/httpclientandroidlib/pool/PoolEntry;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 54
    :try_start_0
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public isClosed()Z
    .locals 1

    .line 61
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/pool/PoolEntry;->getConnection()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/HttpClientConnection;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/HttpConnection;->isOpen()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
