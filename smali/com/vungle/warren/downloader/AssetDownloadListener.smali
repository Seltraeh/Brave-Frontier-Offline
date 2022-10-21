.class public interface abstract Lcom/vungle/warren/downloader/AssetDownloadListener;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;,
        Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
    }
.end annotation


# virtual methods
.method public abstract onError(Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract onProgress(Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method

.method public abstract onSuccess(Ljava/io/File;Lcom/vungle/warren/downloader/DownloadRequest;)V
.end method
