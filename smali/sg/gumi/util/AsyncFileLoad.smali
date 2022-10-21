.class public Lsg/gumi/util/AsyncFileLoad;
.super Ljava/lang/Thread;
.source "AsyncFileLoad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;
    }
.end annotation


# static fields
.field static connMgr:Lsg/gumi/util/HttpConnectionMgr;


# instance fields
.field client:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

.field contentLength:I

.field data:[B

.field downloadedLen:I

.field downloadurl:Ljava/lang/String;

.field error:Ljava/lang/String;

.field httpcontext:Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

.field obj:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lsg/gumi/util/HttpConnectionMgr;

    invoke-direct {v0}, Lsg/gumi/util/HttpConnectionMgr;-><init>()V

    sput-object v0, Lsg/gumi/util/AsyncFileLoad;->connMgr:Lsg/gumi/util/HttpConnectionMgr;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    .line 122
    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    .line 124
    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->client:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    .line 125
    new-instance v0, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-direct {v0}, Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;-><init>()V

    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->httpcontext:Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    .line 129
    iput-wide p2, p0, Lsg/gumi/util/AsyncFileLoad;->obj:J

    .line 130
    iput-object p1, p0, Lsg/gumi/util/AsyncFileLoad;->downloadurl:Ljava/lang/String;

    return-void
.end method

.method static startDownload(JLjava/lang/String;)V
    .locals 2

    .line 232
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    new-instance v1, Lsg/gumi/util/AsyncFileLoad$1;

    invoke-direct {v1, p2, p0, p1}, Lsg/gumi/util/AsyncFileLoad$1;-><init>(Ljava/lang/String;J)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 138
    :try_start_0
    new-instance v2, Lch/boye/httpclientandroidlib/client/methods/HttpGet;

    iget-object v3, p0, Lsg/gumi/util/AsyncFileLoad;->downloadurl:Ljava/lang/String;

    invoke-direct {v2, v3}, Lch/boye/httpclientandroidlib/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 139
    sget-object v3, Lsg/gumi/util/AsyncFileLoad;->connMgr:Lsg/gumi/util/HttpConnectionMgr;

    invoke-virtual {v3}, Lsg/gumi/util/HttpConnectionMgr;->getConnection()Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    move-result-object v3

    iput-object v3, p0, Lsg/gumi/util/AsyncFileLoad;->client:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    .line 140
    sget-object v4, Lsg/gumi/util/AsyncFileLoad;->connMgr:Lsg/gumi/util/HttpConnectionMgr;

    invoke-virtual {v4, v3}, Lsg/gumi/util/HttpConnectionMgr;->downloadStarted(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;)V

    .line 141
    iget-object v3, p0, Lsg/gumi/util/AsyncFileLoad;->client:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    iget-object v4, p0, Lsg/gumi/util/AsyncFileLoad;->httpcontext:Lch/boye/httpclientandroidlib/protocol/BasicHttpContext;

    invoke-virtual {v3, v2, v4}, Lch/boye/httpclientandroidlib/impl/client/AbstractHttpClient;->execute(Lch/boye/httpclientandroidlib/client/methods/HttpUriRequest;Lch/boye/httpclientandroidlib/protocol/HttpContext;)Lch/boye/httpclientandroidlib/HttpResponse;

    move-result-object v2

    .line 149
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getStatusLine()Lch/boye/httpclientandroidlib/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lch/boye/httpclientandroidlib/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_1

    .line 157
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    .line 158
    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->toByteArray(Lch/boye/httpclientandroidlib/HttpEntity;)[B

    move-result-object v3

    iput-object v3, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    .line 159
    array-length v3, v3

    iput v3, p0, Lsg/gumi/util/AsyncFileLoad;->downloadedLen:I

    .line 160
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v3, v2

    iput v3, p0, Lsg/gumi/util/AsyncFileLoad;->contentLength:I

    .line 162
    iget v2, p0, Lsg/gumi/util/AsyncFileLoad;->downloadedLen:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v3, :cond_0

    .line 190
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v2, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;

    iget-wide v3, p0, Lsg/gumi/util/AsyncFileLoad;->obj:J

    iget-object v5, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    iget-object v6, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;-><init>(J[BLjava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid file. Expected len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lsg/gumi/util/AsyncFileLoad;->contentLength:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  received:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lsg/gumi/util/AsyncFileLoad;->downloadedLen:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 153
    :cond_1
    invoke-interface {v2}, Lch/boye/httpclientandroidlib/HttpResponse;->getEntity()Lch/boye/httpclientandroidlib/HttpEntity;

    move-result-object v2

    invoke-static {v2}, Lch/boye/httpclientandroidlib/util/EntityUtils;->consume(Lch/boye/httpclientandroidlib/HttpEntity;)V

    .line 154
    new-instance v2, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid server response. Code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    :catchall_0
    :try_start_2
    iput-object v1, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    .line 184
    iput v0, p0, Lsg/gumi/util/AsyncFileLoad;->downloadedLen:I

    .line 185
    iput v0, p0, Lsg/gumi/util/AsyncFileLoad;->contentLength:I

    const-string v0, "Failed to allocate memory."

    .line 186
    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 190
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v2, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;

    iget-wide v3, p0, Lsg/gumi/util/AsyncFileLoad;->obj:J

    iget-object v5, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    iget-object v6, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;-><init>(J[BLjava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 191
    iput-object v1, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    .line 192
    sget-object v0, Lsg/gumi/util/AsyncFileLoad;->connMgr:Lsg/gumi/util/HttpConnectionMgr;

    iget-object v1, p0, Lsg/gumi/util/AsyncFileLoad;->client:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v0, v1}, Lsg/gumi/util/HttpConnectionMgr;->downloadFinished(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;)V

    goto :goto_1

    :catch_0
    move-exception v2

    .line 169
    :try_start_3
    iput-object v1, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    .line 170
    iput v0, p0, Lsg/gumi/util/AsyncFileLoad;->downloadedLen:I

    .line 171
    iput v0, p0, Lsg/gumi/util/AsyncFileLoad;->contentLength:I

    .line 172
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    .line 176
    :cond_2
    iget-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "unknown exception"

    .line 177
    iput-object v0, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    .line 179
    :cond_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 190
    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v0

    invoke-virtual {v0}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v0

    new-instance v2, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;

    iget-wide v3, p0, Lsg/gumi/util/AsyncFileLoad;->obj:J

    iget-object v5, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    iget-object v6, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v6}, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;-><init>(J[BLjava/lang/String;)V

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    invoke-static {}, Lsg/gumi/bravefrontier/BraveFrontier;->getActivity()Lsg/gumi/bravefrontier/BraveFrontier;

    move-result-object v2

    invoke-virtual {v2}, Lorg/cocos2dx/lib/Cocos2dxActivity;->getGLView()Lorg/cocos2dx/lib/Cocos2dxGLSurfaceView;

    move-result-object v2

    new-instance v3, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;

    iget-wide v4, p0, Lsg/gumi/util/AsyncFileLoad;->obj:J

    iget-object v6, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    iget-object v7, p0, Lsg/gumi/util/AsyncFileLoad;->error:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lsg/gumi/util/AsyncFileLoad$DownloadCallbackEvent;-><init>(J[BLjava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/opengl/GLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    .line 191
    iput-object v1, p0, Lsg/gumi/util/AsyncFileLoad;->data:[B

    .line 192
    sget-object v1, Lsg/gumi/util/AsyncFileLoad;->connMgr:Lsg/gumi/util/HttpConnectionMgr;

    iget-object v2, p0, Lsg/gumi/util/AsyncFileLoad;->client:Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;

    invoke-virtual {v1, v2}, Lsg/gumi/util/HttpConnectionMgr;->downloadFinished(Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;)V

    .line 193
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
