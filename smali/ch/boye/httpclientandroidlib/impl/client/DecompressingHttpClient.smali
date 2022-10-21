.class public Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;
.super Ljava/lang/Object;
.source "DecompressingHttpClient.java"

# interfaces
.implements Lch/boye/httpclientandroidlib/client/HttpClient;


# instance fields
.field private acceptEncodingInterceptor:Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

.field private backend:Lch/boye/httpclientandroidlib/client/HttpClient;

.field private contentEncodingInterceptor:Lch/boye/httpclientandroidlib/HttpResponseInterceptor;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;)V
    .locals 2

    .line 87
    new-instance v0, Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/client/protocol/RequestAcceptEncoding;-><init>()V

    new-instance v1, Lch/boye/httpclientandroidlib/client/protocol/ResponseContentEncoding;

    invoke-direct {v1}, Lch/boye/httpclientandroidlib/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;-><init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/HttpRequestInterceptor;Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V

    return-void
.end method

.method constructor <init>(Lch/boye/httpclientandroidlib/client/HttpClient;Lch/boye/httpclientandroidlib/HttpRequestInterceptor;Lch/boye/httpclientandroidlib/HttpResponseInterceptor;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    .line 94
    iput-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->acceptEncodingInterceptor:Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    .line 95
    iput-object p3, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->contentEncodingInterceptor:Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    return-void
.end method


# virtual methods
.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 123
    invoke-virtual {p0, p1, p2, v0}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    if-nez p3, :cond_0

    .line 129
    :try_start_0
    new-instance p3, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {p3}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    .line 131
    :cond_0
    instance-of v0, p2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_1

    .line 132
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;

    check-cast p2, Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/EntityEnclosingRequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpEntityEnclosingRequest;)V

    goto :goto_0

    .line 134
    :cond_1
    new-instance v0, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;

    invoke-direct {v0, p2}, Lch/boye/httpclientandroidlib/impl/client/RequestWrapper;-><init>(Lch/boye/httpclientandroidlib/HttpRequest;)V

    .line 136
    :goto_0
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->acceptEncodingInterceptor:Lch/boye/httpclientandroidlib/HttpRequestInterceptor;

    invoke-interface {p2, v0, p3}, Lch/boye/httpclientandroidlib/HttpRequestInterceptor;->process(Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 137
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {p2, p1, v0, p3}, Lch/boye/httpclientandroidlib/client/HttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_0 .. :try_end_0} :catch_3

    .line 139
    :try_start_1
    iget-object p2, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->contentEncodingInterceptor:Lch/boye/httpclientandroidlib/HttpResponseInterceptor;

    invoke-interface {p2, p1, p3}, Lch/boye/httpclientandroidlib/HttpResponseInterceptor;->process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V

    .line 140
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "http.client.response.uncompressed"

    invoke-interface {p3, v0}, Lch/boye/httpclientandroidlib/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "Content-Length"

    .line 141
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    const-string p2, "Content-Encoding"

    .line 142
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V

    const-string p2, "Content-MD5"

    .line 143
    invoke-interface {p1, p2}, Lch/boye/httpclientandroidlib/HttpMessage;->removeHeaders(Ljava/lang/String;)V
    :try_end_1
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p2

    .line 153
    :try_start_2
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 154
    throw p2

    :catch_1
    move-exception p2

    .line 150
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 151
    throw p2

    :catch_2
    move-exception p2

    .line 147
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 148
    throw p2
    :try_end_2
    .catch Lch/boye/httpclientandroidlib/HttpException; {:try_start_2 .. :try_end_2} :catch_3

    :catch_3
    move-exception p1

    .line 157
    new-instance p2, Lch/boye/httpclientandroidlib/client/ClientProtocolException;

    invoke-direct {p2, p1}, Lch/boye/httpclientandroidlib/client/ClientProtocolException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 108
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->getHttpHost(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 118
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->getHttpHost(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/HttpHost;",
            "Lch/boye/httpclientandroidlib/HttpRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1, p2, p4}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object p1

    .line 184
    :try_start_0
    invoke-interface {p3, p1}, Lch/boye/httpclientandroidlib/client/ResponseHandler;->handleResponse(Lch/boye/httpclientandroidlib/HttpResponse;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 187
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    :cond_0
    return-object p2

    :catchall_0
    move-exception p2

    .line 186
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 187
    invoke-static {p1}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 188
    :cond_1
    throw p2
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 164
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->getHttpHost(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;",
            "Lch/boye/httpclientandroidlib/client/ResponseHandler<",
            "+TT;>;",
            "Lch/boye/httpclientandroidlib/protocol/HttpContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lch/boye/httpclientandroidlib/client/ClientProtocolException;
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->getHttpHost(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->execute(Lch/boye/httpclientandroidlib/HttpHost;Lch/boye/httpclientandroidlib/HttpRequest;Lch/boye/httpclientandroidlib/client/ResponseHandler;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;
    .locals 1

    .line 103
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getConnectionManager()Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method getHttpHost(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;)Lch/boye/httpclientandroidlib/HttpHost;
    .locals 0

    .line 112
    invoke-interface {p1}, Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;->getURI()Ljava/net/URI;

    move-result-object p1

    .line 113
    invoke-static {p1}, Lch/boye/httpclientandroidlib/client/utils/URIUtils;->extractHost(Ljava/net/URI;)Lch/boye/httpclientandroidlib/HttpHost;

    move-result-object p1

    return-object p1
.end method

.method public getParams()Lch/boye/httpclientandroidlib/params/HttpParams;
    .locals 1

    .line 99
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/client/DecompressingHttpClient;->backend:Lch/boye/httpclientandroidlib/client/HttpClient;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/client/HttpClient;->getParams()Lch/boye/httpclientandroidlib/params/HttpParams;

    move-result-object v0

    return-object v0
.end method
