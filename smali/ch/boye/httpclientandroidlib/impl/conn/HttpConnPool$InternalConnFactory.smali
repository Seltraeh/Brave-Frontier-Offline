.class Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool$InternalConnFactory;
.super Ljava/lang/Object;
.source "HttpConnPool.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/pool/ConnFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InternalConnFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lch/boye/httpclientandroidlib/pool/ConnFactory<",
        "Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;",
        "Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    new-instance p1, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;

    invoke-direct {p1}, Lch/boye/httpclientandroidlib/impl/conn/DefaultClientConnection;-><init>()V

    return-object p1
.end method

.method public bridge synthetic create(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    check-cast p1, Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;

    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/conn/HttpConnPool$InternalConnFactory;->create(Lch/boye/httpclientandroidlib/conn/routing/HttpRoute;)Lch/boye/httpclientandroidlib/conn/OperatedClientConnection;

    move-result-object p1

    return-object p1
.end method
