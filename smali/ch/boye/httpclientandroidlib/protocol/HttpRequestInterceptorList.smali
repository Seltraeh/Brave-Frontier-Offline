.class public interface abstract Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;
.super Ljava/lang/Object;
.source "HttpRequestInterceptorList.java"


# virtual methods
.method public abstract addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
.end method

.method public abstract addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
.end method

.method public abstract clearRequestInterceptors()V
.end method

.method public abstract getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
.end method

.method public abstract getRequestInterceptorCount()I
.end method

.method public abstract removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lch/boye/httpclientandroidlib/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setInterceptors(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation
.end method
