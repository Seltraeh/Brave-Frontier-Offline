.class public final Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
.super Ljava/lang/Object;
.source "BasicHttpProcessor.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/protocol/HttpProcessor;
.implements Lch/boye/httpclientandroidlib/protocol/HttpRequestInterceptorList;
.implements Lch/boye/httpclientandroidlib/protocol/HttpResponseInterceptorList;
.implements Ljava/lang/Cloneable;


# annotations
.annotation build Lch/boye/httpclientandroidlib/annotation/NotThreadSafe;
.end annotation


# instance fields
.field protected final requestInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field protected final responseInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/boye/httpclientandroidlib/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .locals 0

    .line 102
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    return-void
.end method

.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .locals 0

    .line 106
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V

    return-void
.end method

.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 0

    .line 131
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    return-void
.end method

.method public final addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V

    return-void
.end method

.method public addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 62
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addRequestInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addResponseInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public clearInterceptors()V
    .locals 0

    .line 190
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearRequestInterceptors()V

    .line 191
    invoke-virtual {p0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->clearResponseInterceptors()V

    return-void
.end method

.method public clearRequestInterceptors()V
    .locals 1

    .line 120
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clearResponseInterceptors()V
    .locals 1

    .line 149
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 242
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    .line 243
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->copyInterceptors(Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;)V

    return-object v0
.end method

.method public copy()Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;
    .locals 1

    .line 235
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;-><init>()V

    .line 236
    invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->copyInterceptors(Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;)V

    return-object v0
.end method

.method protected copyInterceptors(Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;)V
    .locals 2

    .line 223
    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 224
    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 225
    iget-object v0, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 226
    iget-object p1, p1, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public getRequestInterceptor(I)Lch/boye/httpclientandroidlib/HttpRequestInterceptor;
    .locals 1

    if-ltz p1, :cond_1

    .line 114
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getRequestInterceptorCount()I
    .locals 1

    .line 110
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResponseInterceptor(I)Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
    .locals 1

    if-ltz p1, :cond_1

    .line 143
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getResponseInterceptorCount()I
    .locals 1

    .line 139
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 198
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 199
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    .line 201
    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/HttpException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 209
    :goto_0
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 210
    iget-object v1, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    .line 212
    invoke-interface {v1, p1, p2}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRequestInterceptorByClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lch/boye/httpclientandroidlib/HttpRequestInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 83
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 85
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeResponseInterceptorByClass(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lch/boye/httpclientandroidlib/HttpResponseInterceptor;",
            ">;)V"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 93
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setInterceptors(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 173
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->requestInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->responseInterceptors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 175
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 176
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 177
    instance-of v2, v1, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    if-eqz v2, :cond_0

    .line 178
    move-object v2, v1

    check-cast v2, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    invoke-virtual {p0, v2}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpRequestInterceptor;)V

    .line 180
    :cond_0
    instance-of v2, v1, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    if-eqz v2, :cond_1

    .line 181
    check-cast v1, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    invoke-virtual {p0, v1}, Lch/boye/httpclientandroidlib/protocol/BasicHttpProcessor;->addInterceptor(Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 171
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "List must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
