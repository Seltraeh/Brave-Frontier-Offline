.class public interface abstract Lch/boye/httpclientandroidlib/conn/scheme/LayeredSocketFactory;
.super Ljava/lang/Object;
.source "LayeredSocketFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SocketFactory;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
