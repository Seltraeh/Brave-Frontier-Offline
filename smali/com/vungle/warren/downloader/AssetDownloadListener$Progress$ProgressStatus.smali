.class public interface abstract annotation Lcom/vungle/warren/downloader/AssetDownloadListener$Progress$ProgressStatus;
.super Ljava/lang/Object;
.source "AssetDownloadListener.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/warren/downloader/AssetDownloadListener$Progress;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "ProgressStatus"
.end annotation


# static fields
.field public static final CANCELLED:I = 0x3

.field public static final DONE:I = 0x4

.field public static final IN_PROGRESS:I = 0x1

.field public static final LOST_CONNECTION:I = 0x5

.field public static final PAUSED:I = 0x2

.field public static final STARTED:I = 0x0

.field public static final STATE_CHANGED:I = 0x6
