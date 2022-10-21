.class public interface abstract Lcom/vungle/warren/downloader/Downloader;
.super Ljava/lang/Object;
.source "Downloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/Downloader$RequestException;,
        Lcom/vungle/warren/downloader/Downloader$NetworkType;
    }
.end annotation


# virtual methods
.method public abstract cancel(Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract cancelAll()V
.end method

.method public abstract cancelAndAwait(Lcom/vungle/warren/downloader/DownloadRequest;J)Z
.end method

.method public abstract clearCache()V
.end method

.method public abstract download(Lcom/vungle/warren/downloader/DownloadRequest;Lcom/vungle/warren/downloader/AssetDownloadListener;)V
.end method

.method public abstract dropCache(Ljava/lang/String;)Z
.end method

.method public abstract getAllRequests()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/vungle/warren/downloader/DownloadRequest;",
            ">;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract isCacheEnabled()Z
.end method

.method public abstract setCacheEnabled(Z)V
.end method

.method public abstract setProgressStep(I)V
.end method

.method public abstract updatePriority(Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method
