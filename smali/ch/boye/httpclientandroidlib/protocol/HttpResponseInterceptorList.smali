.class public interface abstract Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;
.super Ljava/lang/Object;
.source "HttpResponseInterceptorList.java"


# virtual methods
.method public abstract addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
.end method

.method public abstract addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
.end method

.method public abstract clearResponseInterceptors()V
.end method

.method public abstract getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
.end method

.method public abstract getResponseInterceptorCount()I
.end method

.method public abstract removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lch/boye/httpclientandroidlib/HttpResponseInterceptor;",
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
