.class public interface abstract Lch/boye/httpclientandroidlib/io/HttpMessageWriter;
.super Ljava/lang/Object;
.source "HttpMessageWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lch/boye/httpclientandroidlib/HttpMessage;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract write(Lch/boye/httpclientandroidlib/HttpMessage;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation
.end method
