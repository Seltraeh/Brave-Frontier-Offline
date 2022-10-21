.class public Lch/boye/httpclientandroidlib/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/tsccm/ThreadSafeClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 54
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markReusable()V

    return-void
.end method


# virtual methods
.method protected detach()V
    .locals 0

    .line 72
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->detach()V

    return-void
.end method

.method protected getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .line 60
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->getManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;
    .locals 1

    .line 66
    invoke-super {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;->getPoolEntry()Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;

    move-result-object v0

    return-object v0
.end method
