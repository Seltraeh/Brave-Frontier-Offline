.class public interface abstract Lch/boye/httpclientandroidlib/conn/scheme/SchemeLayeredSocketFactory;
.super Ljava/lang/Object;
.source "SchemeLayeredSocketFactory.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;


# virtual methods
.method public abstract createLayeredSocket(Ljava/net/Socket;Ljava/lang/String;ILch/boye/httpclientandroidlib/params/HttpParams;)Ljava/net/Socket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
