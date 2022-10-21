.class public Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;
.super Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;
.source "SingleClientConnManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;


# direct methods
.method protected constructor <init>(Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$PoolEntry;Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager$ConnAdapter;->this$0:Lch/boye/httpclientandroidlib/impl/conn/SingleClientConnManager;

    .line 424
    invoke-direct {p0, p1, p2}, Lch/boye/httpclientandroidlib/impl/conn/AbstractPooledConnAdapter;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;)V

    .line 425
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/impl/conn/AbstractClientConnAdapter;->markReusable()V

    .line 426
    iput-object p3, p2, Lch/boye/httpclientandroidlib/impl/conn/AbstractPoolEntry;->route:Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    return-void
.end method
