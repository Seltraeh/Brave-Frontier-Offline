.class Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor;
.super Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;
.source "SchemeLayeredSocketFactoryAdaptor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;


# direct methods
.method constructor <init>(Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactoryAdaptor;-><init>(Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;)V

    .line 47
    iput-object p1, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    return-void
.end method


# virtual methods
.method public createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 54
    iget-object p4, p0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactoryAdaptor;->factory:Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;

    const/4 v0, 0x1

    invoke-interface {p4, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object p1

    return-object p1
.end method
