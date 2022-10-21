.class public interface abstract Lcom/vungle/warren/downloader/DownloaderCache;
.super Ljava/lang/Object;
.source "DownloaderCache.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract deleteAndRemove(Ljava/io/File;)Z
.end method

.method public abstract deleteContents(Ljava/io/File;)Z
.end method

.method public abstract getCacheUpdateTimestamp(Ljava/io/File;)J
.end method

.method public abstract getFile(Ljava/lang/String;)Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getMetaFile(Ljava/io/File;)Ljava/io/File;
.end method

.method public abstract init()V
.end method

.method public abstract onCacheHit(Ljava/io/File;J)V
.end method

.method public abstract purge()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setCacheLastUpdateTimestamp(Ljava/io/File;J)V
.end method

.method public abstract startTracking(Ljava/io/File;)V
.end method

.method public abstract stopTracking(Ljava/io/File;)V
.end method
