.class public interface abstract annotation Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError$ErrorReason;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener$DownloadError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ErrorReason"
.end annotation


# static fields
.field public static final CONNECTION_ERROR:I = 0x0

.field public static final DISK_ERROR:I = 0x2

.field public static final FILE_NOT_FOUND_ERROR:I = 0x3

.field public static final INTERNAL_ERROR:I = 0x4

.field public static final REQUEST_ERROR:I = 0x1
